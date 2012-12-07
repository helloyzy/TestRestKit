// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ConsumerVisStatus.h instead.

#import <CoreData/CoreData.h>


extern const struct ConsumerVisStatusAttributes {
	__unsafe_unretained NSString *cons_vis_stts_desc;
	__unsafe_unretained NSString *cons_vis_stts_nm;
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *is_protected;
	__unsafe_unretained NSString *mkg_cons_vis_stts_id;
} ConsumerVisStatusAttributes;

extern const struct ConsumerVisStatusRelationships {
	__unsafe_unretained NSString *prodVrnts;
} ConsumerVisStatusRelationships;

extern const struct ConsumerVisStatusFetchedProperties {
} ConsumerVisStatusFetchedProperties;

@class ProdVrnt;








@interface ConsumerVisStatusID : NSManagedObjectID {}
@end

@interface _ConsumerVisStatus : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ConsumerVisStatusID*)objectID;





@property (nonatomic, strong) NSString* cons_vis_stts_desc;



//- (BOOL)validateCons_vis_stts_desc:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* cons_vis_stts_nm;



//- (BOOL)validateCons_vis_stts_nm:(id*)value_ error:(NSError**)error_;





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





@property (nonatomic, strong) NSNumber* is_protected;



@property int16_t is_protectedValue;
- (int16_t)is_protectedValue;
- (void)setIs_protectedValue:(int16_t)value_;

//- (BOOL)validateIs_protected:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_cons_vis_stts_id;



@property int16_t mkg_cons_vis_stts_idValue;
- (int16_t)mkg_cons_vis_stts_idValue;
- (void)setMkg_cons_vis_stts_idValue:(int16_t)value_;

//- (BOOL)validateMkg_cons_vis_stts_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *prodVrnts;

- (NSMutableSet*)prodVrntsSet;





@end

@interface _ConsumerVisStatus (CoreDataGeneratedAccessors)

- (void)addProdVrnts:(NSSet*)value_;
- (void)removeProdVrnts:(NSSet*)value_;
- (void)addProdVrntsObject:(ProdVrnt*)value_;
- (void)removeProdVrntsObject:(ProdVrnt*)value_;

@end

@interface _ConsumerVisStatus (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveCons_vis_stts_desc;
- (void)setPrimitiveCons_vis_stts_desc:(NSString*)value;




- (NSString*)primitiveCons_vis_stts_nm;
- (void)setPrimitiveCons_vis_stts_nm:(NSString*)value;




- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveIs_protected;
- (void)setPrimitiveIs_protected:(NSNumber*)value;

- (int16_t)primitiveIs_protectedValue;
- (void)setPrimitiveIs_protectedValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_cons_vis_stts_id;
- (void)setPrimitiveMkg_cons_vis_stts_id:(NSNumber*)value;

- (int16_t)primitiveMkg_cons_vis_stts_idValue;
- (void)setPrimitiveMkg_cons_vis_stts_idValue:(int16_t)value_;





- (NSMutableSet*)primitiveProdVrnts;
- (void)setPrimitiveProdVrnts:(NSMutableSet*)value;


@end
