// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdFeatureVrnt.h instead.

#import <CoreData/CoreData.h>


extern const struct ProdFeatureVrntAttributes {
	__unsafe_unretained NSString *is_difn;
	__unsafe_unretained NSString *mkg_brnd_cat_fvnt_id;
	__unsafe_unretained NSString *mkg_prod_cat_fetr_id;
	__unsafe_unretained NSString *mkg_prod_fetr_vrnt_id;
	__unsafe_unretained NSString *mkg_prod_id;
} ProdFeatureVrntAttributes;

extern const struct ProdFeatureVrntRelationships {
	__unsafe_unretained NSString *brandCatFvnt;
	__unsafe_unretained NSString *product;
} ProdFeatureVrntRelationships;

extern const struct ProdFeatureVrntFetchedProperties {
} ProdFeatureVrntFetchedProperties;

@class BrndCatFvnt;
@class Product;







@interface ProdFeatureVrntID : NSManagedObjectID {}
@end

@interface _ProdFeatureVrnt : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProdFeatureVrntID*)objectID;





@property (nonatomic, strong) NSNumber* is_difn;



@property int16_t is_difnValue;
- (int16_t)is_difnValue;
- (void)setIs_difnValue:(int16_t)value_;

//- (BOOL)validateIs_difn:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_cat_fvnt_id;



@property int32_t mkg_brnd_cat_fvnt_idValue;
- (int32_t)mkg_brnd_cat_fvnt_idValue;
- (void)setMkg_brnd_cat_fvnt_idValue:(int32_t)value_;

//- (BOOL)validateMkg_brnd_cat_fvnt_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_cat_fetr_id;



@property int32_t mkg_prod_cat_fetr_idValue;
- (int32_t)mkg_prod_cat_fetr_idValue;
- (void)setMkg_prod_cat_fetr_idValue:(int32_t)value_;

//- (BOOL)validateMkg_prod_cat_fetr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_fetr_vrnt_id;



@property int32_t mkg_prod_fetr_vrnt_idValue;
- (int32_t)mkg_prod_fetr_vrnt_idValue;
- (void)setMkg_prod_fetr_vrnt_idValue:(int32_t)value_;

//- (BOOL)validateMkg_prod_fetr_vrnt_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_id;



@property int32_t mkg_prod_idValue;
- (int32_t)mkg_prod_idValue;
- (void)setMkg_prod_idValue:(int32_t)value_;

//- (BOOL)validateMkg_prod_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) BrndCatFvnt *brandCatFvnt;

//- (BOOL)validateBrandCatFvnt:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) Product *product;

//- (BOOL)validateProduct:(id*)value_ error:(NSError**)error_;





@end

@interface _ProdFeatureVrnt (CoreDataGeneratedAccessors)

@end

@interface _ProdFeatureVrnt (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveIs_difn;
- (void)setPrimitiveIs_difn:(NSNumber*)value;

- (int16_t)primitiveIs_difnValue;
- (void)setPrimitiveIs_difnValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_brnd_cat_fvnt_id;
- (void)setPrimitiveMkg_brnd_cat_fvnt_id:(NSNumber*)value;

- (int32_t)primitiveMkg_brnd_cat_fvnt_idValue;
- (void)setPrimitiveMkg_brnd_cat_fvnt_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_prod_cat_fetr_id;
- (void)setPrimitiveMkg_prod_cat_fetr_id:(NSNumber*)value;

- (int32_t)primitiveMkg_prod_cat_fetr_idValue;
- (void)setPrimitiveMkg_prod_cat_fetr_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_prod_fetr_vrnt_id;
- (void)setPrimitiveMkg_prod_fetr_vrnt_id:(NSNumber*)value;

- (int32_t)primitiveMkg_prod_fetr_vrnt_idValue;
- (void)setPrimitiveMkg_prod_fetr_vrnt_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_prod_id;
- (void)setPrimitiveMkg_prod_id:(NSNumber*)value;

- (int32_t)primitiveMkg_prod_idValue;
- (void)setPrimitiveMkg_prod_idValue:(int32_t)value_;





- (BrndCatFvnt*)primitiveBrandCatFvnt;
- (void)setPrimitiveBrandCatFvnt:(BrndCatFvnt*)value;



- (Product*)primitiveProduct;
- (void)setPrimitiveProduct:(Product*)value;


@end
