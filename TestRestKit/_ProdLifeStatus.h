// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdLifeStatus.h instead.

#import <CoreData/CoreData.h>


extern const struct ProdLifeStatusAttributes {
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *is_protected;
	__unsafe_unretained NSString *mkg_prod_lif_stts_id;
	__unsafe_unretained NSString *prod_lif_stts_nm;
} ProdLifeStatusAttributes;

extern const struct ProdLifeStatusRelationships {
	__unsafe_unretained NSString *products;
} ProdLifeStatusRelationships;

extern const struct ProdLifeStatusFetchedProperties {
} ProdLifeStatusFetchedProperties;

@class Product;







@interface ProdLifeStatusID : NSManagedObjectID {}
@end

@interface _ProdLifeStatus : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProdLifeStatusID*)objectID;





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





@property (nonatomic, strong) NSNumber* is_protected;



@property int16_t is_protectedValue;
- (int16_t)is_protectedValue;
- (void)setIs_protectedValue:(int16_t)value_;

//- (BOOL)validateIs_protected:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_lif_stts_id;



@property int16_t mkg_prod_lif_stts_idValue;
- (int16_t)mkg_prod_lif_stts_idValue;
- (void)setMkg_prod_lif_stts_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_lif_stts_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* prod_lif_stts_nm;



//- (BOOL)validateProd_lif_stts_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *products;

- (NSMutableSet*)productsSet;





@end

@interface _ProdLifeStatus (CoreDataGeneratedAccessors)

- (void)addProducts:(NSSet*)value_;
- (void)removeProducts:(NSSet*)value_;
- (void)addProductsObject:(Product*)value_;
- (void)removeProductsObject:(Product*)value_;

@end

@interface _ProdLifeStatus (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveIs_protected;
- (void)setPrimitiveIs_protected:(NSNumber*)value;

- (int16_t)primitiveIs_protectedValue;
- (void)setPrimitiveIs_protectedValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_lif_stts_id;
- (void)setPrimitiveMkg_prod_lif_stts_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_lif_stts_idValue;
- (void)setPrimitiveMkg_prod_lif_stts_idValue:(int16_t)value_;




- (NSString*)primitiveProd_lif_stts_nm;
- (void)setPrimitiveProd_lif_stts_nm:(NSString*)value;





- (NSMutableSet*)primitiveProducts;
- (void)setPrimitiveProducts:(NSMutableSet*)value;


@end
