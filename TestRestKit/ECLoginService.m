//
//  ECLoginService.m
//  TestRestKit
//
//  Created by AAA on 1/4/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECLoginService.h"

@implementation ECLoginService

-(void) authenticate {
    RKClient * client = [ECLoginService sharedClient];
    NSDictionary* params = @{@"userName" : @"ProdIntVisit", @"userPassword" : @"ecU@pHoY"};
    //[[RKClient sharedClient] post:@"/other.json" params:params delegate:self];
    [client get:@"/Authenticate" queryParameters:params delegate:self];
}

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response {
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
}

@end
