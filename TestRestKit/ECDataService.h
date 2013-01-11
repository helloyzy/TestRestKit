//
//  ECDataService.h
//  TestRestKit
//
//  Created by AAA on 1/8/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECServiceBase.h"
#import <RestKit/RestKit.h>

@interface ECDataService : ECServiceBase <RKObjectLoaderDelegate>

+ (void) test;

@end
