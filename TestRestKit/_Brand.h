// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Brand.h instead.

#import <CoreData/CoreData.h>


extern const struct BrandAttributes {
	__unsafe_unretained NSString *brandID;
	__unsafe_unretained NSString *displayOrder;
	__unsafe_unretained NSString *name;
} BrandAttributes;

extern const struct BrandRelationships {
	__unsafe_unretained NSString *children;
	__unsafe_unretained NSString *parent;
	__unsafe_unretained NSString *productCategories;
} BrandRelationships;

extern const struct BrandFetchedProperties {
} BrandFetchedProperties;

@class Brand;
@class Brand;
@class ProductCategory;





@interface BrandID : NSManagedObjectID {}
@end

@interface _Brand : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BrandID*)objectID;





@property (nonatomic, strong) NSNumber* brandID;



@property int16_t brandIDValue;
- (int16_t)brandIDValue;
- (void)setBrandIDValue:(int16_t)value_;

//- (BOOL)validateBrandID:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* displayOrder;



@property int16_t displayOrderValue;
- (int16_t)displayOrderValue;
- (void)setDisplayOrderValue:(int16_t)value_;

//- (BOOL)validateDisplayOrder:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *children;

- (NSMutableSet*)childrenSet;




@property (nonatomic, strong) Brand *parent;

//- (BOOL)validateParent:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet *productCategories;

- (NSMutableSet*)productCategoriesSet;





@end

@interface _Brand (CoreDataGeneratedAccessors)

- (void)addChildren:(NSSet*)value_;
- (void)removeChildren:(NSSet*)value_;
- (void)addChildrenObject:(Brand*)value_;
- (void)removeChildrenObject:(Brand*)value_;

- (void)addProductCategories:(NSSet*)value_;
- (void)removeProductCategories:(NSSet*)value_;
- (void)addProductCategoriesObject:(ProductCategory*)value_;
- (void)removeProductCategoriesObject:(ProductCategory*)value_;

@end

@interface _Brand (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveBrandID;
- (void)setPrimitiveBrandID:(NSNumber*)value;

- (int16_t)primitiveBrandIDValue;
- (void)setPrimitiveBrandIDValue:(int16_t)value_;




- (NSNumber*)primitiveDisplayOrder;
- (void)setPrimitiveDisplayOrder:(NSNumber*)value;

- (int16_t)primitiveDisplayOrderValue;
- (void)setPrimitiveDisplayOrderValue:(int16_t)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (NSMutableSet*)primitiveChildren;
- (void)setPrimitiveChildren:(NSMutableSet*)value;



- (Brand*)primitiveParent;
- (void)setPrimitiveParent:(Brand*)value;



- (NSMutableSet*)primitiveProductCategories;
- (void)setPrimitiveProductCategories:(NSMutableSet*)value;


@end
