#import "_ProductCategory.h"

@interface ProductCategory : _ProductCategory {}
// Custom logic goes here.

+ (NSArray *) groupProdCatByAreas:(NSArray *) prodCats;

@property (nonatomic, readonly) NSString * areaName;
@property (nonatomic, readonly) NSString * name;

@end
