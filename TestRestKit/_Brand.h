// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Brand.h instead.

#import <CoreData/CoreData.h>


extern const struct BrandAttributes {
	__unsafe_unretained NSString *brandID;
	__unsafe_unretained NSString *displayOrder;
	__unsafe_unretained NSString *is_internal;
	__unsafe_unretained NSString *mkg_dig_aset_ownr_id;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *prnt_brnd_id;
	__unsafe_unretained NSString *show_sub_brnd;
	__unsafe_unretained NSString *top_brnd_id;
} BrandAttributes;

extern const struct BrandRelationships {
	__unsafe_unretained NSString *children;
	__unsafe_unretained NSString *parent;
	__unsafe_unretained NSString *productCategories;
	__unsafe_unretained NSString *subBrands;
	__unsafe_unretained NSString *topBrand;
} BrandRelationships;

extern const struct BrandFetchedProperties {
} BrandFetchedProperties;

@class Brand;
@class Brand;
@class ProductCategory;
@class Brand;
@class Brand;










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





@property (nonatomic, strong) NSNumber* is_internal;



@property int16_t is_internalValue;
- (int16_t)is_internalValue;
- (void)setIs_internalValue:(int16_t)value_;

//- (BOOL)validateIs_internal:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_dig_aset_ownr_id;



@property int16_t mkg_dig_aset_ownr_idValue;
- (int16_t)mkg_dig_aset_ownr_idValue;
- (void)setMkg_dig_aset_ownr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_dig_aset_ownr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* prnt_brnd_id;



@property int16_t prnt_brnd_idValue;
- (int16_t)prnt_brnd_idValue;
- (void)setPrnt_brnd_idValue:(int16_t)value_;

//- (BOOL)validatePrnt_brnd_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* show_sub_brnd;



@property int16_t show_sub_brndValue;
- (int16_t)show_sub_brndValue;
- (void)setShow_sub_brndValue:(int16_t)value_;

//- (BOOL)validateShow_sub_brnd:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* top_brnd_id;



@property int16_t top_brnd_idValue;
- (int16_t)top_brnd_idValue;
- (void)setTop_brnd_idValue:(int16_t)value_;

//- (BOOL)validateTop_brnd_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *children;

- (NSMutableSet*)childrenSet;




@property (nonatomic, strong) Brand *parent;

//- (BOOL)validateParent:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet *productCategories;

- (NSMutableSet*)productCategoriesSet;




@property (nonatomic, strong) NSSet *subBrands;

- (NSMutableSet*)subBrandsSet;




@property (nonatomic, strong) Brand *topBrand;

//- (BOOL)validateTopBrand:(id*)value_ error:(NSError**)error_;





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

- (void)addSubBrands:(NSSet*)value_;
- (void)removeSubBrands:(NSSet*)value_;
- (void)addSubBrandsObject:(Brand*)value_;
- (void)removeSubBrandsObject:(Brand*)value_;

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




- (NSNumber*)primitiveIs_internal;
- (void)setPrimitiveIs_internal:(NSNumber*)value;

- (int16_t)primitiveIs_internalValue;
- (void)setPrimitiveIs_internalValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_dig_aset_ownr_id;
- (void)setPrimitiveMkg_dig_aset_ownr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_dig_aset_ownr_idValue;
- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int16_t)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitivePrnt_brnd_id;
- (void)setPrimitivePrnt_brnd_id:(NSNumber*)value;

- (int16_t)primitivePrnt_brnd_idValue;
- (void)setPrimitivePrnt_brnd_idValue:(int16_t)value_;




- (NSNumber*)primitiveShow_sub_brnd;
- (void)setPrimitiveShow_sub_brnd:(NSNumber*)value;

- (int16_t)primitiveShow_sub_brndValue;
- (void)setPrimitiveShow_sub_brndValue:(int16_t)value_;




- (NSNumber*)primitiveTop_brnd_id;
- (void)setPrimitiveTop_brnd_id:(NSNumber*)value;

- (int16_t)primitiveTop_brnd_idValue;
- (void)setPrimitiveTop_brnd_idValue:(int16_t)value_;





- (NSMutableSet*)primitiveChildren;
- (void)setPrimitiveChildren:(NSMutableSet*)value;



- (Brand*)primitiveParent;
- (void)setPrimitiveParent:(Brand*)value;



- (NSMutableSet*)primitiveProductCategories;
- (void)setPrimitiveProductCategories:(NSMutableSet*)value;



- (NSMutableSet*)primitiveSubBrands;
- (void)setPrimitiveSubBrands:(NSMutableSet*)value;



- (Brand*)primitiveTopBrand;
- (void)setPrimitiveTopBrand:(Brand*)value;


@end
