// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Product.h instead.

#import <CoreData/CoreData.h>


extern const struct ProductAttributes {
	__unsafe_unretained NSString *mkg_brnd_modl_yr_id;
	__unsafe_unretained NSString *mkg_brnd_prod_cat_id;
	__unsafe_unretained NSString *mkg_dig_aset_ownr_id;
	__unsafe_unretained NSString *mkg_inst_typ_id;
	__unsafe_unretained NSString *mkg_nmnl_powr_typ_id;
	__unsafe_unretained NSString *mkg_nmnl_prod_sz_id;
	__unsafe_unretained NSString *mkg_prod_desc_id;
	__unsafe_unretained NSString *mkg_prod_id;
	__unsafe_unretained NSString *mkg_prod_lif_stts_id;
	__unsafe_unretained NSString *prod_cd;
} ProductAttributes;

extern const struct ProductRelationships {
	__unsafe_unretained NSString *fkPrices;
	__unsafe_unretained NSString *installType;
	__unsafe_unretained NSString *lifeCycleStatus;
	__unsafe_unretained NSString *modelYr;
	__unsafe_unretained NSString *powerType;
	__unsafe_unretained NSString *prodDesc;
	__unsafe_unretained NSString *prodSize;
	__unsafe_unretained NSString *prodVrnts;
} ProductRelationships;

extern const struct ProductFetchedProperties {
} ProductFetchedProperties;

@class ProdPrice;
@class InstallType;
@class ProdLifeStatus;
@class BrandModelYr;
@class ProdPowerType;
@class ProdDesc;
@class ProdSize;
@class ProdVrnt;












@interface ProductID : NSManagedObjectID {}
@end

@interface _Product : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProductID*)objectID;





@property (nonatomic, strong) NSNumber* mkg_brnd_modl_yr_id;



@property int16_t mkg_brnd_modl_yr_idValue;
- (int16_t)mkg_brnd_modl_yr_idValue;
- (void)setMkg_brnd_modl_yr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_brnd_modl_yr_id:(id*)value_ error:(NSError**)error_;





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





@property (nonatomic, strong) NSNumber* mkg_inst_typ_id;



@property int16_t mkg_inst_typ_idValue;
- (int16_t)mkg_inst_typ_idValue;
- (void)setMkg_inst_typ_idValue:(int16_t)value_;

//- (BOOL)validateMkg_inst_typ_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_nmnl_powr_typ_id;



@property int16_t mkg_nmnl_powr_typ_idValue;
- (int16_t)mkg_nmnl_powr_typ_idValue;
- (void)setMkg_nmnl_powr_typ_idValue:(int16_t)value_;

//- (BOOL)validateMkg_nmnl_powr_typ_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_nmnl_prod_sz_id;



@property int16_t mkg_nmnl_prod_sz_idValue;
- (int16_t)mkg_nmnl_prod_sz_idValue;
- (void)setMkg_nmnl_prod_sz_idValue:(int16_t)value_;

//- (BOOL)validateMkg_nmnl_prod_sz_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_desc_id;



@property int16_t mkg_prod_desc_idValue;
- (int16_t)mkg_prod_desc_idValue;
- (void)setMkg_prod_desc_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_desc_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_id;



@property int16_t mkg_prod_idValue;
- (int16_t)mkg_prod_idValue;
- (void)setMkg_prod_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_lif_stts_id;



@property int16_t mkg_prod_lif_stts_idValue;
- (int16_t)mkg_prod_lif_stts_idValue;
- (void)setMkg_prod_lif_stts_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_lif_stts_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* prod_cd;



//- (BOOL)validateProd_cd:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *fkPrices;

- (NSMutableSet*)fkPricesSet;




@property (nonatomic, strong) InstallType *installType;

//- (BOOL)validateInstallType:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) ProdLifeStatus *lifeCycleStatus;

//- (BOOL)validateLifeCycleStatus:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) BrandModelYr *modelYr;

