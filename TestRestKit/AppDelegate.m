//
//  AppDelegate.m
//  TestRestKit
//
//  Created by AAA on 11/26/12.
//  Copyright (c) 2012 AAA. All rights reserved.
//

#import "AppDelegate.h"
#import <RestKit/RestKit.h>
#import <RestKit/CoreData.h>


@implementation AppDelegate

- (void)generateSeed {
    NSURL * base = [NSURL URLWithString:@"http://base.com"];
    RKObjectManager * objectManager = [RKObjectManager objectManagerWithBaseURL:base];
    
    NSString *seedDatabaseName = nil;
    NSString *databaseName = RKDefaultSeedDatabaseFileName;
    
    objectManager.objectStore = [RKManagedObjectStore objectStoreWithStoreFilename:databaseName usingSeedDatabaseName:seedDatabaseName managedObjectModel:nil delegate:self];
    
    RKManagedObjectMapping *brandMapping = [RKManagedObjectMapping mappingForEntityWithName:@"Brand" inManagedObjectStore:objectManager.objectStore];
    brandMapping.primaryKeyAttribute = @"brandID";
    [brandMapping mapKeyPath:@"id" toAttribute:@"brandID"];
    [brandMapping mapKeyPath:@"name" toAttribute:@"name"];
    [brandMapping mapKeyPath:@"display_order" toAttribute:@"displayOrder"];
    [brandMapping mapKeyPath:@"children" toRelationship:@"children" withMapping:brandMapping];
    
    RKManagedObjectMapping *productCategoryMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProductCategory" inManagedObjectStore:objectManager.objectStore];
    productCategoryMapping.primaryKeyAttribute = @"productCategoryID";
    [productCategoryMapping mapKeyPath:@"id" toAttribute:@"productCategoryID"];
    [productCategoryMapping mapKeyPath:@"name" toAttribute:@"name"];
    [productCategoryMapping mapKeyPath:@"area_name" toAttribute:@"areaName"];
    [productCategoryMapping mapKeyPath:@"display_order" toAttribute:@"displayOrder"];
    [productCategoryMapping mapKeyPath:@"children" toRelationship:@"children" withMapping:productCategoryMapping];
    
    [brandMapping mapKeyPath:@"product_categories" toRelationship:@"productCategories" withMapping:productCategoryMapping];
    
    RKLogConfigureByName("RestKit/ObjectMapping", RKLogLevelDebug);
    RKLogConfigureByName("RestKit/CoreData", RKLogLevelDebug);
    
    RKManagedObjectSeeder *seeder = [RKManagedObjectSeeder objectSeederWithObjectManager:objectManager];
    [seeder seedObjectsFromFile:@"brands.json" withObjectMapping:brandMapping];
    [seeder finalizeSeedingAndExit];

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
#ifdef RESTKIT_GENERATE_SEED_DB
    [self generateSeed];
#endif   
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
