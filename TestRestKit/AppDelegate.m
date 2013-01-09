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

@interface AppDelegate()

@property (strong, nonatomic) ECLoginService * loginService;

@end

@implementation AppDelegate

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

- (void) testLoginService {
    self.loginService = [ECLoginService sharedInstance];
    self.loginService.onDidLoadResponse = ^(RKResponse * response) {
        NSLog(@"Login service, response status code is %d, token is %@", response.statusCode, [ECLoginService userToken]);
    };
    [self.loginService authenticate:@"ProdIntVisit" withPwd:@"ecU@pHoY"];
}

- (void) testImageService {
    [ECImgDownloadMgr test];
}

- (void) testDataService {
    self.loginService = [ECLoginService sharedInstance];
    self.loginService.onDidLoadResponse = ^(RKResponse * response) {
        NSLog(@"Login service, response status code is %d, token is %@", response.statusCode, [ECLoginService userToken]);
        [ECDataService test];
    };
    [self.loginService authenticate:@"ProdIntiPad1" withPwd:@"Northridge*1"];
}

- (void) test {
    [self testImageService];
    // [self testDataService];
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
