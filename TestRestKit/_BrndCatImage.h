// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrndCatImage.h instead.

#import <CoreData/CoreData.h>


extern const struct BrndCatImageAttributes {
	__unsafe_unretained NSString *file_lctn;
	__unsafe_unretained NSString *mkg_brnd_prod_cat_id;
	__unsafe_unretained NSString *mkg_dig_aset_ownr_id;
} BrndCatImageAttributes;

extern const struct BrndCatImageRelationships {
} BrndCatImageRelationships;

extern const struct BrndCatImageFetchedProperties {
} BrndCatImageFetchedProperties;






@interface BrndCatImageID : NSManagedObjectID {}
@end

@interface _BrndCatImage : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BrndCatImageID*)objectID;





@property (nonatomic, strong) NSString* file_lctn;



//- (BOOL)validateFile_lctn:(id*)value_ error:(NSError**)error_;





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






@end

@interface _BrndCatImage (CoreDataGeneratedAccessors)

@end

@interface _BrndCatImage (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveFile_lctn;
- (void)setPrimitiveFile_lctn:(NSString*)value;




- (NSNumber*)primitiveMkg_brnd_prod_cat_id;
- (void)setPrimitiveMkg_brnd_prod_cat_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_prod_cat_idValue;
- (void)setPrimitiveMkg_brnd_prod_cat_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_dig_aset_ownr_id;
- (void)setPrimitiveMkg_dig_aset_ownr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_dig_aset_ownr_idValue;
- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int16_t)value_;




@end
