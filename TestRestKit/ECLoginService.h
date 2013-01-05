//
//  ECLoginService.h
//  TestRestKit
//
//  Created by AAA on 1/4/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>
#import "ECServiceBase.h"

@interface ECLoginService : ECServiceBase <RKRequestDelegate>

-(void) authenticate;

@end
