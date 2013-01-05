//
//  ECImgDownloadMgr.h
//  TestRestKit
//
//  Created by AAA on 1/5/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>


@interface ECImgDownloadMgr : NSObject <RKRequestQueueDelegate>

+ (ECImgDownloadMgr *) sharedImgDownloadMgr;

+ (void) test;

@end
