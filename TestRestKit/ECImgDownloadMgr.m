//
//  ECImgDownloadMgr.m
//  TestRestKit
//
//  Created by AAA on 1/5/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECImgDownloadMgr.h"
#import "IBFunctions.h"

static ECImgDownloadMgr * sharedMgr = nil;

@interface ECImgDownloadMgr()

@property (strong, nonatomic) RKRequestQueue * imgRequestQueue;

@end

@implementation ECImgDownloadMgr

#pragma mark - instance methods

- (void) initRequestQueue {
    self.imgRequestQueue = [RKRequestQueue requestQueueWithName:@"ECImageDownloadQueue"];
    self.imgRequestQueue.delegate = self;
    self.imgRequestQueue.concurrentRequestsLimit = 5;
    self.imgRequestQueue.showsNetworkActivityIndicatorWhenBusy = YES;
}

- (id) init {
    self = [super init];
    if (self) {
        [self initRequestQueue];
    }
    return self;
}

- (void) addImgRequest:(NSString *) imgURL {
    RKRequest * imgRequest = [ECImgDownloadMgr createRequest:imgURL];
    [self.imgRequestQueue addRequest:imgRequest];
}

- (void) startDownloadImages {
    [self.imgRequestQueue start];
}

#pragma mark - class methods

+ (ECImgDownloadMgr *) sharedImgDownloadMgr {
    if (!sharedMgr) {
        sharedMgr = [[ECImgDownloadMgr alloc] init];
    }
    return sharedMgr;
}

+ (void) addImgRequest:(NSString *) imgURL {
    [[self sharedImgDownloadMgr] addImgRequest:imgURL];
}

+ (void) startDownloadImages {
    [[self sharedImgDownloadMgr] startDownloadImages];
}

#pragma mark - test

+ (RKRequest *) createRequest:(NSString *) resURL {
    // http://static.adzerk.net/Advertisers/fdec4733b4814d9e958b7f86c25020b5.jpg
    NSURL * url = [NSURL URLWithString:resURL];
    RKRequest * request = [RKRequest requestWithURL:url];
        
    request.onDidLoadResponse = ^(RKResponse* response) {
        // UIImage * image = [UIImage imageWithData: response.body];
        // do something interesting with the image
        NSString * pathToSave = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/Test.jpg"];
        [response.body writeToFile:pathToSave atomically:YES];
    };
    
    request.onDidFailLoadWithError = ^(NSError* error) {
        // handle failure to load image
        NSLog(@"Error...");
    };
    
    return request;
    
}

+ (void) test {
    [self addImgRequest:@"http://static.adzerk.net/Advertisers/fdec4733b4814d9e958b7f86c25020b5.jpg"];
    [self startDownloadImages];
}

@end
