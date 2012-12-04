#import "ProductCategory.h"
#import "ProductArea.h"
#import "NSArray+ECDataRelated.h"

@implementation ProductCategory

// Custom logic goes here.

- (NSString *)areaName {
    return self.productArea.prod_area_nm;
}

- (NSString *)name {
    return self.prod_cat_nm;
}

+ (NSArray *) groupProdCatByAreas:(NSArray *) prodCats {
    NSArray * allAreas = [prodCats valueForKey:@"areaName"];
    // deduplication for area names
    NSSet * areas = [NSSet setWithArray:allAreas];
    NSArray * areasSorted = [[areas allObjects] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    
    NSMutableArray * result = [NSMutableArray array];
    for (NSString * area in areasSorted) {
        NSPredicate * filterArea = [NSPredicate predicateWithFormat:[[NSString alloc] initWithFormat:@"areaName = '%@'", area]];
        NSArray * filteredProdCats = [prodCats filteredArrayUsingPredicate:filterArea];
        [result addObject:[filteredProdCats sortByDispOrd]];
    }
    
    return result;
}

@end
