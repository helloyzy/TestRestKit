//
//  ECLoginService.m
//  ipad
//
//  Created by AAA on 1/7/13.
//  Copyright (c) 2013 Electrolux. All rights reserved.
//

#import "ECLoginService.h"

static ECLoginService * sharedInstance = nil;

@interface ECLoginService()

@property(strong, nonatomic)NSString * userName;
@property(strong, nonatomic)NSString * password;
@property(strong, nonatomic)NSString * token;
@property(nonatomic, assign)BOOL isAuthenticating; // used to avoid mutiple requests to the server

@end

@implementation ECLoginService

#pragma mark - misc

+ (ECLoginService *) sharedInstance {
    if (!sharedInstance) {
        sharedInstance = [[ECLoginService alloc] init];
    }
    return sharedInstance;
}


#pragma mark - RKRequest delegate (override)

- (void) reset {
    self.onDidFailLoadWithError = nil;
    self.onDidLoadResponse = nil;
    self.isAuthenticating = NO;
}

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response {
    [super request:request didLoadResponse:response];
    if ([response isOK]) {
        self.token = response.bodyAsString;
    }
    [self sendUserTokenNotification];
    [self reset];
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    [super request:request didFailLoadWithError:error];
    [self sendUserTokenNotification];
    [self reset];
}


#pragma mark - authentication

- (void) authenticate {
    self.token = nil;
    self.isAuthenticating = YES;
    RKClient * client = [ECLoginService sharedClient];
    NSDictionary* params = @{@"userName" : self.userName, @"userPassword" : self.password};
    [client get:@"/Authenticate" queryParameters:params delegate:self];
}

- (void) authenticate:(NSString *)userName withPwd:(NSString *)password  {
    self.userName = userName;
    self.password = password;
    [self authenticate];
}

+ (NSString *) userToken {
    return sharedInstance.token; // could be nil
}

+ (void) regForUserTokenAccquired:(id)observer selector:(SEL)aSelector {
    if (sharedInstance) {
        [[NSNotificationCenter defaultCenter] addObserver:observer
                                                 selector:aSelector
                                                     name:ECSvcAccquireUserToken
                                                   object:sharedInstance];
    }
}

+ (void) unregForUserTokenAccquired:(id)observer {
    if (sharedInstance) {
        [[NSNotificationCenter defaultCenter] removeObserver:observer name:ECSvcAccquireUserToken object:sharedInstance];
    }
}

+ (void) accquireUserToken:(id)observer selector:(SEL)aSelector {
    [self regForUserTokenAccquired:observer selector:aSelector];
    if (!sharedInstance.isAuthenticating) {
        [sharedInstance authenticate];
    }
}

- (void) sendUserTokenNotification {
    [[NSNotificationCenter defaultCenter] postNotificationName:ECSvcAccquireUserToken
                                                        object:self];
}

/**
 - (void) registerUserTokenRequestNotifications {
 // register for login request notification in case the userToken is expired and needs to be renewed;
 
 [[NSNotificationCenter defaultCenter] addObserver:self
 selector:@selector(authenticate)
 name:ECSvcUserTokenRequest
 object:nil];
 }
 */

@end
