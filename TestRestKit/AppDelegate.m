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
#import "CoreDataTest.h"
#import "IBFunctions.h"

@implementation AppDelegate

- (void) seedOld:(RKObjectManager *) objectManager {

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

- (void) seedNew:(RKObjectManager *) objectManager {
    RKManagedObjectMapping *brandMapping = [RKManagedObjectMapping mappingForEntityWithName:@"Brand" inManagedObjectStore:objectManager.objectStore];
    brandMapping.primaryKeyAttribute = @"brandID";
    [brandMapping mapKeyPath:@"mkg_brnd_id" toAttribute:@"brandID"];
    [brandMapping mapKeyPath:@"brnd_nm" toAttribute:@"name"];
    [brandMapping mapKeyPath:@"dsp_ord" toAttribute:@"displayOrder"];
    [brandMapping mapAttributes:@"is_internal", @"show_sub_brnd", @"prnt_brnd_id", @"top_brnd_id", @"mkg_dig_aset_ownr_id", nil];
    
    [brandMapping hasOne:@"parent" withMapping:brandMapping];
    [brandMapping connectRelationship:@"parent" withObjectForPrimaryKeyAttribute:@"prnt_brnd_id"];
    
    [brandMapping hasOne:@"topBrand" withMapping:brandMapping];
    [brandMapping connectRelationship:@"topBrand" withObjectForPrimaryKeyAttribute:@"top_brnd_id"];
    
    // Register our mappings with the provider
    [objectManager.mappingProvider setMapping:brandMapping forKeyPath:@"MKG_BRND"];
    // [[RKObjectManager sharedManager].mappingProvider setMapping:brandMapping forKeyPath:@"MKG_BRND"];
    
    
    RKManagedObjectMapping * prodAreaMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProductArea" inManagedObjectStore:objectManager.objectStore];
    prodAreaMapping.primaryKeyAttribute = @"mkg_prod_area_id";
    [prodAreaMapping mapAttributes:@"mkg_prod_area_id", @"prod_area_nm", @"prod_area_desc", @"is_actv", @"dsp_ord", nil];
    
    [objectManager.mappingProvider setMapping:prodAreaMapping forKeyPath:@"MKG_PROD_AREA"];
    
    RKManagedObjectMapping *productCategoryMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProductCategory" inManagedObjectStore:objectManager.objectStore];
    productCategoryMapping.primaryKeyAttribute = @"productCategoryID";
    [productCategoryMapping mapKeyPath:@"mkg_prod_cat_id" toAttribute:@"productCategoryID"];
    [productCategoryMapping mapKeyPath:@"prod_cat_nm" toAttribute:@"name"];
    [productCategoryMapping mapKeyPath:@"dsp_ord" toAttribute:@"displayOrder"];
    [productCategoryMapping mapAttributes:@"is_actv", @"mkg_prod_area_id", @"prnt_prod_cat_id", nil];
    
    [productCategoryMapping hasOne:@"parent" withMapping:productCategoryMapping];
    [productCategoryMapping connectRelationship:@"parent" withObjectForPrimaryKeyAttribute:@"prnt_prod_cat_id"];
    
    [productCategoryMapping hasOne:@"productArea" withMapping:prodAreaMapping];
    [productCategoryMapping connectRelationship:@"productArea" withObjectForPrimaryKeyAttribute:@"mkg_prod_area_id"];
        
    [objectManager.mappingProvider setMapping:productCategoryMapping forKeyPath:@"MKG_PROD_CAT"];
    
    RKManagedObjectMapping * brandProdCatMapping = [RKManagedObjectMapping mappingForEntityWithName:@"BrandProdCat" inManagedObjectStore:objectManager.objectStore];
    brandProdCatMapping.primaryKeyAttribute = @"mkg_brnd_prod_cat_id";
    [brandProdCatMapping mapAttributes:@"mkg_brnd_prod_cat_id", @"mkg_brnd_id", @"mkg_prod_cat_id", @"mkg_dig_aset_ownr_id", nil];
    
    [brandProdCatMapping hasOne:@"brand" withMapping:brandMapping];
    [brandProdCatMapping connectRelationship:@"brand" withObjectForPrimaryKeyAttribute:@"mkg_brnd_id"];
    [brandProdCatMapping hasOne:@"prodCat" withMapping:productCategoryMapping];
    [brandProdCatMapping connectRelationship:@"prodCat" withObjectForPrimaryKeyAttribute:@"mkg_prod_cat_id"];

    [objectManager.mappingProvider setMapping:brandProdCatMapping forKeyPath:@"MKG_BRND_PROD_CAT"];
     
    RKLogConfigureByName("RestKit/ObjectMapping", RKLogLevelDebug);
    RKLogConfigureByName("RestKit/CoreData", RKLogLevelDebug);
    
    RKManagedObjectSeeder *seeder = [RKManagedObjectSeeder objectSeederWithObjectManager:objectManager];
    // [seeder seedObjectsFromFile:@"ECBrand.json" withObjectMapping:brandMapping];
    // use the associated mapping provider with the object manager
    [seeder seedObjectsFromFiles:@"ECBrand1.json", nil];
    [seeder finalizeSeedingAndExit];
    
    
}



- (void)generateSeed {
    RKObjectManager * objectManager = [RKObjectManager objectManagerWithBaseURLString:@"http://ec.com"];
    
    NSString *seedDatabaseName = nil;
    NSString *databaseName = RKDefaultSeedDatabaseFileName;
    
    objectManager.objectStore = [RKManagedObjectStore objectStoreWithStoreFilename:databaseName usingSeedDatabaseName:seedDatabaseName managedObjectModel:nil delegate:self];
    // [RKObjectManager setSharedManager:objectManager];
    [self seedNew:objectManager];
    
}

- (void)initDBIfNecessary {
    RKObjectManager * objectManager = [RKObjectManager objectManagerWithBaseURLString:@"http://ec.com"];
    
    NSString *seedDatabaseName = RKDefaultSeedDatabaseFileName;
    NSString *databaseName = @"CoreDataStore.sqlite";
    
    objectManager.objectStore = [RKManagedObjectStore objectStoreWithStoreFilename:databaseName usingSeedDatabaseName:seedDatabaseName managedObjectModel:nil delegate:self];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
#ifdef RESTKIT_GENERATE_SEED_DB
    [self generateSeed];
#else
    [self initDBIfNecessary];
#endif   
    [self test];
    // Override point for customization after application launch.
    UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
    UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
    splitViewController.delegate = (id)navigationController.topViewController;
    return YES;
}

- (void) test {
    NSLog(@"%@", IB_DOCUMENTS_DIR());
    // [CoreDataTest createData];
    [CoreDataTest queryBrand];
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
