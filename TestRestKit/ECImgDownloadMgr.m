//
//  ECImgDownloadMgr.m
//  TestRestKit
//
//  Created by AAA on 1/5/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECImgDownloadMgr.h"
#import "IBFunctions.h"
#import <RestKit/RestKit.h>
#import "ProductImage.h"
#import "NSManagedObject+InnerBand.h"

static ECImgDownloadMgr * sharedMgr = nil;
static NSString * baseServiceUrl = @"http://ema-productadmin-ipad-00694sp03.northridgedev.com/IPadService.svc";
static NSString * previewImgService = @"GetPreviewImage";
static NSString * thumbnailImgService = @"GetThumbnailImage";
static NSString * token = @"12dcdji-fei4399-jfiji121";
static NSInteger maxFailuresAllowed = 3;
static NSMutableDictionary * imgDownloadMgrs = nil;

@interface ECImgRequest : RKRequest

@property (strong, nonatomic) NSString * imgPathToSave;
@property (assign, nonatomic) NSInteger failedTimes;

@end

@implementation ECImgRequest


@end

@interface ECImgDownloadMgr()

@property (strong, nonatomic) RKRequestQueue * imgRequestQueue;
@property (nonatomic, assign) NSInteger totalRequestCount;
@property (nonatomic, assign) NSInteger downloadedCount;
@property (strong, nonatomic) NSMutableArray * failedRequests;

@end

@implementation ECImgDownloadMgr

#pragma mark - init methods

- (void) initRequestQueue {
    self.imgRequestQueue = [RKRequestQueue requestQueueWithName:@"ECImageDownloadQueue"];
    self.imgRequestQueue.delegate = self;
    self.imgRequestQueue.concurrentRequestsLimit = 5;
    self.imgRequestQueue.showsNetworkActivityIndicatorWhenBusy = YES;
}

- (id) init {
    self = [super init];
    if (self) {
        [self initRequestQueue];
    }
    return self;
}

#pragma mark - class methods

+ (void) holdMgr:(ECImgDownloadMgr *) mgr underService:(NSString *) serviceName {
    if (!imgDownloadMgrs) {
        imgDownloadMgrs = [NSMutableDictionary dictionary];
    }
    [imgDownloadMgrs setObject:mgr forKey:serviceName];
    
}

#pragma mark - instance methods

- (void) addImgRequest:(ECImgRequest *) imgRequest {
    [self.imgRequestQueue addRequest:imgRequest];
}

- (void) startDownloadImages {
    self.totalRequestCount = [self.imgRequestQueue count];
    self.downloadedCount = 0;
    self.failedRequests = [NSMutableArray array];
    [self.imgRequestQueue start];
}

#pragma mark - handle failed image requests

- (void) addFailedImgRequest:(ECImgRequest *) imgRequest {
    if (imgRequest.failedTimes < maxFailuresAllowed) {
        imgRequest.failedTimes = imgRequest.failedTimes + 1;
        [self.failedRequests addObject:imgRequest];
    }
}

- (void) retryFailedImgRequests {
    self.imgRequestQueue.suspended = YES;
    for (ECImgRequest * failedRequest in self.failedRequests) {
        [self addImgRequest:failedRequest];
    }
    self.imgRequestQueue.suspended = NO;
}

#pragma mark - delegate for RequestQueue

- (void) requestQueue:(RKRequestQueue *)queue didLoadResponse:(RKResponse *)response {
    if ([response isOK] || [response isNotFound]) { // status = 200 || status = 404 (not found)
        // as the notification dispatch is always on the main thread, no need to synchronize this
        self.downloadedCount = self.downloadedCount + 1;
        // NSLog(@"Count is %d", self.downloadedCount);
    } else if ([response isUnauthorized]) { // status = 401
        // ignore for now
        return;
    } else if ([response isServerError]) { // status = 500
        // check for adding for retry
        [self addFailedImgRequest:(ECImgRequest *)response.request];
        return;
    }
}

