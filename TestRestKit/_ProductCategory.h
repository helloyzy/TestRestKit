// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProductCategory.h instead.

#import <CoreData/CoreData.h>


extern const struct ProductCategoryAttributes {
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_prod_area_id;
	__unsafe_unretained NSString *mkg_prod_cat_id;
	__unsafe_unretained NSString *prnt_prod_cat_id;
	__unsafe_unretained NSString *prod_cat_nm;
} ProductCategoryAttributes;

extern const struct ProductCategoryRelationships {
	__unsafe_unretained NSString *children;
	__unsafe_unretained NSString *fkBrandInfo;
	__unsafe_unretained NSString *parent;
	__unsafe_unretained NSString *productArea;
} ProductCategoryRelationships;

extern const struct ProductCategoryFetchedProperties {
} ProductCategoryFetchedProperties;

@class ProductCategory;
@class BrandProdCat;
@class ProductCategory;
@class ProductArea;








@interface ProductCategoryID : NSManagedObjectID {}
@end

@interface _ProductCategory : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProductCategoryID*)objectID;





@property (nonatomic, strong) NSNumber* dsp_ord;



@property int16_t dsp_ordValue;
- (int16_t)dsp_ordValue;
- (void)setDsp_ordValue:(int16_t)value_;

//- (BOOL)validateDsp_ord:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* is_actv;



@property int16_t is_actvValue;
- (int16_t)is_actvValue;
- (void)setIs_actvValue:(int16_t)value_;

//- (BOOL)validateIs_actv:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_area_id;



@property int32_t mkg_prod_area_idValue;
- (int32_t)mkg_prod_area_idValue;
- (void)setMkg_prod_area_idValue:(int32_t)value_;

//- (BOOL)validateMkg_prod_area_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_cat_id;



@property int32_t mkg_prod_cat_idValue;
- (int32_t)mkg_prod_cat_idValue;
- (void)setMkg_prod_cat_idValue:(int32_t)value_;

//- (BOOL)validateMkg_prod_cat_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* prnt_prod_cat_id;



@property int32_t prnt_prod_cat_idValue;
- (int32_t)prnt_prod_cat_idValue;
- (void)setPrnt_prod_cat_idValue:(int32_t)value_;

//- (BOOL)validatePrnt_prod_cat_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* prod_cat_nm;



//- (BOOL)validateProd_cat_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *children;

- (NSMutableSet*)childrenSet;




@property (nonatomic, strong) NSSet *fkBrandInfo;

- (NSMutableSet*)fkBrandInfoSet;




@property (nonatomic, strong) ProductCategory *parent;

//- (BOOL)validateParent:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) ProductArea *productArea;

//- (BOOL)validateProductArea:(id*)value_ error:(NSError**)error_;





@end

@interface _ProductCategory (CoreDataGeneratedAccessors)

- (void)addChildren:(NSSet*)value_;
- (void)removeChildren:(NSSet*)value_;
- (void)addChildrenObject:(ProductCategory*)value_;
- (void)removeChildrenObject:(ProductCategory*)value_;

- (void)addFkBrandInfo:(NSSet*)value_;
- (void)removeFkBrandInfo:(NSSet*)value_;
- (void)addFkBrandInfoObject:(BrandProdCat*)value_;
- (void)removeFkBrandInfoObject:(BrandProdCat*)value_;

@end

@interface _ProductCategory (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_area_id;
- (void)setPrimitiveMkg_prod_area_id:(NSNumber*)value;

- (int32_t)primitiveMkg_prod_area_idValue;
- (void)setPrimitiveMkg_prod_area_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_prod_cat_id;
- (void)setPrimitiveMkg_prod_cat_id:(NSNumber*)value;

- (int32_t)primitiveMkg_prod_cat_idValue;
- (void)setPrimitiveMkg_prod_cat_idValue:(int32_t)value_;




- (NSNumber*)primitivePrnt_prod_cat_id;
- (void)setPrimitivePrnt_prod_cat_id:(NSNumber*)value;

- (int32_t)primitivePrnt_prod_cat_idValue;
- (void)setPrimitivePrnt_prod_cat_idValue:(int32_t)value_;




- (NSString*)primitiveProd_cat_nm;
- (void)setPrimitiveProd_cat_nm:(NSString*)value;





- (NSMutableSet*)primitiveChildren;
- (void)setPrimitiveChildren:(NSMutableSet*)value;



- (NSMutableSet*)primitiveFkBrandInfo;
- (void)setPrimitiveFkBrandInfo:(NSMutableSet*)value;



- (ProductCategory*)primitiveParent;
- (void)setPrimitiveParent:(ProductCategory*)value;



- (ProductArea*)primitiveProductArea;
- (void)setPrimitiveProductArea:(ProductArea*)value;


@end
