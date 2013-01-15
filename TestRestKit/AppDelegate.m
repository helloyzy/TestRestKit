//
//  AppDelegate.m
//  TestRestKit
//
//  Created by AAA on 11/26/12.
//  Copyright (c) 2012 AAA. All rights reserved.
//

#import "AppDelegate.h"
#import "IBFunctions.h"
#import "Brand.h"
#import "ECSeeder.h"
#import "NSManagedObject+InnerBand.h"
#import "BrandProdCat.h"
#import "ProductCategory.h"
#import "ECLoginService.h"
#import "ECImgDownloadMgr.h"
#import "ECDataService.h"
#import "Functions.h"

@interface ECDataChunkCountServiceTemp : ECServiceBase

- (void) getDataChunkCount;

// @property(nonatomic, strong) ECSvcDidLoadDataChunkCountBlock onLoadDataChunkCount;
@property(nonatomic, assign) NSInteger dataChunkCount;

@end

@implementation ECDataChunkCountServiceTemp

- (id) init {
    self = [super init];
    if (self) {
        self.isHandleUserTokenInvalid = YES;
    }
    return self;
}

- (void) retryServiceOnUserTokenAccquired {
    [self getDataChunkCount];
}

- (void) getDataChunkCount {
    NSString * serviceUrl = [NSString stringWithFormat:@"/GetDataChunksCount/?authToken=%@", [ECLoginService userToken]];
    serviceUrl = [serviceUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [[ECServiceBase sharedClient] get:serviceUrl delegate:self];
}

- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {
    NSLog(@"GetDataChunkCount service: receive response with status code is %d", response.statusCode);
    if (response.isOK) {
        NSString * result = response.bodyAsString;
        self.dataChunkCount = [result integerValue];
    }
    // TODO handle user token invalid?
    [super request:request didLoadResponse:response];
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    [super request:request didFailLoadWithError:error];
    NSLog(@"Error in GetDataChunkCount service: %@", [error description]);
}

@end

static ECDataChunkCountServiceTemp * dataCountService = nil;
static NSDate * date1;
static NSDate * date2;

@interface AppDelegate()

@property (strong, nonatomic) ECLoginService * loginService;
@property (strong, nonatomic) ECDataService * dataService;
@property (strong, nonatomic) ECImgDownloadMgr * previewImgDownloadSvc;
@property (strong, nonatomic) ECImgDownloadMgr * thumbnailImgDownloadSvc;

@end

@implementation AppDelegate

#pragma mark - test object mapping 

- (void) testIn {
    NSArray * topBrnds = [Brand allTopBrands];
    NSLog(@"All top brand size is %d", [topBrnds count]);
    for (Brand * brand in topBrnds) {
        NSArray * familyBrandIds = [brand familyBrandIds];
        NSLog(@"Family brand %@:(%@)", brand.name, familyBrandIds);
        NSPredicate * predicate = [NSPredicate predicateWithFormat:@"mkg_brnd_id IN %@", familyBrandIds];
        NSArray * searchedBrands = [Brand allForPredicate:predicate];
        for (Brand * brnd in searchedBrands) {
            NSLog(@"----- Searched Brand name %@ with id %d", brnd.name, brnd.mkg_brnd_idValue);
        }
    }
}

- (void) testObjectSearch {
    NSArray * topBrnds = [Brand allTopBrands];
    Brand * topBrnd = [topBrnds objectAtIndex:0];
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"self.parent = %@", topBrnd];
    NSArray * searchedBrands = [Brand allForPredicate:predicate];
    for (Brand * brnd in searchedBrands) {
        NSLog(@"----- Searched Brand name %@ with id %d", brnd.name, brnd.mkg_brnd_idValue);
    }
}

- (void) testBrndProdCats {
    NSLog(@"%@", IB_DOCUMENTS_DIR());
    NSArray * topBrnds = [Brand allTopBrands];
    Brand * topBrnd = [topBrnds objectAtIndex:0];
    NSArray * familyBrandIds = [topBrnd familyBrandIds];
    NSArray * childProdCats = [BrandProdCat childProdCats:16 inBrandFamiliy:familyBrandIds];
    for (ProductCategory * prodCat in childProdCats) {
        NSLog(@"Product category id %d, name %@", prodCat.mkg_prod_cat_idValue, prodCat.name);
    }
}

# pragma mark - testing services

- (void) testLoginService {
    self.loginService = [ECLoginService sharedInstance];
    self.loginService.onDidLoadResponse = ^(RKResponse * response) {
        NSLog(@"Login service, response status code is %d, token is %@", response.statusCode, [ECLoginService userToken]);
    };
    [self.loginService authenticate:@"ProdIntVisit" withPwd:@"ecU@pHoY"];
}

