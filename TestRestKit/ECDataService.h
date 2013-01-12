//
//  ECDataService.h
//  TestRestKit
//
//  Created by AAA on 1/8/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECServiceBase.h"
#import <RestKit/RestKit.h>

/**
 Error codes
 */
typedef enum ECDataServiceFailCode {
    ECDataServiceFailInvalidToken = -1,
    ECDataServiceFailNoConnection
} ECDataServiceFailCode;

static NSString * ECDataServiceDomain = @"ECDataServiceDomain";

@interface ECDataService : ECServiceBase <RKObjectLoaderDelegate>

+ (void) test;
- (void) cancel;
- (void) getData;

@end
