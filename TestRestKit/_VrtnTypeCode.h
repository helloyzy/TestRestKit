// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to VrtnTypeCode.h instead.

#import <CoreData/CoreData.h>


extern const struct VrtnTypeCodeAttributes {
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_prod_vrtn_typ_id;
	__unsafe_unretained NSString *mkg_vrtn_typ_cd_id;
	__unsafe_unretained NSString *vrtn_typ_cd;
	__unsafe_unretained NSString *vrtn_typ_cd_desc;
	__unsafe_unretained NSString *vrtn_typ_cd_nm;
} VrtnTypeCodeAttributes;

extern const struct VrtnTypeCodeRelationships {
	__unsafe_unretained NSString *prodVrtns;
} VrtnTypeCodeRelationships;

extern const struct VrtnTypeCodeFetchedProperties {
} VrtnTypeCodeFetchedProperties;

@class ProdVrnt;









@interface VrtnTypeCodeID : NSManagedObjectID {}
@end

@interface _VrtnTypeCode : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (VrtnTypeCodeID*)objectID;





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





@property (nonatomic, strong) NSNumber* mkg_prod_vrtn_typ_id;



@property int32_t mkg_prod_vrtn_typ_idValue;
- (int32_t)mkg_prod_vrtn_typ_idValue;
- (void)setMkg_prod_vrtn_typ_idValue:(int32_t)value_;

//- (BOOL)validateMkg_prod_vrtn_typ_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_vrtn_typ_cd_id;



@property int32_t mkg_vrtn_typ_cd_idValue;
- (int32_t)mkg_vrtn_typ_cd_idValue;
- (void)setMkg_vrtn_typ_cd_idValue:(int32_t)value_;

//- (BOOL)validateMkg_vrtn_typ_cd_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* vrtn_typ_cd;



//- (BOOL)validateVrtn_typ_cd:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* vrtn_typ_cd_desc;



//- (BOOL)validateVrtn_typ_cd_desc:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* vrtn_typ_cd_nm;



//- (BOOL)validateVrtn_typ_cd_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *prodVrtns;

- (NSMutableSet*)prodVrtnsSet;





@end

@interface _VrtnTypeCode (CoreDataGeneratedAccessors)

- (void)addProdVrtns:(NSSet*)value_;
- (void)removeProdVrtns:(NSSet*)value_;
- (void)addProdVrtnsObject:(ProdVrnt*)value_;
- (void)removeProdVrtnsObject:(ProdVrnt*)value_;

@end

@interface _VrtnTypeCode (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_vrtn_typ_id;
- (void)setPrimitiveMkg_prod_vrtn_typ_id:(NSNumber*)value;

- (int32_t)primitiveMkg_prod_vrtn_typ_idValue;
- (void)setPrimitiveMkg_prod_vrtn_typ_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_vrtn_typ_cd_id;
- (void)setPrimitiveMkg_vrtn_typ_cd_id:(NSNumber*)value;

- (int32_t)primitiveMkg_vrtn_typ_cd_idValue;
- (void)setPrimitiveMkg_vrtn_typ_cd_idValue:(int32_t)value_;




- (NSString*)primitiveVrtn_typ_cd;
- (void)setPrimitiveVrtn_typ_cd:(NSString*)value;




- (NSString*)primitiveVrtn_typ_cd_desc;
- (void)setPrimitiveVrtn_typ_cd_desc:(NSString*)value;




- (NSString*)primitiveVrtn_typ_cd_nm;
- (void)setPrimitiveVrtn_typ_cd_nm:(NSString*)value;





- (NSMutableSet*)primitiveProdVrtns;
- (void)setPrimitiveProdVrtns:(NSMutableSet*)value;


@end
