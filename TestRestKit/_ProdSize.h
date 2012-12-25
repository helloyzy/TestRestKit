// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdSize.h instead.

#import <CoreData/CoreData.h>


extern const struct ProdSizeAttributes {
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_nmnl_prod_sz_id;
	__unsafe_unretained NSString *mkg_prod_cat_id;
	__unsafe_unretained NSString *nmnl_prod_sz_nm;
} ProdSizeAttributes;

extern const struct ProdSizeRelationships {
	__unsafe_unretained NSString *products;
} ProdSizeRelationships;

extern const struct ProdSizeFetchedProperties {
} ProdSizeFetchedProperties;

@class Product;







@interface ProdSizeID : NSManagedObjectID {}
@end

@interface _ProdSize : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProdSizeID*)objectID;





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





@property (nonatomic, strong) NSNumber* mkg_nmnl_prod_sz_id;



@property int32_t mkg_nmnl_prod_sz_idValue;
- (int32_t)mkg_nmnl_prod_sz_idValue;
- (void)setMkg_nmnl_prod_sz_idValue:(int32_t)value_;

//- (BOOL)validateMkg_nmnl_prod_sz_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_cat_id;



@property int32_t mkg_prod_cat_idValue;
- (int32_t)mkg_prod_cat_idValue;
- (void)setMkg_prod_cat_idValue:(int32_t)value_;

//- (BOOL)validateMkg_prod_cat_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* nmnl_prod_sz_nm;



//- (BOOL)validateNmnl_prod_sz_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *products;

- (NSMutableSet*)productsSet;





@end

@interface _ProdSize (CoreDataGeneratedAccessors)

- (void)addProducts:(NSSet*)value_;
- (void)removeProducts:(NSSet*)value_;
- (void)addProductsObject:(Product*)value_;
- (void)removeProductsObject:(Product*)value_;

@end

@interface _ProdSize (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_nmnl_prod_sz_id;
- (void)setPrimitiveMkg_nmnl_prod_sz_id:(NSNumber*)value;

- (int32_t)primitiveMkg_nmnl_prod_sz_idValue;
- (void)setPrimitiveMkg_nmnl_prod_sz_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_prod_cat_id;
- (void)setPrimitiveMkg_prod_cat_id:(NSNumber*)value;

- (int32_t)primitiveMkg_prod_cat_idValue;
- (void)setPrimitiveMkg_prod_cat_idValue:(int32_t)value_;




- (NSString*)primitiveNmnl_prod_sz_nm;
- (void)setPrimitiveNmnl_prod_sz_nm:(NSString*)value;





- (NSMutableSet*)primitiveProducts;
- (void)setPrimitiveProducts:(NSMutableSet*)value;


@end
