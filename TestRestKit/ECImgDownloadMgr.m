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
#import "ECServiceBase.h"
#import "ECLoginService.h"

static ECImgDownloadMgr * sharedMgr = nil;
static NSString * previewImgService = @"GetPreviewImage";
static NSString * thumbnailImgService = @"GetThumbnailImage";
static NSInteger maxFailuresAllowed = 3;

@interface ECImgRequest : RKRequest

+ (ECImgRequest *) constructImgRequest:(NSString *)imgRelativePath underService:(NSString *)serviceName;

@property (strong, nonatomic) NSString * imgServiceName;
@property (strong, nonatomic) NSString * imgPathToSave;
@property (strong, nonatomic) NSString * imgRelativePath; // use for reconstruct urls in case of token re-accquired
@property (assign, nonatomic) NSInteger failedTimes;

@end

@implementation ECImgRequest


- (void) constructImgUrl {
    NSString * imgUrlStr = ECServiceBaseUrl;
    imgUrlStr = [imgUrlStr stringByAppendingPathComponent:self.imgServiceName];
    // NSDictionary * queryParams = @{@"authToken":token, @"relativePath":relativePath};
    // NSString * queryStr = [[NSString string] stringByAppendingQueryParameters:queryParams];
    NSString * queryStr = [NSString stringWithFormat:@"?authToken=%@&relativePath=%@", [ECLoginService userToken], self.imgRelativePath];
    imgUrlStr = [imgUrlStr stringByAppendingPathComponent:queryStr];
    // encode
    imgUrlStr = [imgUrlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    self.URL = [[NSURL alloc] initWithString:imgUrlStr];
}

- (void) constructImgSavePath {
    NSString * flatImgPath = [self.imgRelativePath stringByReplacingOccurrencesOfString:@"\\" withString:@"_"];
    if ([self.imgServiceName isEqualToString:previewImgService]) {
        self.imgPathToSave = [NSString stringWithFormat:@"%@Preview.jpg", flatImgPath];
    } else {
        self.imgPathToSave = [NSString stringWithFormat:@"%@Thumbnail.jpg", flatImgPath];
    }
}

+ (ECImgRequest *) constructImgRequest:(NSString *)imgRelativePath underService:(NSString *)serviceName {
    ECImgRequest * imgRequest = [[ECImgRequest alloc] init]; 
    imgRequest.failedTimes = 0;
    imgRequest.imgServiceName = serviceName;
    imgRequest.imgRelativePath = imgRelativePath;
    [imgRequest constructImgUrl];
    [imgRequest constructImgSavePath];
    imgRequest.onDidLoadResponse = ^(RKResponse* response) {
        ECImgRequest * originalRequest = (ECImgRequest *)[response request];
        NSString * docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
        NSString * pathToSave = [docDir stringByAppendingPathComponent:originalRequest.imgPathToSave];
        [response.body writeToFile:pathToSave atomically:YES];
    };
    
    /**
     imgRequest.onDidFailLoadWithError = ^(NSError* error) {
     // handle failure to load image
     NSLog(@"Error...");
     };
     */
    
    return imgRequest;
}

@end

@interface ECImgDownloadMgr()

@property (strong, nonatomic) NSString * imgServiceName;
@property (strong, nonatomic) RKRequestQueue * imgRequestQueue;
@property (nonatomic, assign) NSInteger totalRequestCount;
@property (nonatomic, assign) NSInteger downloadedCount;
@property (nonatomic, assign) NSInteger failedCount;
@property (strong, nonatomic) NSMutableArray * failedRequests;
@property (strong, nonatomic) NSMutableArray * allImgRequests; // hold this for reconstruct urls in case of token re-accquired

@end

@implementation ECImgDownloadMgr

#pragma mark - init methods

- (id) init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (id) initWithServiceName:(NSString *) imgServiceName {
    self = [super init];
    if (self) {
        self.imgServiceName = imgServiceName;
        [self setup];
    }
    return self;
}

- (void) setup {
    self.allImgRequests = [NSMutableArray array];
    self.failedRequests = [NSMutableArray array];
    [self initRequestQueue];
}

#pragma makr - instance  methods

- (void) initRequestQueue {
    NSString * requestQueueName;
    if (self.imgServiceName) {
        requestQueueName = [NSString stringWithFormat:@"ECImgDownload_%@", self.imgServiceName];
    } else {
        requestQueueName = @"ECImgDownload";
    }
    self.imgRequestQueue = [RKRequestQueue requestQueueWithName:requestQueueName];
    self.imgRequestQueue.delegate = self;
    self.imgRequestQueue.concurrentRequestsLimit = 5;
    self.imgRequestQueue.showsNetworkActivityIndicatorWhenBusy = YES;
}

- (void) addImgRequest:(ECImgRequest *) imgRequest {
    [self.allImgRequests addObject:imgRequest];
    [self.imgRequestQueue addRequest:imgRequest];
}

/**
- (void) addFailedRequestForProcess:(ECImgRequest *) failedImgRequest {
    [self.imgRequestQueue addRequest:failedImgRequest];
}
 */

/**
- (void) addFailedImgRequest:(ECImgRequest *) imgRequest {
    [self.failedRequests addObject:imgRequest];
}
 */

- (BOOL) isFailedTooMuch:(ECImgRequest *) imgRequest {
    imgRequest.failedTimes = imgRequest.failedTimes + 1;
    return (imgRequest.failedTimes > maxFailuresAllowed);
}

- (void) retryFailedImgRequests {
    [self stopDownload];
    NSLog(@"Retry failed requests, count is %d", [self.failedRequests count]);
    for (ECImgRequest * failedRequest in self.failedRequests) {
        [self.imgRequestQueue addRequest:failedRequest];
    }
    [self.failedRequests removeAllObjects];
    [self restartDownload];
}

- (void) startDownloadImages {
    /**
    if (![ECServiceBase isServiceAvailable]) {
        [self handleImgDownloadError:ECImageDownloadFailNoConnection];
        return;
    }
     */
    self.totalRequestCount = [self.imgRequestQueue count];
    self.downloadedCount = 0;
    self.failedCount = 0;
    [self.imgRequestQueue start];
}

- (void) stopDownload {
    self.imgRequestQueue.suspended = YES;
}

- (void) restartDownload {
    self.imgRequestQueue.suspended = NO;
}

- (void) clearup {
    [self.allImgRequests removeAllObjects];
}

#pragma mark - error handling

- (void) handleImgDownloadError:(NSUInteger) errorCode {
    [self stopDownload];
    [self.imgRequestQueue cancelAllRequests];
    if (self.onImageDownloadError) {
        self.onImageDownloadError([NSError errorWithDomain:ECImgDownloadDomain code:errorCode userInfo:nil]);
    }
    [self clearup];
}

- (void) handleSingleImgDownloadError:(ECImgRequest *) failedRequest errorCode:(NSUInteger) errorCode {
    self.failedCount = self.failedCount + 1;
    [self printURLString:failedRequest];
    NSLog(@"Failed request, count is %d", self.failedCount);
    if (self.onSingleImageDownloadError) {
        self.onSingleImageDownloadError([NSError errorWithDomain:ECImgDownloadDomain code:errorCode userInfo:nil]);
    }
}

- (void) handleFailedImgRequest:(ECImgRequest *) failedRequest errorCode:(NSUInteger) errorCode {
    if ([self isFailedTooMuch:failedRequest]) {
        [self handleSingleImgDownloadError:failedRequest errorCode:errorCode];
    } else {
        [self.failedRequests addObject:failedRequest];
    }
}

#pragma mark - delegate for RequestQueue

- (void) requestQueue:(RKRequestQueue *)queue didLoadResponse:(RKResponse *)response {
    ECImgRequest * imgRequest = (ECImgRequest *)response.request;
    if ([response isOK]) { // status = 200 
        // as the notification dispatch is always on the main thread, no need to synchronize this
        self.downloadedCount = self.downloadedCount + 1;
        // notify progress callback
        if (self.onImageDownloadProgress) {
            self.onImageDownloadProgress(self.downloadedCount, self.totalRequestCount);
        }
        return;
    } else if ([response isNotFound]) { // status = 404 (not found)
        [self handleSingleImgDownloadError:imgRequest errorCode:ECSingleImageDownloadFailNoRes];
        return;
    } else if ([response isUnauthorized]) { // status = 401
        // block until get valid user token
        [self stopDownload];
        [ECLoginService accquireUserToken:self selector:@selector(onUserTokenAccquired)];
        return;
    } else if ([response isServerError]) { // status = 500
        // check for adding for retry
        [self handleFailedImgRequest:imgRequest errorCode:ECSingleImageDownloadFailServerError];
        return;
    } else { // other status code
        [self handleFailedImgRequest:imgRequest errorCode:ECSingleImageDownloadFailUnknown];
        return;
    }
}

- (void) requestQueue:(RKRequestQueue *)queue didFailRequest:(RKRequest *)request withError:(NSError *)error {
    ECImgRequest * imgRequest = (ECImgRequest *)request;
    [self handleFailedImgRequest:imgRequest errorCode:ECSingleImageDownloadFailUnknown];
}

- (void) requestQueueDidFinishLoading:(RKRequestQueue *)queue {
    if ([self.failedRequests count] == 0) {
        if (self.onImageDidFinishDownload) {
            self.onImageDidFinishDownload(self.failedCount, self.totalRequestCount);
        }
        NSLog(@"Finished image downloading for service %@, failedCount is %d, total is %d", self.imgServiceName, self.failedCount, self.totalRequestCount );
        [self clearup];
    } else {
        // [self performSelector:@selector(retryFailedImgRequests) withObject:self afterDelay:1.0];
        // [self retryFailedImgRequests];
        [self performSelectorInBackground:@selector(retryFailedImgRequests) withObject:nil];
    }
}

#pragma mark - download Thumbnail/Preview images related

/**
 * @name In case of user token accquired, need to re-construct the request url using the new token for all the pending and failed requests (which are in the failedRequests)
 */
- (void) reconstructImgUrls {
    for (ECImgRequest * imgRequest in self.allImgRequests) { // modify all imageRequests, regardingless whehter the related image has been downloaded
        [imgRequest constructImgUrl];
    }
}

- (void) onUserTokenAccquired {
    // Unreg notification
    [ECLoginService unregForUserTokenAccquired:self];
    // continue downloading...
    if ([ECLoginService userToken]) {
        // modify the token on every request (including failed and imgRequestQueue)
        [self reconstructImgUrls];
        [self restartDownload];
    } else { // token cannot be accquired
        [self handleImgDownloadError:ECImageDownloadFailInvalidToken];
    }
    
}

- (void) downloadImages {
    // TODO move this to Product Image
    NSArray * productImages = [ProductImage all];
    NSArray * imgRelativePaths = [productImages valueForKey:@"file_lctn"];
    // De-duplication
    NSSet * uniqueImgRelativePaths = [NSSet setWithArray:imgRelativePaths];
    
    for (NSString * imgRelativePath in uniqueImgRelativePaths) {
        ECImgRequest * imgRequest = [ECImgRequest constructImgRequest:imgRelativePath underService:self.imgServiceName];
        [self addImgRequest:imgRequest];
        // NSLog(@"%@", imgRequest.imgPathToSave);
    }
    
    [self startDownloadImages];

}

- (void) downloadAllThumbImgs {
    self.imgServiceName = thumbnailImgService;
    [self downloadImages];
}

- (void) downloadAllPreImgs {
    self.imgServiceName = previewImgService;
    [self downloadImages];
}

#pragma mark - test

- (void) printURLString:(ECImgRequest *) request {
    NSLog(@"%@", [request.URL absoluteString]);
}

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
        NSLog(@"Received response for request %@ with status code:%d", [[request URL] absoluteString], [response statusCode]);
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
    
    [self addRequest:@"http://static.adzerk.net/Advertisers/unknownWWWYYYZZZxxx.jpg"]; // bad request
    
    [self addRequest:@"https://devimages.apple.com.edgekey.net/home/images/home-imac-md-20120607.jpg"];
    [self addRequest:@"http://note.youdao.com/web/images/logo-icon.png"];
    [self addRequest:@"http://www.google.com.hk/images/nav_logo114.png"];
    
    [self startDownloadImages];
}