- (void) writeFailedRequestToFile:(NSString *) failedRequest {
    NSString * docDir = DOCUMENTS_DIR();
    NSString * filePath = [docDir stringByAppendingPathComponent:@"failed.txt"];
    
    NSFileHandle * fileHandle = [NSFileHandle fileHandleForWritingAtPath:filePath];
    [fileHandle seekToEndOfFile];
    [fileHandle writeData:[failedRequest dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle writeData:[@"\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle closeFile];
}

- (void) testPreviewImageService {
    self.previewImgDownloadSvc = [ECImgDownloadMgr createDownloadPreImgService];
    self.previewImgDownloadSvc.onImageDidFinishDownload = ^(int numOfFailed, int numOfTotal) {
        NSLog(@"Preview images downloading finished, failed:%d, total:%d", numOfFailed, numOfTotal);
    };
    self.previewImgDownloadSvc.onImageDownloadError = ^(NSError * error) {
        NSLog(@"Erron on downloading preview images: error code is %d", [error code]);
    };
    self.previewImgDownloadSvc.onImageDownloadProgress = ^(int numOfDidDownloaded, int numOfFailed, int numOfTotal) {
        NSLog(@"Preview images downloading, downloaded:%d, failed:%d, total:%d", numOfDidDownloaded, numOfFailed, numOfTotal);
    };
    self.previewImgDownloadSvc.onSingleImageDownloadError = ^(NSError * error) {
        NSLog(@"Erron on downloading preview images(single): error code is %d", [error code]);
    };
    [self.previewImgDownloadSvc downloadImages];
}

- (void) testThumbnailImageService {
    self.thumbnailImgDownloadSvc = [ECImgDownloadMgr createDownloadThumbImgService];
    self.thumbnailImgDownloadSvc.onImageDidFinishDownload = ^(int numOfFailed, int numOfTotal) {
        NSLog(@"Thumbnail images downloading finished, failed:%d, total:%d", numOfFailed, numOfTotal);
    };
    self.thumbnailImgDownloadSvc.onImageDownloadError = ^(NSError * error) {
        NSLog(@"Erron on downloading Thumbnail images: error code is %d", [error code]);
    };
    self.thumbnailImgDownloadSvc.onImageDownloadProgress = ^(int numOfDidDownloaded, int numOfFailed, int numOfTotal) {
        NSLog(@"Thumbnail images downloading, downloaded:%d, , failed:%d, total:%d", numOfDidDownloaded, numOfFailed, numOfTotal);
    };
    self.thumbnailImgDownloadSvc.onSingleImageDownloadError = ^(NSError * error) {
        NSLog(@"Erron on downloading Thumbnail images(single): error code is %d", [error code]);
    };
    [self.thumbnailImgDownloadSvc downloadImages];
}

- (void) testDataService {
    self.dataService = [[ECDataService alloc] init];
    self.dataService.onProgressData = ^(NSInteger received, NSInteger total){
        NSLog(@"Download data progressing, received:%i,total:%i",received,total);
    };
    self.dataService.onLoadChunk = ^(NSInteger curLoadedChunk, NSInteger totalChunks){
        NSLog(@"Download data onLoadChunk, curLoadedChunk:%i,totalChunks:%i",curLoadedChunk,totalChunks);
    };
    self.dataService.onDataChunkCountDetermined = ^(NSInteger totalChunks){
        NSLog(@"Download data onDataChunkCountDetermined, totalChunksLoaded:%i",totalChunks);
    };
    self.dataService.onDataFinishLoading = ^(NSInteger totalChunksLoaded){
        NSLog(@"Download data finish, totalChunks:%i",totalChunksLoaded);
    };
    [self.dataService getData];
}

- (void) testDataImageService {
    self.dataService = [[ECDataService alloc] init];
    /**
    self.dataService.onProgressData = ^(NSInteger received, NSInteger total){
        NSLog(@"Download data progressing, received:%i,total:%i",received,total);
    };
     */
    self.dataService.onLoadChunk = ^(NSInteger curLoadedChunk, NSInteger totalChunks){
        NSLog(@"Download data onLoadChunk, curLoadedChunk:%i,totalChunks:%i",curLoadedChunk,totalChunks);
    };
    self.dataService.onDataChunkCountDetermined = ^(NSInteger totalChunks){
        NSLog(@"Download data onDataChunkCountDetermined, totalChunksLoaded:%i",totalChunks);
    };
    self.dataService.onDataFinishLoading = ^(NSInteger totalChunksLoaded){
        NSLog(@"Download data finish, totalChunks:%i",totalChunksLoaded);
        self.previewImgDownloadSvc = [ECImgDownloadMgr createDownloadPreImgService];
        self.previewImgDownloadSvc.onImageDidFinishDownload = ^(int numOfFailed, int numOfTotal) {
            NSLog(@"Preview images downloading finished, failed:%d, total:%d", numOfFailed, numOfTotal);
            self.thumbnailImgDownloadSvc = [ECImgDownloadMgr createDownloadThumbImgService];
            self.thumbnailImgDownloadSvc.onImageDidFinishDownload = ^(int numOfFailed, int numOfTotal) {
                NSLog(@"Thumbnail images downloading finished, failed:%d, total:%d", numOfFailed, numOfTotal);
            };
            self.thumbnailImgDownloadSvc.onImageDownloadError = ^(NSError * error) {
                NSLog(@"Erron on downloading Thumbnail images: error code is %d", [error code]);
            };
            /**
            self.thumbnailImgDownloadSvc.onImageDownloadProgress = ^(int numOfDidDownloaded, int numOfFailed, int numOfTotal) {
                NSLog(@"Thumbnail images downloading, downloaded:%d, , failed:%d, total:%d", numOfDidDownloaded, numOfFailed, numOfTotal);
            };
             */
            self.thumbnailImgDownloadSvc.onSingleImageDownloadError = ^(NSError * error) {
                NSLog(@"Erron on downloading Thumbnail images(single): error code is %d", [error code]);
            };
            [self.thumbnailImgDownloadSvc downloadImages];
        };
        self.previewImgDownloadSvc.onImageDownloadError = ^(NSError * error) {
            NSLog(@"Erron on downloading preview images: error code is %d", [error code]);
        };
        /**
        self.previewImgDownloadSvc.onImageDownloadProgress = ^(int numOfDidDownloaded, int numOfFailed, int numOfTotal) {
            NSLog(@"Preview images downloading, downloaded:%d, , failed:%d, total:%d", numOfDidDownloaded, numOfFailed, numOfTotal);
        };
         */
        self.previewImgDownloadSvc.onSingleImageDownloadError = ^(NSError * error) {
            NSLog(@"Erron on downloading preview images(single): error code is %d", [error code]);
        };
        [self.previewImgDownloadSvc downloadImages];

    };
    [self.dataService getData];
}

// ------------- test duration --------------

- (void) testDuration {
    date1 = [NSDate date];
    self.loginService = [ECLoginService sharedInstance];
    self.loginService.onDidLoadResponse = ^(RKResponse * response) {
        NSLog(@"Login service, response status code is %d, token is %@", response.statusCode, [ECLoginService userToken]);
        dataCountService = [[ECDataChunkCountServiceTemp alloc] init];
        dataCountService.onDidLoadResponse = ^(RKResponse * response) {
            NSLog(@"%d", dataCountService.dataChunkCount);
            NSString * requestUrl = [NSString stringWithFormat:@"/GetUserDataChunk/?authToken=%@&chunkNumber=3", [ECLoginService userToken]];
            [[RKClient sharedClient] get:requestUrl delegate:self];
        };
        [dataCountService getDataChunkCount];
    };
    [self.loginService authenticate:@"ProdIntiPad1" withPwd:@"Northridge*1"];
}

- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {
    NSString * filePath = [IB_DOCUMENTS_DIR() stringByAppendingPathComponent:@"all3.json"];
    [response.body writeToFile:filePath atomically:YES];
    date2 = [NSDate date];
    NSLog(@"%f", [date2 timeIntervalSinceDate:date1]);
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    date2 = [NSDate date];
    NSLog(@"%f", [date2 timeIntervalSinceDate:date1]);
}

- (void)request:(RKRequest *)request didReceiveData:(NSInteger)bytesReceived totalBytesReceived:(NSInteger)totalBytesReceived totalBytesExpectedToReceive:(NSInteger)totalBytesExpectedToReceive {
    NSLog(@"bytesReceived is %d, totalBytesReceived is %d, totalBytesExpectedToReceive is %d", bytesReceived, totalBytesReceived, totalBytesExpectedToReceive);
}

// ------------- test duration --------------


#pragma mark - testing other misc


// --------------- test write file ------------------------

- (void) appendContent:(NSString *) contentToAppend {
    NSString * docDir = IB_DOCUMENTS_DIR();
    NSString * filePath = [docDir stringByAppendingPathComponent:@"failed.txt"];
    
    NSFileHandle * fileHandle = [NSFileHandle fileHandleForWritingAtPath:filePath];
    [fileHandle seekToEndOfFile];
    [fileHandle writeData:[contentToAppend dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle writeData:[@"\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle closeFile];

}

- (void) testWriteFile {
    [self appendContent:@"123"];
    [self appendContent:@"456"];
}

// -------------- test write file -------------------------

#pragma mark - public testing APIs

- (void) testService {
    ECLoginService * loginService = [ECLoginService sharedInstance];
    loginService.onDidLoadResponse = ^(RKResponse * response) {
        NSLog(@"Login service, response status code is %d, token is %@", response.statusCode, [ECLoginService userToken]);
        [self testPreviewImageService];
    };
    [loginService authenticate:@"ProdIntiPad1" withPwd:@"Northridge*1"];
}

- (void) test {
    // [self testDuration];
    // [self testWriteFile];
    [self testService];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
#ifdef RESTKIT_GENERATE_SEED_DB
    [ECSeeder seed];
#else
    [ECSeeder seedIfNecessary];
#endif
    [self test];
    // Override point for customization after application launch.
    UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
    UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
    splitViewController.delegate = (id)navigationController.topViewController;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
