//
//  ECDataService.h
//  TestRestKit
//
//  Created by AAA on 1/8/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECServiceBase.h"
#import <RestKit/RestKit.h>

typedef void(^ECSvcDataChunkProgressBlock)(NSInteger received, NSInteger total);
typedef void(^ECSvcDataChunkLoadChunkBlock)(NSInteger curLoadedChunk, NSInteger totalChunks);
typedef void(^ECSvcDataDidFinishLoadingBlock)(NSInteger totalChunksLoaded);
typedef void(^ECSvcDataChunkCountDeterminedBlock)(NSInteger totalChunks);

/**
 Error codes
 */
typedef enum ECDataServiceFailCode {
    ECDataServiceFailInvalidToken = -1,
    ECDataServiceFailNoConnection
} ECDataServiceFailCode;

static NSString * ECDataServiceDomain = @"ECDataServiceDomain";

@interface ECDataService : ECServiceBase <RKObjectLoaderDelegate>

- (void) cancel;
- (void) getData;
- (BOOL) isCancelledFlag;

@property (nonatomic, strong) ECSvcDataChunkProgressBlock onProgressData;
@property (nonatomic, strong) ECSvcDataChunkLoadChunkBlock onLoadChunk;
@property (nonatomic, strong) ECSvcDataChunkCountDeterminedBlock onDataChunkCountDetermined;
@property (nonatomic, strong) ECSvcDataDidFinishLoadingBlock onDataFinishLoading;

@end
