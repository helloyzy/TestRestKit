#import "_BrandProdCat.h"

@interface BrandProdCat : _BrandProdCat {}
// Custom logic goes here.

+ (NSArray *) childProdCats:(NSInteger) parentProdCatId inBrandFamiliy:(NSArray *)brandFamilyIds;

@end
