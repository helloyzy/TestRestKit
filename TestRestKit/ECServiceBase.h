//
//  ECServiceBase.h
//  ipad
//
//  Created by AAA on 1/7/13.
//  Copyright (c) 2013 Electrolux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

static NSString * ECServiceBaseUrl = @"http://ema-productadmin-ipad-00694sp03.northridgedev.com/IPadService.svc";

///-----------------------------------------------------------------------------
/// @name Block Declarations
///-----------------------------------------------------------------------------
typedef void(^ECSvcRequestDidLoadResponseBlock)(RKResponse *response);
typedef void(^ECRequestDidFailLoadWithErrorBlock)(NSError *error);

@interface ECServiceBase : NSObject <RKRequestDelegate>

+(RKClient *) sharedClient;

+(void) setupService;
+(BOOL) isServiceAvailable;

// for child classes to implement for user token callback if they pass the control to base
-(void) retryServiceOnUserTokenAccquired;

/**
 A block to invoke when the receiver has loaded a response.
 
 @see [RKRequestDelegate request:didLoadResponse:]
 */
@property (nonatomic, copy) ECSvcRequestDidLoadResponseBlock onDidLoadResponse;

/**
 A block to invoke when the receiver has failed loading due to an error.
 
 @see [RKRequestDelegate request:didFailLoadWithError:]
 */
@property (nonatomic, copy) ECRequestDidFailLoadWithErrorBlock onDidFailLoadWithError;

@property (nonatomic, assign) BOOL isHandleUserTokenInvalid;

@property (nonatomic, assign) BOOL userTokenIvalidHandled;

@property (nonatomic, assign) BOOL isContinueProcessing;

@end