- (void) requestQueue:(RKRequestQueue *)queue didFailRequest:(RKRequest *)request withError:(NSError *)error {
    [self addFailedImgRequest:(ECImgRequest *)request];
}

- (void) requestQueueDidFinishLoading:(RKRequestQueue *)queue {
    if ([self.failedRequests count] == 0) {
        // TODO success callback
    } else {
        [self retryFailedImgRequests];
    }
}

#pragma mark - download Thumbnail/Preview images related

+ (NSString *) constructImgUrl:(NSString *) relativePath underService:(NSString *)serviceName {
    NSString * result = baseServiceUrl;
    result = [result stringByAppendingPathComponent:serviceName];
    // NSDictionary * queryParams = @{@"authToken":token, @"relativePath":relativePath};
    // NSString * queryStr = [[NSString string] stringByAppendingQueryParameters:queryParams];
    NSString * queryStr = [NSString stringWithFormat:@"?authToken=%@&relativePath=%@", token, relativePath];
    result = [result stringByAppendingPathComponent:queryStr];
    // encode
    result = [result stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    return result;
}

/**
+ (NSString *) constructThumbImgUrl:(NSString *) relativePath {
    return [self constructImgUrl:relativePath underService:@"GetThumbnailImage"];
}

+ (NSString *) constructPreviewImgUrl:(NSString *) relativePath {
    return [self constructImgUrl:relativePath underService:@"GetPreviewImage"];
}
 */

+ (NSString *) constructImgSavePath:(NSString *)imgRelativePath underService:(NSString *)serviceName {
    NSString * flatImgPath = [imgRelativePath stringByReplacingOccurrencesOfString:@"\\" withString:@"_"];
    if ([serviceName isEqualToString:previewImgService]) {
        return [NSString stringWithFormat:@"%@Preview.jpg", flatImgPath];
    } else {
        return [NSString stringWithFormat:@"%@Thumbnail.jpg", flatImgPath];

    }
}

+ (ECImgRequest *) constructImgRequest:(NSString *)imgRelativePath underService:(NSString *)serviceName {
    NSString * imgUrl = [self constructImgUrl:imgRelativePath underService:serviceName];
    ECImgRequest * imgRequest = [[ECImgRequest alloc] initWithURL:[NSURL URLWithString:imgUrl]];
    imgRequest.failedTimes = 0;
    imgRequest.imgPathToSave = [self constructImgSavePath:imgRelativePath underService:serviceName];
    imgRequest.onDidLoadResponse = ^(RKResponse* response) {
        ECImgRequest * originalRequest = (ECImgRequest *)[response request];
        NSString * docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
        NSString * pathToSave = [docDir stringByAppendingPathComponent:originalRequest.imgPathToSave];
        [response.body writeToFile:pathToSave atomically:YES];
    };
    
    imgRequest.onDidFailLoadWithError = ^(NSError* error) {
        // handle failure to load image
        NSLog(@"Error...");
    };
    
    return imgRequest;
}

+ (void) downloadImages:(NSString *) serviceName {
    // TODO move this to Product Image
    NSArray * productImages = [ProductImage all];
    NSArray * imgRelativePaths = [productImages valueForKey:@"file_lctn"];
    
    // De-duplication
    NSSet * uniqueImgRelativePaths = [NSSet setWithArray:imgRelativePaths];
    
    ECImgDownloadMgr * imgDownloadMgr = [[ECImgDownloadMgr alloc] init];

    for (NSString * imgRelativePath in uniqueImgRelativePaths) {
        ECImgRequest * imgRequest = [self constructImgRequest:imgRelativePath underService:serviceName];
        [imgDownloadMgr addImgRequest:imgRequest];
        // NSLog(@"%@", imgRequest.imgPathToSave);
    }
    
    // retain the download manager to avoid gabage collection
    [self holdMgr:imgDownloadMgr underService:serviceName];
    [imgDownloadMgr startDownloadImages];

}

+ (void) downloadAllThumbImgs {
    [self downloadImages:thumbnailImgService];
}

+ (void) downloadAllPreImgs {
    [self downloadImages:previewImgService];
}

#pragma mark - test

+ (ECImgDownloadMgr *) sharedImgDownloadMgr {
    if (!sharedMgr) {
        sharedMgr = [[ECImgDownloadMgr alloc] init];
    }
    return sharedMgr;
}

+ (void) addRequest:(NSString *) imgURL {
    [[self sharedImgDownloadMgr] addRequest:imgURL];
}

+ (void) startDownloadImages {
    [[self sharedImgDownloadMgr] startDownloadImages];
}

- (void) addRequest:(NSString *) imgURL {
    RKRequest * imgRequest = [ECImgDownloadMgr createRequest:imgURL];
    [self.imgRequestQueue addRequest:imgRequest];
}


+ (RKRequest *) createRequest:(NSString *) resURL {
    // http://static.adzerk.net/Advertisers/fdec4733b4814d9e958b7f86c25020b5.jpg
    NSURL * url = [NSURL URLWithString:resURL];
    ECImgRequest * request = [[ECImgRequest alloc] initWithURL:url];
        
    request.onDidLoadResponse = ^(RKResponse* response) {
        // UIImage * image = [UIImage imageWithData: response.body];
        // do something interesting with the image
        RKRequest * request = [response request];
        // NSLog(@"Received response for request %@ with status code:%d", [[request URL] absoluteString], [response statusCode]);
        NSString * lastComponent = [[[request URL] absoluteString] lastPathComponent];
        NSDate * date = [NSDate date];
        NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:kCFDateFormatterFullStyle];
        [formatter setDateFormat:@"yyyyMMddHHmmss.sss"];
        NSString * fileName = [NSString stringWithFormat:@"Documents/%@_%@.jpg", [formatter stringFromDate:date], lastComponent];
        NSString * pathToSave = [NSHomeDirectory() stringByAppendingPathComponent:fileName];
        [response.body writeToFile:pathToSave atomically:YES];
    };
    
    request.onDidFailLoadWithError = ^(NSError* error) {
        // handle failure to load image
        NSLog(@"Error...");
    };
    
    return request;
    
}

