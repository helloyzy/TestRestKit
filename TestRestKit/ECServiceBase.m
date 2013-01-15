//
//  ECServiceBase.m
//  ipad
//
//  Created by AAA on 1/7/13.
//  Copyright (c) 2013 Electrolux. All rights reserved.
//

#import "ECServiceBase.h"
#import "ECLoginService.h"

static RKClient * sharedClient = nil;

@implementation ECServiceBase

- (id) init {
    self = [super init];
    if (self) {
        self.isHandleUserTokenInvalid = NO;
        self.userTokenIvalidHandled = NO;
    }
    return self;
}

+ (RKClient *) createRKClient {
    RKClient * result = [RKClient clientWithBaseURLString:ECServiceBaseUrl];
    result.requestQueue.showsNetworkActivityIndicatorWhenBusy = YES;
    return result;
}

+(void) setupService {
    sharedClient = [self createRKClient];
}

+(RKClient *) sharedClient {
    if (!sharedClient) {
        sharedClient = [self createRKClient];
    }
    return sharedClient;
}

+(BOOL) isServiceAvailable {
    return ([[sharedClient reachabilityObserver] isReachabilityDetermined] && [sharedClient isNetworkReachable]);
}

#pragma mark - RKRequest delegate related

//TODO mock code, need future work

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response {
    if ([response isUnauthorized] && self.isHandleUserTokenInvalid && !self.userTokenIvalidHandled) {
        self.userTokenIvalidHandled = YES;
        self.isContinueProcessing = NO;
        [ECLoginService accquireUserToken:self selector:@selector(_retryServiceOnUserTokenAccquired)];
        return;
    }
    self.isContinueProcessing = YES;
    if (self.onDidLoadResponse) {
        self.onDidLoadResponse(response);
    }
    /**
    if ([request isGET]) {
        // Handling GET /foo.xml
        if ([response isOK]) {
            // Success! Let's take a look at the data
            NSLog(@"Retrieved XML: %@", [response bodyAsString]);
        }
    } else if ([request isPOST]) {
        // Handling POST /other.json
        if ([response isJSON]) {
            NSLog(@"Got a JSON response back from our POST!");
        }
    } else if ([request isDELETE]) {
        // Handling DELETE /missing_resource.txt
        if ([response isNotFound]) {
            NSLog(@"The resource path '%@' was not found.", [request resourcePath]);
        }
    }
     */
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    // TODO
    if (self.onDidFailLoadWithError) {
        self.onDidFailLoadWithError(error);
    }
}

#pragma mark - methods that child can override

- (void) retryServiceOnUserTokenAccquired {}

- (void) cancel {
    [[ECServiceBase sharedClient].requestQueue cancelRequestsWithDelegate:self];
}

#pragma mark - instance methods

- (void) _retryServiceOnUserTokenAccquired {
    [ECLoginService unregForUserTokenAccquired:self];
    [self retryServiceOnUserTokenAccquired];
}

@end
