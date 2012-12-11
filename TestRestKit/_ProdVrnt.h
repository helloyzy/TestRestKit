// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdVrnt.h instead.

#import <CoreData/CoreData.h>


extern const struct ProdVrntAttributes {
	__unsafe_unretained NSString *mkg_chnl_vis_stts_id;
	__unsafe_unretained NSString *mkg_cons_vis_stts_id;
	__unsafe_unretained NSString *mkg_dig_aset_ownr_id;
	__unsafe_unretained NSString *mkg_prod_id;
	__unsafe_unretained NSString *mkg_prod_vrnt_id;
	__unsafe_unretained NSString *mkg_vrtn_typ_cd_id;
	__unsafe_unretained NSString *prod_vrnt_sku;
	__unsafe_unretained NSString *prod_vrnt_upc;
} ProdVrntAttributes;

extern const struct ProdVrntRelationships {
	__unsafe_unretained NSString *product;
	__unsafe_unretained NSString *vrtnTypeCode;
} ProdVrntRelationships;

extern const struct ProdVrntFetchedProperties {
} ProdVrntFetchedProperties;

@class Product;
@class VrtnTypeCode;










@interface ProdVrntID : NSManagedObjectID {}
@end

@interface _ProdVrnt : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProdVrntID*)objectID;





@property (nonatomic, strong) NSNumber* mkg_chnl_vis_stts_id;



@property int16_t mkg_chnl_vis_stts_idValue;
- (int16_t)mkg_chnl_vis_stts_idValue;
- (void)setMkg_chnl_vis_stts_idValue:(int16_t)value_;

//- (BOOL)validateMkg_chnl_vis_stts_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_cons_vis_stts_id;



@property int16_t mkg_cons_vis_stts_idValue;
- (int16_t)mkg_cons_vis_stts_idValue;
- (void)setMkg_cons_vis_stts_idValue:(int16_t)value_;

//- (BOOL)validateMkg_cons_vis_stts_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_dig_aset_ownr_id;



@property int16_t mkg_dig_aset_ownr_idValue;
- (int16_t)mkg_dig_aset_ownr_idValue;
- (void)setMkg_dig_aset_ownr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_dig_aset_ownr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_id;



@property int16_t mkg_prod_idValue;
- (int16_t)mkg_prod_idValue;
- (void)setMkg_prod_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_vrnt_id;



@property int16_t mkg_prod_vrnt_idValue;
- (int16_t)mkg_prod_vrnt_idValue;
- (void)setMkg_prod_vrnt_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_vrnt_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_vrtn_typ_cd_id;



@property int16_t mkg_vrtn_typ_cd_idValue;
- (int16_t)mkg_vrtn_typ_cd_idValue;
- (void)setMkg_vrtn_typ_cd_idValue:(int16_t)value_;

//- (BOOL)validateMkg_vrtn_typ_cd_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* prod_vrnt_sku;



//- (BOOL)validateProd_vrnt_sku:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* prod_vrnt_upc;



//- (BOOL)validateProd_vrnt_upc:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Product *product;

//- (BOOL)validateProduct:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) VrtnTypeCode *vrtnTypeCode;

//- (BOOL)validateVrtnTypeCode:(id*)value_ error:(NSError**)error_;





@end

@interface _ProdVrnt (CoreDataGeneratedAccessors)

@end

@interface _ProdVrnt (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveMkg_chnl_vis_stts_id;
- (void)setPrimitiveMkg_chnl_vis_stts_id:(NSNumber*)value;

- (int16_t)primitiveMkg_chnl_vis_stts_idValue;
- (void)setPrimitiveMkg_chnl_vis_stts_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_cons_vis_stts_id;
- (void)setPrimitiveMkg_cons_vis_stts_id:(NSNumber*)value;

- (int16_t)primitiveMkg_cons_vis_stts_idValue;
- (void)setPrimitiveMkg_cons_vis_stts_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_dig_aset_ownr_id;
- (void)setPrimitiveMkg_dig_aset_ownr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_dig_aset_ownr_idValue;
- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_id;
- (void)setPrimitiveMkg_prod_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_idValue;
- (void)setPrimitiveMkg_prod_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_vrnt_id;
- (void)setPrimitiveMkg_prod_vrnt_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_vrnt_idValue;
- (void)setPrimitiveMkg_prod_vrnt_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_vrtn_typ_cd_id;
- (void)setPrimitiveMkg_vrtn_typ_cd_id:(NSNumber*)value;

- (int16_t)primitiveMkg_vrtn_typ_cd_idValue;
- (void)setPrimitiveMkg_vrtn_typ_cd_idValue:(int16_t)value_;




- (NSString*)primitiveProd_vrnt_sku;
- (void)setPrimitiveProd_vrnt_sku:(NSString*)value;




- (NSString*)primitiveProd_vrnt_upc;
- (void)setPrimitiveProd_vrnt_upc:(NSString*)value;





- (Product*)primitiveProduct;
- (void)setPrimitiveProduct:(Product*)value;



- (VrtnTypeCode*)primitiveVrtnTypeCode;
- (void)setPrimitiveVrtnTypeCode:(VrtnTypeCode*)value;


@end
