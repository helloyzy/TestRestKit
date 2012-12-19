#import "BrandProdCat.h"
#import "NSArray+ECDataRelated.h"
#import "NSManagedObject+InnerBand.h"
#import "Brand.h"
#import "ProductCategory.h"

@interface BrandProdCat ()

// Private interface goes here.

@end


@implementation BrandProdCat

// Custom logic goes here.

+ (NSArray *) childProdCats:(NSInteger) parentProdCatId inBrandFamiliy:(NSArray *)brandFamilyIds {
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"self.prodCat.parent.mkg_prod_cat_id = %d AND self.brand.mkg_brnd_id in %@", parentProdCatId, brandFamilyIds];
    NSArray * brandProdCats = [BrandProdCat allForPredicate:predicate];
    for (BrandProdCat * brndPCat in brandProdCats) {
        NSLog(@"ID %d, brand id is %d, prod cat id is %d", brndPCat.mkg_brnd_prod_cat_idValue, brndPCat.brand.mkg_brnd_idValue, brndPCat.prodCat.mkg_prod_cat_idValue);
    }
    NSSet * uniqueProdCats = [NSSet setWithArray:[brandProdCats valueForKey:@"prodCat"]];
    NSArray * result = [uniqueProdCats allObjects];
    return [result sortByDispOrd];
}

@end
