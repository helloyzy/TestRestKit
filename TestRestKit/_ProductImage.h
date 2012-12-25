// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProductImage.h instead.

#import <CoreData/CoreData.h>


extern const struct ProductImageAttributes {
	__unsafe_unretained NSString *dig_aset_purp_nm;
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *file_lctn;
	__unsafe_unretained NSString *mkg_dig_aset_id;
	__unsafe_unretained NSString *mkg_dig_aset_ownr_id;
	__unsafe_unretained NSString *mkg_ownd_dig_aset_id;
} ProductImageAttributes;

extern const struct ProductImageRelationships {
} ProductImageRelationships;

extern const struct ProductImageFetchedProperties {
} ProductImageFetchedProperties;









@interface ProductImageID : NSManagedObjectID {}
@end

@interface _ProductImage : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProductImageID*)objectID;





@property (nonatomic, strong) NSString* dig_aset_purp_nm;



//- (BOOL)validateDig_aset_purp_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* dsp_ord;



@property int16_t dsp_ordValue;
- (int16_t)dsp_ordValue;
- (void)setDsp_ordValue:(int16_t)value_;

//- (BOOL)validateDsp_ord:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* file_lctn;



//- (BOOL)validateFile_lctn:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_dig_aset_id;



@property int32_t mkg_dig_aset_idValue;
- (int32_t)mkg_dig_aset_idValue;
- (void)setMkg_dig_aset_idValue:(int32_t)value_;

//- (BOOL)validateMkg_dig_aset_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_dig_aset_ownr_id;



@property int32_t mkg_dig_aset_ownr_idValue;
- (int32_t)mkg_dig_aset_ownr_idValue;
- (void)setMkg_dig_aset_ownr_idValue:(int32_t)value_;

//- (BOOL)validateMkg_dig_aset_ownr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_ownd_dig_aset_id;



@property int32_t mkg_ownd_dig_aset_idValue;
- (int32_t)mkg_ownd_dig_aset_idValue;
- (void)setMkg_ownd_dig_aset_idValue:(int32_t)value_;

//- (BOOL)validateMkg_ownd_dig_aset_id:(id*)value_ error:(NSError**)error_;






@end

@interface _ProductImage (CoreDataGeneratedAccessors)

@end

@interface _ProductImage (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveDig_aset_purp_nm;
- (void)setPrimitiveDig_aset_purp_nm:(NSString*)value;




- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSString*)primitiveFile_lctn;
- (void)setPrimitiveFile_lctn:(NSString*)value;




- (NSNumber*)primitiveMkg_dig_aset_id;
- (void)setPrimitiveMkg_dig_aset_id:(NSNumber*)value;

- (int32_t)primitiveMkg_dig_aset_idValue;
- (void)setPrimitiveMkg_dig_aset_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_dig_aset_ownr_id;
- (void)setPrimitiveMkg_dig_aset_ownr_id:(NSNumber*)value;

- (int32_t)primitiveMkg_dig_aset_ownr_idValue;
- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_ownd_dig_aset_id;
- (void)setPrimitiveMkg_ownd_dig_aset_id:(NSNumber*)value;

- (int32_t)primitiveMkg_ownd_dig_aset_idValue;
- (void)setPrimitiveMkg_ownd_dig_aset_idValue:(int32_t)value_;




@end