//- (BOOL)validateModelYr:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) ProdPowerType *powerType;

//- (BOOL)validatePowerType:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) ProdDesc *prodDesc;

//- (BOOL)validateProdDesc:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) ProdSize *prodSize;

//- (BOOL)validateProdSize:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet *prodVrnts;

- (NSMutableSet*)prodVrntsSet;





@end

@interface _Product (CoreDataGeneratedAccessors)

- (void)addFkPrices:(NSSet*)value_;
- (void)removeFkPrices:(NSSet*)value_;
- (void)addFkPricesObject:(ProdPrice*)value_;
- (void)removeFkPricesObject:(ProdPrice*)value_;

- (void)addProdVrnts:(NSSet*)value_;
- (void)removeProdVrnts:(NSSet*)value_;
- (void)addProdVrntsObject:(ProdVrnt*)value_;
- (void)removeProdVrntsObject:(ProdVrnt*)value_;

@end

@interface _Product (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveMkg_brnd_modl_yr_id;
- (void)setPrimitiveMkg_brnd_modl_yr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_modl_yr_idValue;
- (void)setPrimitiveMkg_brnd_modl_yr_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_brnd_prod_cat_id;
- (void)setPrimitiveMkg_brnd_prod_cat_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_prod_cat_idValue;
- (void)setPrimitiveMkg_brnd_prod_cat_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_dig_aset_ownr_id;
- (void)setPrimitiveMkg_dig_aset_ownr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_dig_aset_ownr_idValue;
- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_inst_typ_id;
- (void)setPrimitiveMkg_inst_typ_id:(NSNumber*)value;

- (int16_t)primitiveMkg_inst_typ_idValue;
- (void)setPrimitiveMkg_inst_typ_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_nmnl_powr_typ_id;
- (void)setPrimitiveMkg_nmnl_powr_typ_id:(NSNumber*)value;

- (int16_t)primitiveMkg_nmnl_powr_typ_idValue;
- (void)setPrimitiveMkg_nmnl_powr_typ_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_nmnl_prod_sz_id;
- (void)setPrimitiveMkg_nmnl_prod_sz_id:(NSNumber*)value;

- (int16_t)primitiveMkg_nmnl_prod_sz_idValue;
- (void)setPrimitiveMkg_nmnl_prod_sz_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_desc_id;
- (void)setPrimitiveMkg_prod_desc_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_desc_idValue;
- (void)setPrimitiveMkg_prod_desc_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_id;
- (void)setPrimitiveMkg_prod_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_idValue;
- (void)setPrimitiveMkg_prod_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_lif_stts_id;
- (void)setPrimitiveMkg_prod_lif_stts_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_lif_stts_idValue;
- (void)setPrimitiveMkg_prod_lif_stts_idValue:(int16_t)value_;




- (NSString*)primitiveProd_cd;
- (void)setPrimitiveProd_cd:(NSString*)value;





- (NSMutableSet*)primitiveFkPrices;
- (void)setPrimitiveFkPrices:(NSMutableSet*)value;



- (InstallType*)primitiveInstallType;
- (void)setPrimitiveInstallType:(InstallType*)value;



- (ProdLifeStatus*)primitiveLifeCycleStatus;
- (void)setPrimitiveLifeCycleStatus:(ProdLifeStatus*)value;



- (BrandModelYr*)primitiveModelYr;
- (void)setPrimitiveModelYr:(BrandModelYr*)value;



- (ProdPowerType*)primitivePowerType;
- (void)setPrimitivePowerType:(ProdPowerType*)value;



- (ProdDesc*)primitiveProdDesc;
- (void)setPrimitiveProdDesc:(ProdDesc*)value;



- (ProdSize*)primitiveProdSize;
- (void)setPrimitiveProdSize:(ProdSize*)value;



- (NSMutableSet*)primitiveProdVrnts;
- (void)setPrimitiveProdVrnts:(NSMutableSet*)value;


@end
