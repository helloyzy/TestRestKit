//
//  ECImgDownloadMgr.h
//  TestRestKit
//
//  Created by AAA on 1/5/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

static NSString * ECImgDownloadDomain = @"ECImgDownloadDomain";

/**
 Error codes
 */
typedef enum ECImageDownloadFailCode {
    ECImageDownloadFailInvalidToken = -1,
    ECImageDownloadFailNoConnection
} ECImageDownloadFailCode;

typedef enum ECSingleImageDownloadFailCode {
    ECSingleImageDownloadFailNoRes = -1,
    ECSingleImageDownloadFailServerError,
    ECSingleImageDownloadFailUnknown,
    ECSingleImageDownloadInvalidToken
} ECSingleImageDownloadFailCode;

///-----------------------------------------------------------------------------
/// @name Block Declarations
///-----------------------------------------------------------------------------
typedef void(^ECSvcImageDownloadProgressBlock)(int numOfDidDownloaded, int numOfFailed, int numOfTotal);
typedef void(^ECSvcImageDidFinishDownloadBlock)(int numOfFailed, int numOfTotal);
typedef void(^ECSvcImageDownloadDidFailWithErrorBlock)(NSError *error);
typedef void(^ECSvcSingleImageDownloadDidFailWithErrorBlock)(NSError *error);
typedef void(^ECSvcImageDownloadDidCancelledBlock)(void);


@interface ECImgDownloadMgr : NSObject <RKRequestQueueDelegate>

+ (ECImgDownloadMgr *) createDownloadPreImgService;
+ (ECImgDownloadMgr *) createDownloadThumbImgService;
- (void) downloadImages;
- (void) cancelDownload;
- (BOOL) isServiceCancelled;


@property (nonatomic, copy) ECSvcImageDownloadProgressBlock onImageDownloadProgress;
@property (nonatomic, copy) ECSvcImageDidFinishDownloadBlock onImageDidFinishDownload;
@property (nonatomic, copy) ECSvcImageDownloadDidFailWithErrorBlock onImageDownloadError;
@property (nonatomic, copy) ECSvcSingleImageDownloadDidFailWithErrorBlock onSingleImageDownloadError;
@property (nonatomic, copy) ECSvcImageDownloadDidCancelledBlock onImageDownloadCancelled;

@end

