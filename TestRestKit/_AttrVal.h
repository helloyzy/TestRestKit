// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AttrVal.h instead.

#import <CoreData/CoreData.h>


extern const struct AttrValAttributes {
	__unsafe_unretained NSString *attr_val;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_attr_id;
	__unsafe_unretained NSString *mkg_attr_val_id;
	__unsafe_unretained NSString *val_is_neg;
} AttrValAttributes;

extern const struct AttrValRelationships {
	__unsafe_unretained NSString *prodAttrSets;
} AttrValRelationships;

extern const struct AttrValFetchedProperties {
} AttrValFetchedProperties;

@class ProdAttrSet;







@interface AttrValID : NSManagedObjectID {}
@end

@interface _AttrVal : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AttrValID*)objectID;





@property (nonatomic, strong) NSString* attr_val;



//- (BOOL)validateAttr_val:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* is_actv;



@property int16_t is_actvValue;
- (int16_t)is_actvValue;
- (void)setIs_actvValue:(int16_t)value_;

//- (BOOL)validateIs_actv:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_attr_id;



@property int16_t mkg_attr_idValue;
- (int16_t)mkg_attr_idValue;
- (void)setMkg_attr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_attr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_attr_val_id;



@property int16_t mkg_attr_val_idValue;
- (int16_t)mkg_attr_val_idValue;
- (void)setMkg_attr_val_idValue:(int16_t)value_;

//- (BOOL)validateMkg_attr_val_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* val_is_neg;



@property int16_t val_is_negValue;
- (int16_t)val_is_negValue;
- (void)setVal_is_negValue:(int16_t)value_;

//- (BOOL)validateVal_is_neg:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *prodAttrSets;

- (NSMutableSet*)prodAttrSetsSet;





@end

@interface _AttrVal (CoreDataGeneratedAccessors)

- (void)addProdAttrSets:(NSSet*)value_;
- (void)removeProdAttrSets:(NSSet*)value_;
- (void)addProdAttrSetsObject:(ProdAttrSet*)value_;
- (void)removeProdAttrSetsObject:(ProdAttrSet*)value_;

@end

@interface _AttrVal (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAttr_val;
- (void)setPrimitiveAttr_val:(NSString*)value;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_attr_id;
- (void)setPrimitiveMkg_attr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_attr_idValue;
- (void)setPrimitiveMkg_attr_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_attr_val_id;
- (void)setPrimitiveMkg_attr_val_id:(NSNumber*)value;

- (int16_t)primitiveMkg_attr_val_idValue;
- (void)setPrimitiveMkg_attr_val_idValue:(int16_t)value_;




- (NSNumber*)primitiveVal_is_neg;
- (void)setPrimitiveVal_is_neg:(NSNumber*)value;

- (int16_t)primitiveVal_is_negValue;
- (void)setPrimitiveVal_is_negValue:(int16_t)value_;





- (NSMutableSet*)primitiveProdAttrSets;
- (void)setPrimitiveProdAttrSets:(NSMutableSet*)value;


@end
