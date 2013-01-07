//
//  ECServiceBase.m
//  ipad
//
//  Created by AAA on 1/7/13.
//  Copyright (c) 2013 Electrolux. All rights reserved.
//

#import "ECServiceBase.h"

static RKClient * sharedClient = nil;

@implementation ECServiceBase

+(RKClient *) sharedClient {
    if (!sharedClient) {
        sharedClient = [RKClient clientWithBaseURLString:ECServiceBaseUrl];
    }
    return sharedClient;
}

+(BOOL) isServiceAvailable {
    return ([[[RKClient sharedClient] reachabilityObserver] isReachabilityDetermined] && [[RKClient sharedClient] isNetworkReachable]);
}

#pragma mark - RKRequest delegate related

//TODO mock code, need future work

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response {
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

@end
