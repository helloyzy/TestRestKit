// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrandModelYr.h instead.

#import <CoreData/CoreData.h>


extern const struct BrandModelYrAttributes {
	__unsafe_unretained NSString *cd_val;
	__unsafe_unretained NSString *mkg_brnd_id;
	__unsafe_unretained NSString *mkg_brnd_modl_yr_id;
	__unsafe_unretained NSString *mkg_modl_yr_id;
} BrandModelYrAttributes;

extern const struct BrandModelYrRelationships {
	__unsafe_unretained NSString *modelYr;
	__unsafe_unretained NSString *products;
} BrandModelYrRelationships;

extern const struct BrandModelYrFetchedProperties {
} BrandModelYrFetchedProperties;

@class ModelYr;
@class Product;






@interface BrandModelYrID : NSManagedObjectID {}
@end

@interface _BrandModelYr : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BrandModelYrID*)objectID;





@property (nonatomic, strong) NSString* cd_val;



//- (BOOL)validateCd_val:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_id;



@property int16_t mkg_brnd_idValue;
- (int16_t)mkg_brnd_idValue;
- (void)setMkg_brnd_idValue:(int16_t)value_;

//- (BOOL)validateMkg_brnd_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_modl_yr_id;



@property int16_t mkg_brnd_modl_yr_idValue;
- (int16_t)mkg_brnd_modl_yr_idValue;
- (void)setMkg_brnd_modl_yr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_brnd_modl_yr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_modl_yr_id;



@property int16_t mkg_modl_yr_idValue;
- (int16_t)mkg_modl_yr_idValue;
- (void)setMkg_modl_yr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_modl_yr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) ModelYr *modelYr;

//- (BOOL)validateModelYr:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet *products;

- (NSMutableSet*)productsSet;





@end

@interface _BrandModelYr (CoreDataGeneratedAccessors)

- (void)addProducts:(NSSet*)value_;
- (void)removeProducts:(NSSet*)value_;
- (void)addProductsObject:(Product*)value_;
- (void)removeProductsObject:(Product*)value_;

@end

@interface _BrandModelYr (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveCd_val;
- (void)setPrimitiveCd_val:(NSString*)value;




- (NSNumber*)primitiveMkg_brnd_id;
- (void)setPrimitiveMkg_brnd_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_idValue;
- (void)setPrimitiveMkg_brnd_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_brnd_modl_yr_id;
- (void)setPrimitiveMkg_brnd_modl_yr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_modl_yr_idValue;
- (void)setPrimitiveMkg_brnd_modl_yr_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_modl_yr_id;
- (void)setPrimitiveMkg_modl_yr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_modl_yr_idValue;
- (void)setPrimitiveMkg_modl_yr_idValue:(int16_t)value_;





- (ModelYr*)primitiveModelYr;
- (void)setPrimitiveModelYr:(ModelYr*)value;



- (NSMutableSet*)primitiveProducts;
- (void)setPrimitiveProducts:(NSMutableSet*)value;


@end
