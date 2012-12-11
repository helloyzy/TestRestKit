// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrndCatFvnt.h instead.

#import <CoreData/CoreData.h>


extern const struct BrndCatFvntAttributes {
	__unsafe_unretained NSString *mkg_brnd_cat_fvnt_id;
	__unsafe_unretained NSString *mkg_brnd_id;
	__unsafe_unretained NSString *mkg_fetr_vrnt_id;
	__unsafe_unretained NSString *mkg_prod_cat_fetr_id;
	__unsafe_unretained NSString *rank;
} BrndCatFvntAttributes;

extern const struct BrndCatFvntRelationships {
	__unsafe_unretained NSString *fetrVrnts;
	__unsafe_unretained NSString *prodFetrVrnts;
} BrndCatFvntRelationships;

extern const struct BrndCatFvntFetchedProperties {
} BrndCatFvntFetchedProperties;

@class FeatureVrnt;
@class ProdFeatureVrnt;







@interface BrndCatFvntID : NSManagedObjectID {}
@end

@interface _BrndCatFvnt : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BrndCatFvntID*)objectID;





@property (nonatomic, strong) NSNumber* mkg_brnd_cat_fvnt_id;



@property int16_t mkg_brnd_cat_fvnt_idValue;
- (int16_t)mkg_brnd_cat_fvnt_idValue;
- (void)setMkg_brnd_cat_fvnt_idValue:(int16_t)value_;

//- (BOOL)validateMkg_brnd_cat_fvnt_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_id;



@property int16_t mkg_brnd_idValue;
- (int16_t)mkg_brnd_idValue;
- (void)setMkg_brnd_idValue:(int16_t)value_;

//- (BOOL)validateMkg_brnd_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_fetr_vrnt_id;



@property int16_t mkg_fetr_vrnt_idValue;
- (int16_t)mkg_fetr_vrnt_idValue;
- (void)setMkg_fetr_vrnt_idValue:(int16_t)value_;

//- (BOOL)validateMkg_fetr_vrnt_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_cat_fetr_id;



@property int16_t mkg_prod_cat_fetr_idValue;
- (int16_t)mkg_prod_cat_fetr_idValue;
- (void)setMkg_prod_cat_fetr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_cat_fetr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* rank;



@property int16_t rankValue;
- (int16_t)rankValue;
- (void)setRankValue:(int16_t)value_;

//- (BOOL)validateRank:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) FeatureVrnt *fetrVrnts;

//- (BOOL)validateFetrVrnts:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet *prodFetrVrnts;

- (NSMutableSet*)prodFetrVrntsSet;





@end

@interface _BrndCatFvnt (CoreDataGeneratedAccessors)

- (void)addProdFetrVrnts:(NSSet*)value_;
- (void)removeProdFetrVrnts:(NSSet*)value_;
- (void)addProdFetrVrntsObject:(ProdFeatureVrnt*)value_;
- (void)removeProdFetrVrntsObject:(ProdFeatureVrnt*)value_;

@end

@interface _BrndCatFvnt (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveMkg_brnd_cat_fvnt_id;
- (void)setPrimitiveMkg_brnd_cat_fvnt_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_cat_fvnt_idValue;
- (void)setPrimitiveMkg_brnd_cat_fvnt_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_brnd_id;
- (void)setPrimitiveMkg_brnd_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_idValue;
- (void)setPrimitiveMkg_brnd_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_fetr_vrnt_id;
- (void)setPrimitiveMkg_fetr_vrnt_id:(NSNumber*)value;

- (int16_t)primitiveMkg_fetr_vrnt_idValue;
- (void)setPrimitiveMkg_fetr_vrnt_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_cat_fetr_id;
- (void)setPrimitiveMkg_prod_cat_fetr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_cat_fetr_idValue;
- (void)setPrimitiveMkg_prod_cat_fetr_idValue:(int16_t)value_;




- (NSNumber*)primitiveRank;
- (void)setPrimitiveRank:(NSNumber*)value;

- (int16_t)primitiveRankValue;
- (void)setPrimitiveRankValue:(int16_t)value_;





- (FeatureVrnt*)primitiveFetrVrnts;
- (void)setPrimitiveFetrVrnts:(FeatureVrnt*)value;



- (NSMutableSet*)primitiveProdFetrVrnts;
- (void)setPrimitiveProdFetrVrnts:(NSMutableSet*)value;


@end