+ (void) test {
    [self test1];
}

/**
 + (NSString *) constructThumbImgUrl:(NSString *) relativePath {
 return [self constructImgUrl:relativePath underService:@"GetThumbnailImage"];
 }
 
 + (NSString *) constructPreviewImgUrl:(NSString *) relativePath {
 return [self constructImgUrl:relativePath underService:@"GetPreviewImage"];
 }
 
 - (NSString *) constructImgUrl:(NSString *) relativePath underService:(NSString *)serviceName {
 NSString * result = ECServiceBaseUrl;
 result = [result stringByAppendingPathComponent:serviceName];
 // NSDictionary * queryParams = @{@"authToken":token, @"relativePath":relativePath};
 // NSString * queryStr = [[NSString string] stringByAppendingQueryParameters:queryParams];
 NSString * queryStr = [NSString stringWithFormat:@"?authToken=%@&relativePath=%@", [ECLoginService userToken], relativePath];
 result = [result stringByAppendingPathComponent:queryStr];
 // encode
 result = [result stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
 return result;
 }
 
 
 - (NSString *) constructImgSavePath:(NSString *)imgRelativePath underService:(NSString *)serviceName {
 NSString * flatImgPath = [imgRelativePath stringByReplacingOccurrencesOfString:@"\\" withString:@"_"];
 if ([serviceName isEqualToString:previewImgService]) {
 return [NSString stringWithFormat:@"%@Preview.jpg", flatImgPath];
 } else {
 return [NSString stringWithFormat:@"%@Thumbnail.jpg", flatImgPath];
 
 }
 }
 
 - (ECImgRequest *) constructImgRequest:(NSString *)imgRelativePath underService:(NSString *)serviceName {
 NSString * imgUrl = [self constructImgUrl:imgRelativePath underService:serviceName];
 ECImgRequest * imgRequest = [[ECImgRequest alloc] initWithURL:[NSURL URLWithString:imgUrl]];
 imgRequest.failedTimes = 0;
 imgRequest.imgRelativePath = imgRelativePath;
 imgRequest.imgPathToSave = [self constructImgSavePath:imgRelativePath underService:serviceName];
 imgRequest.onDidLoadResponse = ^(RKResponse* response) {
 ECImgRequest * originalRequest = (ECImgRequest *)[response request];
 NSString * docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
 NSString * pathToSave = [docDir stringByAppendingPathComponent:originalRequest.imgPathToSave];
 [response.body writeToFile:pathToSave atomically:YES];
 };
 
 return imgRequest;
 }
 */

@end
