//
//  ECImgDownloadMgr.m
//  TestRestKit
//
//  Created by AAA on 1/5/13.
//  Copyright (c) 2013 AAA. All rights reserved.
//

#import "ECImgDownloadMgr.h"
#import "ProductImage.h"
#import "ECServiceBase.h"
#import "ECLoginService.h"
#import "Functions.h"

static NSString * previewImgService = @"GetPreviewImage";
static NSString * thumbnailImgService = @"GetThumbnailImage";
static NSString * previewImgDir = @"Images/Preview";
static NSString * thumbnailImgDir = @"Images/Thumbnail";
static NSInteger maxFailuresAllowed = 3;

@interface ECImgRequest : RKRequest

+ (ECImgRequest *) constructImgRequest:(NSString *)imgRelativePath underService:(NSString *)serviceName;

@property (strong, nonatomic) NSString * imgServiceName;
@property (strong, nonatomic) NSString * imgPathToSave;
@property (strong, nonatomic) NSString * imgRelativePath; // use for reconstruct urls in case of token re-accquired
@property (assign, nonatomic) NSInteger failedTimes;

@end

@implementation ECImgRequest

+ (NSString *) constructImgUrl:(NSString *)imgRelativePath underService:(NSString *)serviceName {
    NSString * imgUrlStr = ECServiceBaseUrl;
    imgUrlStr = [imgUrlStr stringByAppendingPathComponent:serviceName];
    // NSDictionary * queryParams = @{@"authToken":token, @"relativePath":relativePath};
    // NSString * queryStr = [[NSString string] stringByAppendingQueryParameters:queryParams];
    NSString * queryStr = [NSString stringWithFormat:@"?authToken=%@&relativePath=%@", [ECLoginService userToken], imgRelativePath];
    imgUrlStr = [imgUrlStr stringByAppendingPathComponent:queryStr];
    // encode
    imgUrlStr = [imgUrlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    return imgUrlStr;
}

- (void) constructImgUrl {
    NSString * newImgUrl = [ECImgRequest constructImgUrl:self.imgRelativePath underService:self.imgServiceName];
    self.URL = [NSURL URLWithString:newImgUrl];
}

- (void) constructImgSavePath {
    NSString * flatImgPath = [self.imgRelativePath stringByReplacingOccurrencesOfString:@"\\" withString:@"_"];
    NSString * imgPath = DOCUMENTS_DIR();
    if ([self.imgServiceName isEqualToString:previewImgService]) {
        imgPath = [imgPath stringByAppendingPathComponent:previewImgDir];
        // self.imgPathToSave = [NSString stringWithFormat:@"%@Preview.jpg", flatImgPath];
    } else {
        imgPath = [imgPath stringByAppendingPathComponent:thumbnailImgDir];
        // self.imgPathToSave = [NSString stringWithFormat:@"%@Thumbnail.jpg", flatImgPath];
    }
    imgPath = [imgPath stringByAppendingPathComponent:flatImgPath];
    imgPath = [imgPath stringByAppendingPathExtension:@"jpg"];
    self.imgPathToSave = imgPath;
    
}

+ (ECImgRequest *) constructImgRequest:(NSString *)imgRelativePath underService:(NSString *)serviceName {
    NSString * imgUrl = [self constructImgUrl:imgRelativePath underService:serviceName];
    ECImgRequest * imgRequest = [[ECImgRequest alloc] initWithURL:[NSURL URLWithString:imgUrl]];
    imgRequest.failedTimes = 0;
    imgRequest.imgServiceName = serviceName;
    imgRequest.imgRelativePath = imgRelativePath;
    [imgRequest constructImgSavePath];
    imgRequest.onDidLoadResponse = ^(RKResponse* response) {
        ECImgRequest * originalRequest = (ECImgRequest *)[response request];
        // NSString * docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
        // NSString * pathToSave = [docDir stringByAppendingPathComponent:originalRequest.imgPathToSave];
        [response.body writeToFile:originalRequest.imgPathToSave atomically:YES];
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

@interface ECImgDownloadMgr() {
    dispatch_queue_t bgQueue;
}

@property (strong, nonatomic) NSString * imgServiceName;
@property (strong, nonatomic) RKRequestQueue * imgRequestQueue;
@property (nonatomic, assign) NSInteger totalRequestCount;
@property (nonatomic, assign) NSInteger downloadedCount;
@property (nonatomic, assign) NSInteger failedCount;
@property (strong, nonatomic) NSMutableArray * failedRequests;
@property (strong, nonatomic) NSMutableArray * allImgRequests; // hold this for reconstruct urls in case of token re-accquired
@property (assign, nonatomic) BOOL isCancelled;

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

- (BOOL) isFailedTooMuch:(ECImgRequest *) imgRequest {
    imgRequest.failedTimes = imgRequest.failedTimes + 1;
    return (imgRequest.failedTimes > maxFailuresAllowed);
}

#pragma mark - methods which should be handled async

- (void) addImgRequest:(ECImgRequest *) imgRequest {
    [self.allImgRequests addObject:imgRequest];
    [self.imgRequestQueue addRequest:imgRequest];
}

- (void) retryFailedImgRequests {
    if (self.isCancelled) {
        return;
    }
    [self stopDownload];
    NSLog(@"Image downloading sevice(%@): retry %d failed requests", self.imgServiceName, [self.failedRequests count]);
    for (ECImgRequest * failedRequest in self.failedRequests) {
        [failedRequest reset];
        // NSLog(@"Image downloading sevice(%@): will retry request:%@", self.imgServiceName, [failedRequest.URL absoluteString]);
        [self.imgRequestQueue addRequest:failedRequest];
    }
    [self.failedRequests removeAllObjects];
    [self restartDownload];
}

- (void) ensureImageDir {
    NSString * imgDir = DOCUMENTS_DIR();
    if ([self.imgServiceName isEqualToString:previewImgService]) {
        imgDir = [imgDir stringByAppendingPathComponent:previewImgDir];
    } else {
        imgDir = [imgDir stringByAppendingPathComponent:thumbnailImgDir];
    }
    NSFileManager * fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:imgDir]) {
        [fileManager createDirectoryAtPath:imgDir withIntermediateDirectories:YES attributes:nil error:nil];
    }
}

- (void) prepareImgRequests {
    NSArray * uniqueImgRelativePaths = [ProductImage allImageRelativePaths];
    
    for (NSString * imgRelativePath in uniqueImgRelativePaths) {
        ECImgRequest * imgRequest = [ECImgRequest constructImgRequest:imgRelativePath underService:self.imgServiceName];
        [self addImgRequest:imgRequest];
    }
}

- (void) startDownloadImages {
    [self prepareImgRequests];
    self.totalRequestCount = [self.imgRequestQueue count]; // do not use the allImgRequests to determine the total request count
    self.downloadedCount = 0;
    self.failedCount = 0;
    self.isCancelled = NO;
    [self ensureImageDir];
    [self.imgRequestQueue start];
}

- (void) stopDownload {
    self.imgRequestQueue.suspended = YES;
}

- (void) restartDownload {
    self.imgRequestQueue.suspended = NO;
}

- (void) clearup {
    self.onImageDownloadProgress = nil;
    self.onImageDidFinishDownload = nil;
    self.onSingleImageDownloadError = nil;
    self.onImageDownloadError = nil;
    self.onImageDownloadCancelled = nil;
    [self.failedRequests removeAllObjects];
    [self.allImgRequests removeAllObjects];
}

- (void) cancelAllRequests {
    self.isCancelled = YES;
    [self stopDownload];
    [self clearup];
    [self.imgRequestQueue cancelAllRequests];
}

#pragma mark - error handling

- (void) handleImgDownloadError:(NSUInteger) errorCode {
    /**
    [self stopDownload];
    [self.imgRequestQueue cancelAllRequests];
    NSLog(@"Image downloading sevice(%@): error, code is %d", self.imgServiceName, errorCode);
    if (self.onImageDownloadError) {
        self.onImageDownloadError([NSError errorWithDomain:ECImgDownloadDomain code:errorCode userInfo:nil]);
    }
    [self clearup];
     */
    NSLog(@"Image downloading sevice(%@): error, code is %d", self.imgServiceName, errorCode);
    dispatch_async(bgQueue, ^{
        ECSvcImageDownloadDidFailWithErrorBlock errorBlock = self.onImageDownloadError;
        dispatch_async(dispatch_get_main_queue(), ^{
            if (errorBlock) {
                errorBlock([NSError errorWithDomain:ECImgDownloadDomain code:errorCode userInfo:nil]);
            }
        });
        [self cancelAllRequests];
    });
}

- (void) handleSingleImgDownloadError:(ECImgRequest *) failedRequest errorCode:(NSUInteger) errorCode {
    self.failedCount = self.failedCount + 1;
    NSLog(@"Image downloading sevice(%@): single image download failure, total failed is %d, erro code is %d", self.imgServiceName, self.failedCount, errorCode);
    // notify progress callback
    if (self.onImageDownloadProgress) {
        self.onImageDownloadProgress(self.downloadedCount, self.failedCount, self.totalRequestCount);
    }
    if (self.onSingleImageDownloadError) {
        self.onSingleImageDownloadError([NSError errorWithDomain:ECImgDownloadDomain code:errorCode userInfo:nil]);
    }
}

- (void) handleFailedImgRequest:(ECImgRequest *) failedRequest errorCode:(NSUInteger) errorCode {
    if ([self isFailedTooMuch:failedRequest]) {
        [self handleSingleImgDownloadError:failedRequest errorCode:errorCode];
    } else {
        dispatch_async(bgQueue, ^{
            [self.failedRequests addObject:failedRequest];
        });
    }
}

#pragma mark - delegate for RequestQueue

- (void) requestQueue:(RKRequestQueue *)queue didLoadResponse:(RKResponse *)response {
    ECImgRequest * imgRequest = (ECImgRequest *)response.request;
    if ([response isOK]) { // status = 200
        // as the notification dispatch is always on the main thread, no need to synchronize this
        self.downloadedCount = self.downloadedCount + 1;
        // NSLog(@"Image downloading sevice(%@): downloaded %d images out of %d", self.imgServiceName, self.downloadedCount, self.totalRequestCount);
        
        // notify progress callback
        if (self.onImageDownloadProgress) {
            self.onImageDownloadProgress(self.downloadedCount, self.failedCount, self.totalRequestCount);
        }
        return;
    } else if ([response isNotFound] || [response isNoContent]) { // status = 404 (not found)
        NSLog(@"Image downloading sevice(%@): no image found at %@, status code is %d", self.imgServiceName, [response.request.URL absoluteString], response.statusCode);
        [self handleSingleImgDownloadError:imgRequest errorCode:ECSingleImageDownloadFailNoRes];
        return;
    } else if ([response isUnauthorized]) { // status = 401
        // block until get valid user token
        NSLog(@"Image downloading sevice(%@): user token invalid, current token is %@, failed request is %@", self.imgServiceName, [ECLoginService userToken], [response.request.URL absoluteString]);
        if (!self.imgRequestQueue.suspended) {
            [self stopDownload];
            [ECLoginService accquireUserToken:self selector:@selector(onUserTokenAccquired)];
        }
        [self handleFailedImgRequest:imgRequest errorCode:ECSingleImageDownloadInvalidToken];
        return;
    } else if ([response isServerError]) { // status = 500
        // check for adding for retry
        NSLog(@"Image downloading sevice(%@): server error(status = 500), failed request is %@", self.imgServiceName, [response.request.URL absoluteString]);
        
        [self handleFailedImgRequest:imgRequest errorCode:ECSingleImageDownloadFailServerError];
        return;
    } else { // other status code
        NSLog(@"Image downloading sevice(%@): unknown error(status = %d), failed request is %@", self.imgServiceName, response.statusCode, [response.request.URL absoluteString]);
        [self handleFailedImgRequest:imgRequest errorCode:ECSingleImageDownloadFailUnknown];
        return;
    }
}

- (void) requestQueue:(RKRequestQueue *)queue didFailRequest:(RKRequest *)request withError:(NSError *)error {
    NSLog(@"Image downloading sevice(%@): error with description:%@, failed request is %@", self.imgServiceName, [error description], [request.URL absoluteString]);
    ECImgRequest * imgRequest = (ECImgRequest *)request;
    [self handleFailedImgRequest:imgRequest errorCode:ECSingleImageDownloadFailUnknown];
}

- (void) requestQueueDidFinishLoading:(RKRequestQueue *)queue {
    if ([self.failedRequests count] == 0) {
        NSLog(@"Image downloading sevice(%@): finish downloading, downloaded %d, failed %d, total is %d", self.imgServiceName, self.downloadedCount,self.failedCount, self.totalRequestCount );
        if (self.onImageDidFinishDownload) {
            self.onImageDidFinishDownload(self.failedCount, self.totalRequestCount);
        }
        [self clearup];
    } else {
        // [self performSelector:@selector(retryFailedImgRequests) withObject:self afterDelay:1.0];
        // [self performSelectorInBackground:@selector(retryFailedImgRequests) withObject:nil];
        dispatch_async(bgQueue, ^{
            [self retryFailedImgRequests];
        });
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
    NSLog(@"Image downloading sevice(%@): receive notification from login service", self.imgServiceName);
    
    // Unreg notification
    [ECLoginService unregForUserTokenAccquired:self];
    
    // continue downloading...
    if ([ECLoginService userToken]) {
        // modify the token on every request (including failed and imgRequestQueue)
        dispatch_async(bgQueue, ^{
            [self reconstructImgUrls];
            [self restartDownload];
        });
    } else { // token cannot be accquired
        [self handleImgDownloadError:ECImageDownloadFailInvalidToken];
    }
}

#pragma mark - public methods

- (void) downloadImages {
    
    NSString * queueName;
    if (self.imgServiceName) {
        queueName = [NSString stringWithFormat:@"com.electrolux.imgDownload.%@", self.imgServiceName];
    } else {
        queueName = @"com.electrolux.imgDownload";
    }
    bgQueue = dispatch_queue_create([queueName UTF8String], DISPATCH_QUEUE_SERIAL);
    
    dispatch_async(bgQueue, ^{        
        [self startDownloadImages];
    });
}

- (void) cancelDownload {
    dispatch_async(bgQueue, ^{
        ECSvcImageDownloadDidCancelledBlock cancelBlock = self.onImageDownloadCancelled;
        dispatch_async(dispatch_get_main_queue(), ^{
            if (cancelBlock) {
                cancelBlock();
            }
        });
        [self cancelAllRequests];
    });
}

- (BOOL) isServiceCancelled {
    return self.isCancelled;
}

+ (ECImgDownloadMgr *) createDownloadPreImgService {
    return [[ECImgDownloadMgr alloc] initWithServiceName:previewImgService];
}

+ (ECImgDownloadMgr *) createDownloadThumbImgService {
    return [[ECImgDownloadMgr alloc] initWithServiceName:thumbnailImgService];
}

/**
#pragma mark - test

static ECImgDownloadMgr * sharedMgr = nil;

+ (void) test {
    [self testDownloadAllPreImages];
}

- (void) printURLString:(ECImgRequest *) request {
    NSLog(@"%@", [request.URL absoluteString]);
}

- (void) writeFailedRequestToFile:(NSString *) failedRequest {
    NSString * docDir = IB_DOCUMENTS_DIR();
    NSString * filePath = [docDir stringByAppendingPathComponent:@"failed.txt"];
    
    NSFileHandle * fileHandle = [NSFileHandle fileHandleForWritingAtPath:filePath];
    [fileHandle seekToEndOfFile];
    [fileHandle writeData:[failedRequest dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle writeData:[@"\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle closeFile];
}

#pragma mark - test download thumb images;

+ (void) _testDownloadAllThumbImages {
    sharedMgr = [self createDownloadThumbImgService];
    sharedMgr.onImageDidFinishDownload = ^(int numOfFailed, int numOfTotal) {
        NSLog(@"Thumbnail images downloading finished, failed:%d, total:%d", numOfFailed, numOfTotal);
    };
    sharedMgr.onImageDownloadError = ^(NSError * error) {
        NSLog(@"Error code is %d", [error code]);
    };
    sharedMgr.onImageDownloadProgress = ^(int numOfDidDownloaded, int numOfTotal) {
        NSLog(@"Thumbnail images downloading, downloaded:%d, total:%d", numOfDidDownloaded, numOfTotal);
    };
    sharedMgr.onSingleImageDownloadError = ^(NSError * error) {
        NSLog(@"Error code is %d", [error code]);
    };
    [sharedMgr downloadImages];
}

+ (void) testDownloadAllThumbImages {
    ECLoginService * loginService = [ECLoginService sharedInstance];
    loginService.onDidLoadResponse = ^(RKResponse * response) {
        NSLog(@"Login service, response status code is %d, token is %@", response.statusCode, [ECLoginService userToken]);
        [self _testDownloadAllThumbImages];
    };
    [loginService authenticate:@"ProdIntiPad1" withPwd:@"Northridge*1"];
    
}

#pragma mark - test download preview images

- (void) downloadSingleImageTest {
    NSString * imgRelativePath = [[ProductImage allImageRelativePaths] objectAtIndex:0];
    
    ECImgRequest * imgRequest = [ECImgRequest constructImgRequest:@"10000\\10468\\" underService:self.imgServiceName];
    imgRequest.URL = [NSURL URLWithString:@"http:/ema-productadmin-ipad-00694sp03.northridgedev.com/IPadService.svc/GetPreviewImage/?authToken=12345&relativePath=10000%5C10468%5C"]; // simulate invalid token
    [self addImgRequest:imgRequest];
    
    for (int count = 1; count <= 9; count ++) {
        ECImgRequest * imgRequest = [ECImgRequest constructImgRequest:@"10000\\10468\\" underService:self.imgServiceName];
        [self addImgRequest:imgRequest];
    }
    
    imgRequest = [ECImgRequest constructImgRequest:imgRelativePath underService:self.imgServiceName];
    // imgRequest.URL = [NSURL URLWithString:@"http:/ema-productadmin-ipad-00694sp03.northridgedev.com/IPadService.svc/GetPreviewImage/?authToken=12345&relativePath=10000%5C10468%5C"]; // simulate invalid token
    [self addImgRequest:imgRequest];
    
    [self startDownloadImages];
    
}

+ (void) _testDownloadSinglePreImage {
    sharedMgr = [self createDownloadPreImgService];
    sharedMgr.onImageDidFinishDownload = ^(int numOfFailed, int numOfTotal) {
        NSLog(@"Preview images downloading finished, failed:%d, total:%d", numOfFailed, numOfTotal);
    };
    sharedMgr.onImageDownloadError = ^(NSError * error) {
        NSLog(@"Error code is %d", [error code]);
    };
    sharedMgr.onImageDownloadProgress = ^(int numOfDidDownloaded, int numOfTotal) {
        NSLog(@"Preview images downloading, downloaded:%d, total:%d", numOfDidDownloaded, numOfTotal);
    };
    sharedMgr.onSingleImageDownloadError = ^(NSError * error) {
        NSLog(@"Error code is %d", [error code]);
    };
    [sharedMgr downloadSingleImageTest];
}

+ (void) testDownloadSinglePreImages {
    ECLoginService * loginService = [ECLoginService sharedInstance];
    loginService.onDidLoadResponse = ^(RKResponse * response) {
        NSLog(@"Login service, response status code is %d, token is %@", response.statusCode, [ECLoginService userToken]);
        [self _testDownloadSinglePreImage];
    };
    [loginService authenticate:@"ProdIntiPad1" withPwd:@"Northridge*1"];
}

+ (void) _testDownloadAllPreImages {
    sharedMgr = [self createDownloadPreImgService];
    sharedMgr.onImageDidFinishDownload = ^(int numOfFailed, int numOfTotal) {
        NSLog(@"Preview images downloading finished, failed:%d, total:%d", numOfFailed, numOfTotal);
    };
    sharedMgr.onImageDownloadError = ^(NSError * error) {
        NSLog(@"Error code is %d", [error code]);
    };
    sharedMgr.onImageDownloadProgress = ^(int numOfDidDownloaded, int numOfTotal) {
        NSLog(@"Preview images downloading, downloaded:%d, total:%d", numOfDidDownloaded, numOfTotal);
    };
    sharedMgr.onSingleImageDownloadError = ^(NSError * error) {
        NSLog(@"Error code is %d", [error code]);
    };
    [sharedMgr downloadImages];
}

+ (void) testDownloadAllPreImages {
    ECLoginService * loginService = [ECLoginService sharedInstance];
    loginService.onDidLoadResponse = ^(RKResponse * response) {
        NSLog(@"Login service, response status code is %d, token is %@", response.statusCode, [ECLoginService userToken]);
        [self _testDownloadAllPreImages];
    };
    [loginService authenticate:@"ProdIntiPad3" withPwd:@"Northridge*3"];

}

#pragma mark - test images from internet

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
    request.timeoutInterval = 5.0;
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

+ (void) testDownloadOutsideImages {
    [self addRequest:@"http://static.adzerk.net/Advertisers/fdec4733b4814d9e958b7f86c25020b5.jpg"];
    [self addRequest:@"http://g-ec4.images-amazon.com/images/G/28/img12/projects/newyear/beacon/lll_20121225_pj660_180_cny_05._V397099809_.jpg"];
    [self addRequest:@"http://ec4.images-amazon.com/images/I/51nStdcFOdL._SL75_PIsitb-sticker-arrow-st,TopRight,8,-14_OU28_.jpg"];
    [self addRequest:@"https://devimages.apple.com.edgekey.net/home/images/home-tools-technologies-20120912.png"];
    [self addRequest:@"https://devimages.apple.com.edgekey.net/home/images/home_join_ios_dev_program-20121016.png"];
    
    [self addRequest:@"http://static.adzerk.net/Advertisers/unknownWWWYYYZZZxxx.jpg"]; // bad request
    
    [self addRequest:@"https://devimages.apple.com.edgekey.net/home/images/home-imac-md-20120607.jpg"];
    [self addRequest:@"http://note.youdao.com/web/images/logo-icon.png"];
    // [self addRequest:@"http://www.google.com.hk/images/nav_logo114.png"];
    
    [self startDownloadImages];
}
 */


@end
