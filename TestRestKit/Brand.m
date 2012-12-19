#import "Brand.h"
#import "ProductCategory.h"
#import "NSArray+ECDataRelated.h"
#import "NSManagedObject+InnerBand.h"
#import "IBFunctions.h"

@implementation Brand

NSString * STRINGIFY_INT(NSInteger x) {
    return IB_STRINGIFY_INT(x);
}

- (NSArray *) familyBrandIds {
    NSMutableArray * result = [NSMutableArray arrayWithObject:self.mkg_brnd_id];
    for (Brand * subBrand in self.children) {
        [result addObjectsFromArray:[subBrand familyBrandIds]];
    }
    return result;
}

#pragma mark - class methods

+ (NSArray *) allTopBrands {
    return [[Brand allForPredicate:[NSPredicate predicateWithFormat:@"parent=nil"]] sortByDispOrd];
}

#pragma mark - sub brands related

- (NSArray *) allDescendantBrands {
    NSMutableArray * descendants = [NSMutableArray arrayWithArray:[self.children allObjects]];
    for (Brand * subBrand in self.children) {
        [descendants addObjectsFromArray:[subBrand allDescendantBrands]];
    }
    return descendants;
}

- (NSArray *) allDescendantBrandsSorted {
    return [[self allDescendantBrands] sortByDispOrd];
}

#pragma mark - related product categories

/**
- (NSArray*) areaNames {
    // NSSet * areas = [self.productCategories valueForKeyPath:@"@distinctUnionOfObjects.areaName"];
    
    NSArray * prodCats = [self productCategories];
    NSArray * areas = [prodCats valueForKeyPath:@"productArea"];
    NSArray * areaNames = [areas valueForKeyPath:@"prod_area_nm"];
    return areaNames;
}

- (NSArray*) childrenAreaNames {
    NSSet * brndProdCatInfos = [self.children valueForKeyPath:@"@distinctUnionOfSets.fkProdCatInfo"];
    NSSet * prodCats = [brndProdCatInfos valueForKeyPath:@"prodCat"];
    NSSet * areas = [prodCats valueForKeyPath:@"productArea"];
    NSSet * areaNames = [areas valueForKeyPath:@"prod_area_nm"];
    return areaNames.allObjects;
}
*/


- (NSArray *) allProdCatsByAreas {
    return [ProductCategory groupProdCatByAreas:[self allProductCategories]];
}

- (NSArray *) selfAndDirtChildProdCatsByAreas {
    return [ProductCategory groupProdCatByAreas:[self selfAndDirtChildProdCats]];
}


// Deduplicated product categories
- (NSArray *) productCategories {
    NSSet * prodCategories = [self.fkProdCatInfo valueForKeyPath:@"prodCat"];
    return [prodCategories allObjects];
}

- (NSArray *) productCategoriesSorted {
    return [[self productCategories] sortByDispOrd];
}

- (NSArray *) selfAndDirtChildProdCats {
    // using set to deduplicate
    NSMutableSet * result = [NSMutableSet setWithArray:[self productCategories]];
    for (Brand * subBrand in self.children) {
        [result addObjectsFromArray:[subBrand productCategories]];
    }
    return [result allObjects];
}


- (NSArray *) allProductCategories {
    // using set to deduplicate
    NSMutableSet * allProdCat = [NSMutableSet setWithArray:[self productCategories]];
    for (Brand * subBrand in self.children) {
        [allProdCat addObjectsFromArray:[subBrand allProductCategories]];
    }
    return [allProdCat allObjects];
}

#pragma mark - other instance methods

- (NSString *) name {
    return self.brnd_nm;
}


@end
