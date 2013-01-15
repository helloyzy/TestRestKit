//
//  ECDataService.m
//  TestRestKit
//
//  Created by AAA on 1/8/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECDataService.h"
#import "ECLoginService.h"
#import "ECMappingMgr.h"

@interface ECDataChunkCountService : ECServiceBase

- (void) getDataChunkCount;

@property(nonatomic, assign) NSInteger dataChunkCount;

@end

@implementation ECDataChunkCountService

- (id) init {
    self = [super init];
    if (self) {
        self.isHandleUserTokenInvalid = YES;
    }
    return self;
}

- (void) retryServiceOnUserTokenAccquired {
    [self getDataChunkCount];
}
 
- (void) getDataChunkCount {
    NSString * serviceUrl = [NSString stringWithFormat:@"/GetDataChunksCount/?authToken=%@", [ECLoginService userToken]];
    serviceUrl = [serviceUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [[ECServiceBase sharedClient] get:serviceUrl delegate:self];
}

- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {
    // NSLog(@"GetDataChunkCount service: receive response with status code is %d", response.statusCode);
    if (response.isOK) {
        NSString * result = response.bodyAsString;
        self.dataChunkCount = [result integerValue];
    }
    [super request:request didLoadResponse:response];
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    [super request:request didFailLoadWithError:error];
    // NSLog(@"Error in GetDataChunkCount service: %@", [error description]);
}

@end

static ECDataChunkCountService * sharedDataChunkCountService = nil;

@interface ECDataService()

@property (nonatomic, strong) RKClient * client;
@property (nonatomic, strong) RKObjectManager * objectManager;
@property (nonatomic, strong) NSString * requestUrl;
@property (nonatomic, assign) NSInteger dataChunkCount;
@property (nonatomic, assign) NSInteger curChunkNr;
@property (nonatomic, assign) BOOL isCancelled;
@property (nonatomic, assign) NSInteger objectsDidLoadedCount;

@end

@implementation ECDataService

- (id) init {
    self = [super init];
    if (self) {
        self.isHandleUserTokenInvalid = YES;
    }
    return self;
}

- (void) retryServiceOnUserTokenAccquired {
    [self retry];
}

- (void) downloadChunk {
    // [self.client get:self.requestUrl delegate:self];
    if (self.isCancelled) {
        return;
    }
    [self.objectManager loadObjectsAtResourcePath:self.requestUrl delegate:self];
}

- (void) getNextChunk {
    self.curChunkNr = self.curChunkNr + 1;
    self.requestUrl = [NSString stringWithFormat:@"/GetUserDataChunk/?authToken=%@&chunkNumber=%d", [ECLoginService userToken], self.curChunkNr];
    // NSDictionary* params = @{@"authToken" : [ECLoginService userToken]};
    // [self.client get:@"/GetUserData/" queryParameters:params delegate:self];
    [self downloadChunk];
}

- (void) prepareObjectManager {
    RKObjectManager * objectManager = [RKObjectManager managerWithBaseURLString:ECServiceBaseUrl];
    objectManager.client.requestQueue.showsNetworkActivityIndicatorWhenBusy = YES;
    [objectManager.client setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
    objectManager.objectStore = [RKManagedObjectStore objectStoreWithStoreFilename:@"CoreDataStore.sqlite" usingSeedDatabaseName:nil managedObjectModel:nil delegate:self];
    [ECMappingMgr setupMapping:objectManager];
    self.objectManager = objectManager;
}

- (void) getDataChunkCount {
    sharedDataChunkCountService = [[ECDataChunkCountService alloc] init];
    sharedDataChunkCountService.onDidLoadResponse = ^(RKResponse * response) {
        self.dataChunkCount = sharedDataChunkCountService.dataChunkCount;
        self.curChunkNr = 0;
        self.objectsDidLoadedCount = 0;
        if (self.onDataChunkCountDetermined) {
            self.onDataChunkCountDetermined(self.dataChunkCount);
        }
        [self prepareObjectManager];
        [self getNextChunk];
    };
    [sharedDataChunkCountService getDataChunkCount];
}

#pragma mark RKRequest delegate

- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {
    // NSLog(@"GetDataService: receive response on chunk %d (total %d), status code is %d", self.curChunkNr, self.dataChunkCount, response.statusCode);

    [super request:request didLoadResponse:response];
    if (!self.isContinueProcessing) {
        return;
    }
    
    if ([response isUnauthorized]) {
        // still unauthorized, might be user password changed, report error
        [self request:request didFailLoadWithError:[NSError errorWithDomain:ECDataServiceDomain code:ECDataServiceFailInvalidToken userInfo:nil]];
        return;
    } else if ([response isOK]) {
        if (self.onLoadChunk) {
            self.onLoadChunk(self.curChunkNr, self.dataChunkCount);
        }
        if (self.curChunkNr < self.dataChunkCount) {
            [self getNextChunk];
        }
        return;
    }   
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    // NSLog(@"Error in GetDataService: %@", [error description]);
    [super request:request didFailLoadWithError:error];
}

- (void)request:(RKRequest *)request didReceiveData:(NSInteger)bytesReceived totalBytesReceived:(NSInteger)totalBytesReceived totalBytesExpectedToReceive:(NSInteger)totalBytesExpectedToReceive {
    // NSLog(@"Data chunk service: bytesReceived is %d, totalBytesReceived is %d, totalBytesExpectedToReceive is %d", bytesReceived, totalBytesReceived, totalBytesExpectedToReceive);
    if (self.onProgressData) {
        self.onProgressData(totalBytesReceived, totalBytesExpectedToReceive);
    }
}

#pragma mark RKObjectLoader delegate

/**
- (void)objectLoader:(RKObjectLoader *)objectLoader didLoadObjects:(NSArray *)objects {
    // NSLog(@"Did load %d objects", [objects count]);
}

*/

- (void)objectLoader:(RKObjectLoader *)objectLoader didFailWithError:(NSError *)error {
    // NSLog(@"Hit error: %@", error);
}

- (void)objectLoaderDidFinishLoading:(RKObjectLoader *)objectLoader {
    self.objectsDidLoadedCount = self.objectsDidLoadedCount + 1;
    if (self.objectsDidLoadedCount == self.dataChunkCount) {
        if (self.onDataFinishLoading) {
            self.onDataFinishLoading(self.dataChunkCount);
        }
    }
}

#pragma mark - public methods

- (void) getData {
    // self.client = [RKClient clientWithBaseURLString:ECServiceBaseUrl];
    // [self.client setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
    self.isCancelled = NO;
    [self getDataChunkCount];
}

- (void) retry {
    if (self.isCancelled) {
        return;
    }
    if (self.dataChunkCount > 0) { 
        [self downloadChunk];
    } else {
        [self getDataChunkCount]; // not getting the dataChunkCount, fresh start
    }
}

- (void) cancel {
    self.isCancelled = YES;
    if (self.dataChunkCount > 0 && self.objectManager) {
        [self.objectManager.client.requestQueue cancelRequestsWithDelegate:self];
    } else if (sharedDataChunkCountService) {
        [sharedDataChunkCountService cancel];
    }
}

- (BOOL) isCancelledFlag {
    return self.isCancelled;
}

@end
