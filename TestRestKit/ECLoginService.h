//
//  ECLoginService.h
//  ipad
//
//  Created by AAA on 1/7/13.
//  Copyright (c) 2013 Electrolux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ECServiceBase.h"

static NSString * ECSvcAccquireUserToken = @"ECSvcAccquireUserToken";

@interface ECLoginService : ECServiceBase

+ (ECLoginService *) sharedInstance;

- (void) authenticate:(NSString *)userName withPwd:(NSString *)password;

/**
 * @name The token will be used in other services as an security mechanism.
 * @return the user token received from the server or nil if there is error
 */
+ (NSString *) userToken;

/**
 * @name Request user token and register the service for the token notification.
 * @param observer - the service which needs the token service
 * @param aSelector - the callback to invoke when the token is ready
 * Note: the notification will not guarantee the user token is valid, services which use it needs to check whehther it is vaild (nil or not).
 */
+ (void) accquireUserToken:(id)observer selector:(SEL)aSelector;

// + (void) regForUserTokenAccquired:(id)observer selector:(SEL)aSelector;
/**
 * @name Unregister the user token service
 */
+ (void) unregForUserTokenAccquired:(id)observer;


@end
