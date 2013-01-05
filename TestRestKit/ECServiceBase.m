//
//  ECServiceBase.m
//  TestRestKit
//
//  Created by AAA on 1/4/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECServiceBase.h"
#import <RestKit/RestKit.h>



@implementation ECServiceBase

+(RKClient *) sharedClient {
    RKClient * result = [RKClient sharedClient];
    if (!result) {
        result = [RKClient clientWithBaseURLString:@"http://ema-productadmin-ipad-00694sp03.northridgedev.com/IPadService.svc"];
    }
    return result;
}

@end
