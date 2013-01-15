//
//  ECSeeder.m
//  TestRestKit
//
//  Created by AAA on 12/12/12.
//  Copyright (c) 2012 AAA. All rights reserved.
//

#import "ECSeeder.h"
#import <RestKit/RestKit.h>
#import "ECMappingMgr.h"
#import "IBFunctions.h"

@implementation ECSeeder

+ (NSString *)databaseName {
    return @"CoreDataStore.sqlite";
}

+ (void)initRKStore {
    RKObjectManager * objectManager = [RKObjectManager objectManagerWithBaseURLString:@"http://ec.com"];
    
    NSString *seedDatabaseName = nil;
    NSString *databaseName = [self databaseName];
    
    objectManager.objectStore = [RKManagedObjectStore objectStoreWithStoreFilename:databaseName usingSeedDatabaseName:seedDatabaseName managedObjectModel:nil delegate:self];
    
    [RKObjectManager setSharedManager: objectManager];
}

+ (void)seed {
    
    [self initRKStore];
    
    RKObjectManager * objectManager = [RKObjectManager sharedManager];
    [ECMappingMgr setupMapping:objectManager];
    
    RKLogConfigureByName("RestKit/ObjectMapping", RKLogLevelDebug);
    RKLogConfigureByName("RestKit/CoreData", RKLogLevelDebug);
    RKManagedObjectSeeder *seeder = [RKManagedObjectSeeder objectSeederWithObjectManager:objectManager];
    
    [seeder seedObjectsFromFiles:@"ECDataBadFormat.json", nil];
    
    // [seeder seedObjectsFromFiles:@"ECBrand1.json", @"ECBrand2.json", nil];
    
    /**
    // brand and product category
    [seeder seedObjectsFromFiles:@"ECData.json", nil];
    // products/product variant(SKU) related
    [seeder seedObjectsFromFiles:@"ECProdDesc.json", @"ECProdMisc.json", @"ECProducts.json", @"ECProdPrice.json", @"ECSku.json", nil];
    
    // product features
    [seeder seedObjectsFromFiles:@"ECProdFeatrue.json", nil];
    
    // product especs
    [seeder seedObjectsFromFiles:@"ECESpecs.json", nil];
    
    // images
    [seeder seedObjectsFromFiles:@"ECImage.json", @"ECBrandProdCatImg.json", nil];
     */
     
    [seeder finalizeSeedingAndExit];
}

NSString * DOCUMENTS_DIR() {
    return IB_DOCUMENTS_DIR();
}

+ (void)seedIfNecessary {
    NSString * docDir = DOCUMENTS_DIR();
    NSString * seedPath = [docDir stringByAppendingPathComponent:[self databaseName]];
    if (NO == [[NSFileManager defaultManager] fileExistsAtPath:seedPath]) {
        [ECSeeder seed];
    } else {
        NSLog(@"The seed database already exists in: %@", seedPath);
    }
}

@end
