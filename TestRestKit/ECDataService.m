//
//  ECDataService.m
//  TestRestKit
//
//  Created by AAA on 1/8/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECDataService.h"
#import "ECLoginService.h"

static ECDataService * sharedInstance = nil;

@interface ECDataService()

@property (nonatomic, strong) RKClient * client;

@end

@implementation ECDataService

- (void) getData {
    self.client = [RKClient clientWithBaseURLString:ECServiceBaseUrl];
    [self.client setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
    self.client.timeoutInterval = 3600.0;
    
    NSString * servicePath = [NSString stringWithFormat:@"/GetUserData/?authToken=%@", [ECLoginService userToken]];
    NSLog(@"%@", servicePath);
    [self.client get:servicePath delegate:self];
    
    // NSDictionary* params = @{@"authToken" : [ECLoginService userToken]};
    // [self.client get:@"/GetUserData/" queryParameters:params delegate:self];
}

- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {
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
    sharedInstance = [[ECDataService alloc] init];
    sharedInstance.onDidLoadResponse = ^(RKResponse * response) {
        NSLog(@"%@", response.bodyAsString);
    };
    [sharedInstance getData];
}

@end
