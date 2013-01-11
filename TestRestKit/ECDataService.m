//
//  ECDataService.m
//  TestRestKit
//
//  Created by AAA on 1/8/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECDataService.h"
#import "ECLoginService.h"

// typedef void(^ECSvcDidLoadDataChunkCountBlock)(int numOfChunks);

@interface ECDataChunkCountService : ECServiceBase

- (void) getDataChunkCount;

// @property(nonatomic, strong) ECSvcDidLoadDataChunkCountBlock onLoadDataChunkCount;
@property(nonatomic, assign) NSInteger dataChunkCount;

@end

@implementation ECDataChunkCountService

- (void) getDataChunkCount {
    NSString * serviceUrl = [NSString stringWithFormat:@"/GetDataChunksCount/?authToken=%@", [ECLoginService userToken]];
    serviceUrl = [serviceUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [[ECServiceBase sharedClient] get:serviceUrl delegate:self];
}

- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {
    NSLog(@"GetDataChunkCount service: receive response with status code is %d", response.statusCode);
    if (response.isOK) {
        NSString * result = response.bodyAsString;
        self.dataChunkCount = [result integerValue];
    }
    [super request:request didLoadResponse:response];
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    [super request:request didFailLoadWithError:error];
    NSLog(@"Error in GetDataChunkCount service: %@", [error description]);
}

@end

static ECDataChunkCountService * sharedDataChunkCountService = nil;

@interface ECDataService()

@property (nonatomic, strong) RKClient * client;
@property (nonatomic, strong) NSString * requestUrl;
@property (nonatomic, assign) NSInteger dataChunkCount;
@property (nonatomic, assign) NSInteger curChunkNr;

@end

@implementation ECDataService

- (void) downloadChunk {
    [self.client get:self.requestUrl delegate:self];
}

- (void) getNextChunk {
    self.curChunkNr = self.curChunkNr + 1;
    self.requestUrl = [NSString stringWithFormat:@"/GetUserDataChunk/?authToken=%@&chunkNumber=%d", [ECLoginService userToken], self.curChunkNr];
    // NSDictionary* params = @{@"authToken" : [ECLoginService userToken]};
    // [self.client get:@"/GetUserData/" queryParameters:params delegate:self];
    [self downloadChunk];
}

- (void) getDataChunkCount {
    sharedDataChunkCountService = [[ECDataChunkCountService alloc] init];
    sharedDataChunkCountService.onDidLoadResponse = ^(RKResponse * response) {
        self.dataChunkCount = sharedDataChunkCountService.dataChunkCount;
        self.curChunkNr = 0;
        [self getNextChunk];
    };
}

#pragma mark RKRequest delegate

- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {
    NSLog(@"GetDataService: receive response on chunk %d (total %d), status code is %d", self.curChunkNr, self.dataChunkCount, response.statusCode);

    if ([response isOK]) {
        // TODO chunk X finished, total X, callback
        NSString * fileName = [NSString stringWithFormat:@"Documents/data%d.json", self.curChunkNr]; // @"Documents/all3.json";
        NSString * pathToSave = [NSHomeDirectory() stringByAppendingPathComponent:fileName];
        [response.body writeToFile:pathToSave atomically:YES];
    }
    
    // TODO, add invalid token check
    
    // TODO, add remaining chunks of data when they are ready
    if (self.curChunkNr < self.dataChunkCount - 1) {
        [self getNextChunk];
    } else {
        
        // TODO add success callback
        // [super request:request didLoadResponse:response];
    }
    
   
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    NSLog(@"Error in GetDataService: %@", [error description]);
    [super request:request didFailLoadWithError:error];
}

/**
- (void)request:(RKRequest *)request didReceiveResponse:(RKResponse *)response {
    NSLog(@"Starting to receive response, status code is %d", response.statusCode);
}
 */

- (void)request:(RKRequest *)request didReceiveData:(NSInteger)bytesReceived totalBytesReceived:(NSInteger)totalBytesReceived totalBytesExpectedToReceive:(NSInteger)totalBytesExpectedToReceive {
    // NSLog(@"bytesReceived is %d, totalBytesReceived is %d, totalBytesExpectedToReceive is %d", bytesReceived, totalBytesReceived, totalBytesExpectedToReceive);
    
    // TODO add progress callback
}

#pragma mark - public methods

- (void) getData {
    self.client = [RKClient clientWithBaseURLString:ECServiceBaseUrl];
    [self.client setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
    
    [self getDataChunkCount];
}

- (void) retry {
    [self downloadChunk];
}

#pragma mark - test methods

static ECDataService * sharedDataServiceInstance = nil;


+ (void) test {    
    sharedDataServiceInstance = [[ECDataService alloc] init];
    [sharedDataServiceInstance getData];
}

@end
