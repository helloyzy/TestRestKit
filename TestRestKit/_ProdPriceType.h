// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdPriceType.h instead.

#import <CoreData/CoreData.h>


extern const struct ProdPriceTypeAttributes {
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_mkt_id;
	__unsafe_unretained NSString *mkg_prod_prce_typ_id;
	__unsafe_unretained NSString *prod_prce_typ_desc;
	__unsafe_unretained NSString *prod_prce_typ_nm;
} ProdPriceTypeAttributes;

extern const struct ProdPriceTypeRelationships {
	__unsafe_unretained NSString *fkPrices;
} ProdPriceTypeRelationships;

extern const struct ProdPriceTypeFetchedProperties {
} ProdPriceTypeFetchedProperties;

@class ProdPrice;








@interface ProdPriceTypeID : NSManagedObjectID {}
@end

@interface _ProdPriceType : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProdPriceTypeID*)objectID;





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





@property (nonatomic, strong) NSNumber* mkg_mkt_id;



@property int16_t mkg_mkt_idValue;
- (int16_t)mkg_mkt_idValue;
- (void)setMkg_mkt_idValue:(int16_t)value_;

//- (BOOL)validateMkg_mkt_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_prce_typ_id;



@property int16_t mkg_prod_prce_typ_idValue;
- (int16_t)mkg_prod_prce_typ_idValue;
- (void)setMkg_prod_prce_typ_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_prce_typ_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* prod_prce_typ_desc;



//- (BOOL)validateProd_prce_typ_desc:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* prod_prce_typ_nm;



//- (BOOL)validateProd_prce_typ_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *fkPrices;

- (NSMutableSet*)fkPricesSet;





@end

@interface _ProdPriceType (CoreDataGeneratedAccessors)

- (void)addFkPrices:(NSSet*)value_;
- (void)removeFkPrices:(NSSet*)value_;
- (void)addFkPricesObject:(ProdPrice*)value_;
- (void)removeFkPricesObject:(ProdPrice*)value_;

@end

@interface _ProdPriceType (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_mkt_id;
- (void)setPrimitiveMkg_mkt_id:(NSNumber*)value;

- (int16_t)primitiveMkg_mkt_idValue;
- (void)setPrimitiveMkg_mkt_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_prce_typ_id;
- (void)setPrimitiveMkg_prod_prce_typ_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_prce_typ_idValue;
- (void)setPrimitiveMkg_prod_prce_typ_idValue:(int16_t)value_;




- (NSString*)primitiveProd_prce_typ_desc;
- (void)setPrimitiveProd_prce_typ_desc:(NSString*)value;




- (NSString*)primitiveProd_prce_typ_nm;
- (void)setPrimitiveProd_prce_typ_nm:(NSString*)value;





- (NSMutableSet*)primitiveFkPrices;
- (void)setPrimitiveFkPrices:(NSMutableSet*)value;


@end
