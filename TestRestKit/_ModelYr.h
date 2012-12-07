// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ModelYr.h instead.

#import <CoreData/CoreData.h>


extern const struct ModelYrAttributes {
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *effv_end_dt;
	__unsafe_unretained NSString *effv_strt_dt;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_modl_yr_id;
	__unsafe_unretained NSString *modl_yr_note;
	__unsafe_unretained NSString *modl_yr_val;
} ModelYrAttributes;

extern const struct ModelYrRelationships {
	__unsafe_unretained NSString *brandModelYrs;
} ModelYrRelationships;

extern const struct ModelYrFetchedProperties {
} ModelYrFetchedProperties;

@class BrandModelYr;









@interface ModelYrID : NSManagedObjectID {}
@end

@interface _ModelYr : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ModelYrID*)objectID;





@property (nonatomic, strong) NSNumber* dsp_ord;



@property int16_t dsp_ordValue;
- (int16_t)dsp_ordValue;
- (void)setDsp_ordValue:(int16_t)value_;

//- (BOOL)validateDsp_ord:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* effv_end_dt;



//- (BOOL)validateEffv_end_dt:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* effv_strt_dt;



//- (BOOL)validateEffv_strt_dt:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* is_actv;



@property int16_t is_actvValue;
- (int16_t)is_actvValue;
- (void)setIs_actvValue:(int16_t)value_;

//- (BOOL)validateIs_actv:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_modl_yr_id;



@property int16_t mkg_modl_yr_idValue;
- (int16_t)mkg_modl_yr_idValue;
- (void)setMkg_modl_yr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_modl_yr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* modl_yr_note;



//- (BOOL)validateModl_yr_note:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* modl_yr_val;



//- (BOOL)validateModl_yr_val:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *brandModelYrs;

- (NSMutableSet*)brandModelYrsSet;





@end

@interface _ModelYr (CoreDataGeneratedAccessors)

- (void)addBrandModelYrs:(NSSet*)value_;
- (void)removeBrandModelYrs:(NSSet*)value_;
- (void)addBrandModelYrsObject:(BrandModelYr*)value_;
- (void)removeBrandModelYrsObject:(BrandModelYr*)value_;

@end

@interface _ModelYr (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSString*)primitiveEffv_end_dt;
- (void)setPrimitiveEffv_end_dt:(NSString*)value;




- (NSString*)primitiveEffv_strt_dt;
- (void)setPrimitiveEffv_strt_dt:(NSString*)value;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_modl_yr_id;
- (void)setPrimitiveMkg_modl_yr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_modl_yr_idValue;
- (void)setPrimitiveMkg_modl_yr_idValue:(int16_t)value_;




- (NSString*)primitiveModl_yr_note;
- (void)setPrimitiveModl_yr_note:(NSString*)value;




- (NSString*)primitiveModl_yr_val;
- (void)setPrimitiveModl_yr_val:(NSString*)value;





- (NSMutableSet*)primitiveBrandModelYrs;
- (void)setPrimitiveBrandModelYrs:(NSMutableSet*)value;


@end
