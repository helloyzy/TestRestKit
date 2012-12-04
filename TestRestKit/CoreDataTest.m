//
//  CoreDataTest.m
//  TestRestKit
//
//  Created by AAA on 11/27/12.
//  Copyright (c) 2012 AAA. All rights reserved.
//

#import "CoreDataTest.h"
#import "NSManagedObject+InnerBand.h"
#import "Brand.h"
#import "ProductCategory.h"

@implementation CoreDataTest

+ (Brand *)createSampleBrand {
    /**
    ProductCategory * category = [ProductCategory create];
    category.name = @"category1";
    category.productCategoryIDValue = 1;
    category.areaName  = @"area1";
    category.displayOrder = @1;
    
    ProductCategory * category2 = [ProductCategory create];
    category2.name = @"category2";
    category2.productCategoryIDValue = 2;
    category2.areaName  = @"area2";
    category2.displayOrder = @2;
    
    ProductCategory * category3 = [ProductCategory create];
    category3.name = @"category3";
    category3.productCategoryIDValue = 3;
    category3.areaName  = @"area3";
    category3.displayOrder = @3;
    
    ProductCategory * category4 = [ProductCategory create];
    category4.name = @"category4";
    category4.productCategoryIDValue = 4;
    category4.areaName  = @"area4";
    category4.displayOrder = @4;
    
    Brand * brand1 = [Brand create];
    brand1.brandIDValue = 31;
    brand1.name = @"INFINITY";
    brand1.productCategories = [NSSet setWithObjects:category, category2, nil];
    brand1.displayOrder =@1;
    
    Brand * brand2 = [Brand create];
    brand2.brandIDValue = 32;
    brand2.name = @"brand2";
    brand2.productCategories = [NSSet setWithObjects:category3, nil];
    brand2.displayOrder = @2;
    
    Brand * brand3 = [Brand create];
    brand3.brandIDValue = 33;
    brand3.name = @"brand3";
    brand3.productCategories = [NSSet setWithObjects:category4, nil];
    brand3.displayOrder = @3;
    
    Brand * brand = [Brand create];
    brand.brandIDValue = 3;
    brand.name = @"Elextrolux";
    brand.children = [NSSet setWithObjects:brand1,brand2, brand3, nil];
    return brand;
     */
    // TO DO
    return nil;
}

+ (NSMutableArray *)createData {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    [array addObject:[self createSampleBrand]];
    
    return array;
    /**NSSortDescriptor *displayOrder = [NSSortDescriptor sortDescriptorWithKey:@"displayOrder" ascending:YES];
     NSArray *subrands = [brand.children sortedArrayUsingDescriptors:@[displayOrder]];
     
     //NSArray *subrands = [brand.children allObjects];
     NSLog(@"the sub brand are %@", subrands);
     
     NSLog(@"the firt one of sub brand are %@", [subrands objectAtIndex:0]);
     
     NSSet * areas = [[[subrands objectAtIndex:0] productCategories] valueForKeyPath:@"@distinctUnionOfObjects.areaName"];
     NSSet * foo = [parent.children valueForKeyPath:@"productCategories.@distinctUnionOfSets.areaName"];
     NSString* bar = foo.anyObject;
     
     //NSSet * areas = [brand.productCategories valueForKeyPath:@"@distinctUnionOfObjects.areaName"];\\
     }
     NSArray * areaNames = [areas allObjects];
     NSString* s = [areaNames objectAtIndex:0];
     
     NSLog(@"the area name is %@", s);**/
    
    
    /**NSLog(@"the 1  %@",[[[[[self createSampleBrand] children] allObjects] objectAtIndex:0] productCategories]);
     
     NSSortDescriptor *displayOrder = [NSSortDescriptor sortDescriptorWithKey:@"displayOrder" ascending:YES];
     NSPredicate *byAreaName = [NSPredicate predicateWithFormat:@"areaName == 'area3'"];
     
     
     NSArray* c = [[[[[[[self createSampleBrand] children] allObjects] objectAtIndex:0] productCategories] filteredSetUsingPredicate:byAreaName] sortedArrayUsingDescriptors:@[displayOrder]];
     
     NSLog(@"the 2  %@",c);
     //NSNumber* p = ((ProductCategory*) [c objectAtIndex:0]).productCategoryID;
     //[[CoreDataStore mainStore] save];
     return array;**/
}

+ (void)queryBrand {
    NSArray * brands = [Brand all];
    NSLog(@"The brand count is %d", [brands count]);
    for (Brand * brand in brands) {
        NSLog(@"brand name is %@", brand.name);
        NSSet * categories = brand.productCategories;
        for (ProductCategory * category in categories) {
            NSLog(@"Product category name is %@", category.name);
        }
    }
}

+ (void)clearData {
    [[IBCoreDataStore mainStore] clearAllData];
}


@end
