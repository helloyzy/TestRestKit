//
//  ECServiceBase.h
//  TestRestKit
//
//  Created by AAA on 1/4/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RKClient;

@interface ECServiceBase : NSObject

+(RKClient *) sharedClient;

@end
