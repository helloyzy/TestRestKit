// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdDesc.h instead.

#import <CoreData/CoreData.h>


extern const struct ProdDescAttributes {
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_brnd_id;
	__unsafe_unretained NSString *mkg_brnd_prod_cat_id;
	__unsafe_unretained NSString *mkg_prod_desc_id;
	__unsafe_unretained NSString *prod_desc_shrt;
} ProdDescAttributes;

extern const struct ProdDescRelationships {
	__unsafe_unretained NSString *products;
} ProdDescRelationships;

extern const struct ProdDescFetchedProperties {
} ProdDescFetchedProperties;

@class Product;








@interface ProdDescID : NSManagedObjectID {}
@end

@interface _ProdDesc : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProdDescID*)objectID;





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





@property (nonatomic, strong) NSNumber* mkg_prod_desc_id;



@property int16_t mkg_prod_desc_idValue;
- (int16_t)mkg_prod_desc_idValue;
- (void)setMkg_prod_desc_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_desc_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* prod_desc_shrt;



//- (BOOL)validateProd_desc_shrt:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *products;

- (NSMutableSet*)productsSet;





@end

@interface _ProdDesc (CoreDataGeneratedAccessors)

- (void)addProducts:(NSSet*)value_;
- (void)removeProducts:(NSSet*)value_;
- (void)addProductsObject:(Product*)value_;
- (void)removeProductsObject:(Product*)value_;

@end

@interface _ProdDesc (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_brnd_id;
- (void)setPrimitiveMkg_brnd_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_idValue;
- (void)setPrimitiveMkg_brnd_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_brnd_prod_cat_id;
- (void)setPrimitiveMkg_brnd_prod_cat_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_prod_cat_idValue;
- (void)setPrimitiveMkg_brnd_prod_cat_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_desc_id;
- (void)setPrimitiveMkg_prod_desc_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_desc_idValue;
- (void)setPrimitiveMkg_prod_desc_idValue:(int16_t)value_;




- (NSString*)primitiveProd_desc_shrt;
- (void)setPrimitiveProd_desc_shrt:(NSString*)value;





- (NSMutableSet*)primitiveProducts;
- (void)setPrimitiveProducts:(NSMutableSet*)value;


@end
