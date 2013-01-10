//
//  ECDataService.m
//  TestRestKit
//
//  Created by AAA on 1/8/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECDataService.h"
#import "ECLoginService.h"

static ECDataService * sharedDataServiceInstance = nil;

typedef void(^ECSvcDidLoadDataChunkCountBlock)(int numOfChunks);

@interface ECDataChunkCountService : ECServiceBase

- (void) getDataChunkCount;

@property(nonatomic, strong) ECSvcDidLoadDataChunkCountBlock onLoadDataChunkCount;

@end

@implementation ECDataChunkCountService

- (void) getDataChunkCount {
    NSString * servicePath = [NSString stringWithFormat:@"/GetDataChunksCount/?authToken=%@", [ECLoginService userToken]];
    NSLog(@"%@", servicePath);
    [[ECServiceBase sharedClient] get:servicePath delegate:self];
}

- (void) service {
    [self getDataChunkCount];
}

- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {
    [super request:request didLoadResponse:response];
    NSLog(@"Receive response for data chunk service, status code is %d", response.statusCode);
    NSString * result = response.bodyAsString;
    if (self.onLoadDataChunkCount) {
        self.onLoadDataChunkCount([result intValue]);
    }
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    [super request:request didFailLoadWithError:error];
    NSLog(@"Data chunk service error, error description is %@", [error description]);
}

@end

static ECDataChunkCountService * sharedDataChunkCountService = nil;

@interface ECDataService()

@property (nonatomic, strong) RKClient * client;

@end

@implementation ECDataService

- (void) getData {
    self.client = [RKClient clientWithBaseURLString:ECServiceBaseUrl];
    [self.client setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
    // self.client.timeoutInterval = 3600.0;
    
    NSString * servicePath = [NSString stringWithFormat:@"/GetUserData/?authToken=%@&chunkNumber=1", [ECLoginService userToken]];
    NSLog(@"%@", servicePath);
    [self.client get:servicePath delegate:self];
    
    // NSDictionary* params = @{@"authToken" : [ECLoginService userToken]};
    // [self.client get:@"/GetUserData/" queryParameters:params delegate:self];
}

- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {
    [super request:request didLoadResponse:response];
    NSLog(@"Receive response for data service, status code is %d", response.statusCode);
    NSString * fileName = @"Documents/all.json";
    NSString * pathToSave = [NSHomeDirectory() stringByAppendingPathComponent:fileName];
    [response.body writeToFile:pathToSave atomically:YES];
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    NSLog(@"Data service error, error description is %@", [error description]);
}

- (void)request:(RKRequest *)request didReceiveResponse:(RKResponse *)response {
    NSLog(@"Starting to receive response, status code is %d", response.statusCode);
}

- (void)request:(RKRequest *)request didReceiveData:(NSInteger)bytesReceived totalBytesReceived:(NSInteger)totalBytesReceived totalBytesExpectedToReceive:(NSInteger)totalBytesExpectedToReceive {
    NSLog(@"bytesReceived is %d, totalBytesReceived is %d, totalBytesExpectedToReceive is %d", bytesReceived, totalBytesReceived, totalBytesExpectedToReceive);
}

+ (void) test {
    sharedDataChunkCountService = [[ECDataChunkCountService alloc] init];
    
    sharedDataChunkCountService.onLoadDataChunkCount = ^(int numOfDataChunck) {
        NSLog(@"Data chunk service, chunk size is %d", numOfDataChunck);
        sharedDataServiceInstance = [[ECDataService alloc] init];
        sharedDataServiceInstance.onDidLoadResponse = ^(RKResponse * response) {
            NSLog(@"Finished downloading.");
        };
        [sharedDataServiceInstance getData];
    };
    
    [sharedDataChunkCountService getDataChunkCount];
    
}

@end
