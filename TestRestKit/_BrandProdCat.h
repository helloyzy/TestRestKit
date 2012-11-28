// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrandProdCat.h instead.

#import <CoreData/CoreData.h>


extern const struct BrandProdCatAttributes {
	__unsafe_unretained NSString *mkg_brnd_id;
	__unsafe_unretained NSString *mkg_brnd_prod_cat_id;
	__unsafe_unretained NSString *mkg_dig_aset_ownr_id;
	__unsafe_unretained NSString *mkg_prod_cat_id;
} BrandProdCatAttributes;

extern const struct BrandProdCatRelationships {
	__unsafe_unretained NSString *brand;
	__unsafe_unretained NSString *prodCat;
} BrandProdCatRelationships;

extern const struct BrandProdCatFetchedProperties {
} BrandProdCatFetchedProperties;

@class Brand;
@class ProductCategory;






@interface BrandProdCatID : NSManagedObjectID {}
@end

@interface _BrandProdCat : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BrandProdCatID*)objectID;





@property (nonatomic, strong) NSNumber* mkg_brnd_id;



@property int16_t mkg_brnd_idValue;
- (int16_t)mkg_brnd_idValue;
- (void)setMkg_brnd_idValue:(int16_t)value_;

//- (BOOL)validateMkg_brnd_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_prod_cat_id;



@property int16_t mkg_brnd_prod_cat_idValue;
- (int16_t)mkg_brnd_prod_cat_idValue;
- (void)setMkg_brnd_prod_cat_idValue:(int16_t)value_;

//- (BOOL)validateMkg_brnd_prod_cat_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_dig_aset_ownr_id;



@property int16_t mkg_dig_aset_ownr_idValue;
- (int16_t)mkg_dig_aset_ownr_idValue;
- (void)setMkg_dig_aset_ownr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_dig_aset_ownr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_cat_id;



@property int16_t mkg_prod_cat_idValue;
- (int16_t)mkg_prod_cat_idValue;
- (void)setMkg_prod_cat_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_cat_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Brand *brand;

//- (BOOL)validateBrand:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) ProductCategory *prodCat;

//- (BOOL)validateProdCat:(id*)value_ error:(NSError**)error_;





@end

@interface _BrandProdCat (CoreDataGeneratedAccessors)

@end

@interface _BrandProdCat (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveMkg_brnd_id;
- (void)setPrimitiveMkg_brnd_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_idValue;
- (void)setPrimitiveMkg_brnd_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_brnd_prod_cat_id;
- (void)setPrimitiveMkg_brnd_prod_cat_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_prod_cat_idValue;
- (void)setPrimitiveMkg_brnd_prod_cat_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_dig_aset_ownr_id;
- (void)setPrimitiveMkg_dig_aset_ownr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_dig_aset_ownr_idValue;
- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_cat_id;
- (void)setPrimitiveMkg_prod_cat_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_cat_idValue;
- (void)setPrimitiveMkg_prod_cat_idValue:(int16_t)value_;





- (Brand*)primitiveBrand;
- (void)setPrimitiveBrand:(Brand*)value;



- (ProductCategory*)primitiveProdCat;
- (void)setPrimitiveProdCat:(ProductCategory*)value;


@end
