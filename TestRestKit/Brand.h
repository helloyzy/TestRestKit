#import "_Brand.h"

@interface Brand : _Brand {}

// get self and all descendants' Ids
- (NSArray *) familyBrandIds;

// self and its children's product categories, deduplicated
- (NSArray *) selfAndDirtChildProdCatsByAreas;
// get all product categories (deduplicated) group by area
- (NSArray *) allProdCatsByAreas;

// get related product categories (deduplicated) sorted by display order
- (NSArray *) productCategoriesSorted;

// all descendant brand sorted by display order
- (NSArray *) allDescendantBrandsSorted;


// all top brands (parent=nil) sorted by display order
+ (NSArray *) allTopBrands;


@property (nonatomic, readonly) NSArray * productCategories;
@property (nonatomic, readonly) NSString * name;

@end
