// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FeatureVrnt.h instead.

#import <CoreData/CoreData.h>


extern const struct FeatureVrntAttributes {
	__unsafe_unretained NSString *bult_txt_proc;
	__unsafe_unretained NSString *desc_proc;
	__unsafe_unretained NSString *mkg_dig_aset_ownr_id;
	__unsafe_unretained NSString *mkg_fetr_id;
	__unsafe_unretained NSString *mkg_fetr_vrnt_id;
	__unsafe_unretained NSString *vrnt_nm;
} FeatureVrntAttributes;

extern const struct FeatureVrntRelationships {
	__unsafe_unretained NSString *brndCatFvnts;
} FeatureVrntRelationships;

extern const struct FeatureVrntFetchedProperties {
} FeatureVrntFetchedProperties;

@class BrndCatFvnt;








@interface FeatureVrntID : NSManagedObjectID {}
@end

@interface _FeatureVrnt : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (FeatureVrntID*)objectID;





@property (nonatomic, strong) NSString* bult_txt_proc;



//- (BOOL)validateBult_txt_proc:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* desc_proc;



//- (BOOL)validateDesc_proc:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_dig_aset_ownr_id;



@property int16_t mkg_dig_aset_ownr_idValue;
- (int16_t)mkg_dig_aset_ownr_idValue;
- (void)setMkg_dig_aset_ownr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_dig_aset_ownr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_fetr_id;



@property int16_t mkg_fetr_idValue;
- (int16_t)mkg_fetr_idValue;
- (void)setMkg_fetr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_fetr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_fetr_vrnt_id;



@property int16_t mkg_fetr_vrnt_idValue;
- (int16_t)mkg_fetr_vrnt_idValue;
- (void)setMkg_fetr_vrnt_idValue:(int16_t)value_;

//- (BOOL)validateMkg_fetr_vrnt_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* vrnt_nm;



//- (BOOL)validateVrnt_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *brndCatFvnts;

- (NSMutableSet*)brndCatFvntsSet;





@end

@interface _FeatureVrnt (CoreDataGeneratedAccessors)

- (void)addBrndCatFvnts:(NSSet*)value_;
- (void)removeBrndCatFvnts:(NSSet*)value_;
- (void)addBrndCatFvntsObject:(BrndCatFvnt*)value_;
- (void)removeBrndCatFvntsObject:(BrndCatFvnt*)value_;

@end

@interface _FeatureVrnt (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveBult_txt_proc;
- (void)setPrimitiveBult_txt_proc:(NSString*)value;




- (NSString*)primitiveDesc_proc;
- (void)setPrimitiveDesc_proc:(NSString*)value;




- (NSNumber*)primitiveMkg_dig_aset_ownr_id;
- (void)setPrimitiveMkg_dig_aset_ownr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_dig_aset_ownr_idValue;
- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_fetr_id;
- (void)setPrimitiveMkg_fetr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_fetr_idValue;
- (void)setPrimitiveMkg_fetr_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_fetr_vrnt_id;
- (void)setPrimitiveMkg_fetr_vrnt_id:(NSNumber*)value;

- (int16_t)primitiveMkg_fetr_vrnt_idValue;
- (void)setPrimitiveMkg_fetr_vrnt_idValue:(int16_t)value_;




- (NSString*)primitiveVrnt_nm;
- (void)setPrimitiveVrnt_nm:(NSString*)value;





- (NSMutableSet*)primitiveBrndCatFvnts;
- (void)setPrimitiveBrndCatFvnts:(NSMutableSet*)value;


@end
