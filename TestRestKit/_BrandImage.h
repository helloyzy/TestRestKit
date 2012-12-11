// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrandImage.h instead.

#import <CoreData/CoreData.h>


extern const struct BrandImageAttributes {
	__unsafe_unretained NSString *dig_aset_purp_id;
	__unsafe_unretained NSString *file_lctn;
	__unsafe_unretained NSString *mkg_brnd_id;
	__unsafe_unretained NSString *mkg_dig_aset_ownr_id;
} BrandImageAttributes;

extern const struct BrandImageRelationships {
} BrandImageRelationships;

extern const struct BrandImageFetchedProperties {
} BrandImageFetchedProperties;







@interface BrandImageID : NSManagedObjectID {}
@end

@interface _BrandImage : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BrandImageID*)objectID;





@property (nonatomic, strong) NSNumber* dig_aset_purp_id;



@property int16_t dig_aset_purp_idValue;
- (int16_t)dig_aset_purp_idValue;
- (void)setDig_aset_purp_idValue:(int16_t)value_;

//- (BOOL)validateDig_aset_purp_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* file_lctn;



//- (BOOL)validateFile_lctn:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_id;



@property int16_t mkg_brnd_idValue;
- (int16_t)mkg_brnd_idValue;
- (void)setMkg_brnd_idValue:(int16_t)value_;

//- (BOOL)validateMkg_brnd_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_dig_aset_ownr_id;



@property int16_t mkg_dig_aset_ownr_idValue;
- (int16_t)mkg_dig_aset_ownr_idValue;
- (void)setMkg_dig_aset_ownr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_dig_aset_ownr_id:(id*)value_ error:(NSError**)error_;






@end

@interface _BrandImage (CoreDataGeneratedAccessors)

@end

@interface _BrandImage (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDig_aset_purp_id;
- (void)setPrimitiveDig_aset_purp_id:(NSNumber*)value;

- (int16_t)primitiveDig_aset_purp_idValue;
- (void)setPrimitiveDig_aset_purp_idValue:(int16_t)value_;




- (NSString*)primitiveFile_lctn;
- (void)setPrimitiveFile_lctn:(NSString*)value;




- (NSNumber*)primitiveMkg_brnd_id;
- (void)setPrimitiveMkg_brnd_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_idValue;
- (void)setPrimitiveMkg_brnd_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_dig_aset_ownr_id;
- (void)setPrimitiveMkg_dig_aset_ownr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_dig_aset_ownr_idValue;
- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int16_t)value_;




@end
