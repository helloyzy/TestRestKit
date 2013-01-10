#import "ProductImage.h"
#import "NSManagedObject+InnerBand.h"

@interface ProductImage ()

// Private interface goes here.

@end


@implementation ProductImage

// Custom logic goes here.

+ (NSArray *) allImageRelativePaths {
    NSArray * productImages = [ProductImage all];
    NSArray * imgRelativePaths = [productImages valueForKey:@"file_lctn"];
    // De-duplication
    NSSet * result = [NSSet setWithArray:imgRelativePaths];
    return [result allObjects];
}


@end
