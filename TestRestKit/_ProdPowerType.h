// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdPowerType.h instead.

#import <CoreData/CoreData.h>


extern const struct ProdPowerTypeAttributes {
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_nmnl_powr_typ_id;
	__unsafe_unretained NSString *nmnl_powr_typ_nm;
} ProdPowerTypeAttributes;

extern const struct ProdPowerTypeRelationships {
	__unsafe_unretained NSString *products;
} ProdPowerTypeRelationships;

extern const struct ProdPowerTypeFetchedProperties {
} ProdPowerTypeFetchedProperties;

@class Product;






@interface ProdPowerTypeID : NSManagedObjectID {}
@end

@interface _ProdPowerType : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProdPowerTypeID*)objectID;





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





@property (nonatomic, strong) NSNumber* mkg_nmnl_powr_typ_id;



@property int32_t mkg_nmnl_powr_typ_idValue;
- (int32_t)mkg_nmnl_powr_typ_idValue;
- (void)setMkg_nmnl_powr_typ_idValue:(int32_t)value_;

//- (BOOL)validateMkg_nmnl_powr_typ_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* nmnl_powr_typ_nm;



//- (BOOL)validateNmnl_powr_typ_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *products;

- (NSMutableSet*)productsSet;





@end

@interface _ProdPowerType (CoreDataGeneratedAccessors)

- (void)addProducts:(NSSet*)value_;
- (void)removeProducts:(NSSet*)value_;
- (void)addProductsObject:(Product*)value_;
- (void)removeProductsObject:(Product*)value_;

@end

@interface _ProdPowerType (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_nmnl_powr_typ_id;
- (void)setPrimitiveMkg_nmnl_powr_typ_id:(NSNumber*)value;

- (int32_t)primitiveMkg_nmnl_powr_typ_idValue;
- (void)setPrimitiveMkg_nmnl_powr_typ_idValue:(int32_t)value_;




- (NSString*)primitiveNmnl_powr_typ_nm;
- (void)setPrimitiveNmnl_powr_typ_nm:(NSString*)value;





- (NSMutableSet*)primitiveProducts;
- (void)setPrimitiveProducts:(NSMutableSet*)value;


@end