+ (void) test1 {
    [self addRequest:@"http://static.adzerk.net/Advertisers/fdec4733b4814d9e958b7f86c25020b5.jpg"];
    [self addRequest:@"http://g-ec4.images-amazon.com/images/G/28/img12/projects/newyear/beacon/lll_20121225_pj660_180_cny_05._V397099809_.jpg"];
    [self addRequest:@"http://ec4.images-amazon.com/images/I/51nStdcFOdL._SL75_PIsitb-sticker-arrow-st,TopRight,8,-14_OU28_.jpg"];
    [self addRequest:@"https://devimages.apple.com.edgekey.net/home/images/home-tools-technologies-20120912.png"];
    [self addRequest:@"https://devimages.apple.com.edgekey.net/home/images/home_join_ios_dev_program-20121016.png"];
    
    // [self addRequest:@"http://static.adzerk.net/Advertisers/unknownWWWYYYZZZxxx.jpg"]; // bad request
    
    [self addRequest:@"https://devimages.apple.com.edgekey.net/home/images/home-imac-md-20120607.jpg"];
    [self addRequest:@"http://note.youdao.com/web/images/logo-icon.png"];
    [self addRequest:@"http://www.google.com.hk/images/nav_logo114.png"];
    
    [self startDownloadImages];
    // NSLog(@"%@", [self downloadAllThumbImgs]);
    // [self downloadAllPreImgs];
}

+ (void) test {
    // [self downloadAllPreImgs];
    // [self downloadAllThumbImgs];
    [self test1];
}

@end
