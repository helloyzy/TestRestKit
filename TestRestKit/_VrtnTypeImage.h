// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to VrtnTypeImage.h instead.

#import <CoreData/CoreData.h>


extern const struct VrtnTypeImageAttributes {
	__unsafe_unretained NSString *file_lctn;
	__unsafe_unretained NSString *mkg_dig_aset_id;
	__unsafe_unretained NSString *mkg_dig_aset_ownr_id;
	__unsafe_unretained NSString *mkg_ownd_dig_aset_id;
	__unsafe_unretained NSString *mkg_vrtn_typ_cd_id;
} VrtnTypeImageAttributes;

extern const struct VrtnTypeImageRelationships {
} VrtnTypeImageRelationships;

extern const struct VrtnTypeImageFetchedProperties {
} VrtnTypeImageFetchedProperties;








@interface VrtnTypeImageID : NSManagedObjectID {}
@end

@interface _VrtnTypeImage : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (VrtnTypeImageID*)objectID;





@property (nonatomic, strong) NSString* file_lctn;



//- (BOOL)validateFile_lctn:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_dig_aset_id;



@property int16_t mkg_dig_aset_idValue;
- (int16_t)mkg_dig_aset_idValue;
- (void)setMkg_dig_aset_idValue:(int16_t)value_;

//- (BOOL)validateMkg_dig_aset_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_dig_aset_ownr_id;



@property int16_t mkg_dig_aset_ownr_idValue;
- (int16_t)mkg_dig_aset_ownr_idValue;
- (void)setMkg_dig_aset_ownr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_dig_aset_ownr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_ownd_dig_aset_id;



@property int16_t mkg_ownd_dig_aset_idValue;
- (int16_t)mkg_ownd_dig_aset_idValue;
- (void)setMkg_ownd_dig_aset_idValue:(int16_t)value_;

//- (BOOL)validateMkg_ownd_dig_aset_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_vrtn_typ_cd_id;



@property int16_t mkg_vrtn_typ_cd_idValue;
- (int16_t)mkg_vrtn_typ_cd_idValue;
- (void)setMkg_vrtn_typ_cd_idValue:(int16_t)value_;

//- (BOOL)validateMkg_vrtn_typ_cd_id:(id*)value_ error:(NSError**)error_;






@end

@interface _VrtnTypeImage (CoreDataGeneratedAccessors)

@end

@interface _VrtnTypeImage (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveFile_lctn;
- (void)setPrimitiveFile_lctn:(NSString*)value;




- (NSNumber*)primitiveMkg_dig_aset_id;
- (void)setPrimitiveMkg_dig_aset_id:(NSNumber*)value;

- (int16_t)primitiveMkg_dig_aset_idValue;
- (void)setPrimitiveMkg_dig_aset_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_dig_aset_ownr_id;
- (void)setPrimitiveMkg_dig_aset_ownr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_dig_aset_ownr_idValue;
- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_ownd_dig_aset_id;
- (void)setPrimitiveMkg_ownd_dig_aset_id:(NSNumber*)value;

- (int16_t)primitiveMkg_ownd_dig_aset_idValue;
- (void)setPrimitiveMkg_ownd_dig_aset_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_vrtn_typ_cd_id;
- (void)setPrimitiveMkg_vrtn_typ_cd_id:(NSNumber*)value;

- (int16_t)primitiveMkg_vrtn_typ_cd_idValue;
- (void)setPrimitiveMkg_vrtn_typ_cd_idValue:(int16_t)value_;




@end
