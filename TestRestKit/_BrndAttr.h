// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrndAttr.h instead.

#import <CoreData/CoreData.h>


extern const struct BrndAttrAttributes {
	__unsafe_unretained NSString *dspl_nm;
	__unsafe_unretained NSString *mkg_attr_id;
	__unsafe_unretained NSString *mkg_brnd_attr_id;
	__unsafe_unretained NSString *mkg_brnd_id;
} BrndAttrAttributes;

extern const struct BrndAttrRelationships {
	__unsafe_unretained NSString *prodAttrSets;
} BrndAttrRelationships;

extern const struct BrndAttrFetchedProperties {
} BrndAttrFetchedProperties;

@class ProdAttrSet;






@interface BrndAttrID : NSManagedObjectID {}
@end

@interface _BrndAttr : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BrndAttrID*)objectID;





@property (nonatomic, strong) NSString* dspl_nm;



//- (BOOL)validateDspl_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_attr_id;



@property int32_t mkg_attr_idValue;
- (int32_t)mkg_attr_idValue;
- (void)setMkg_attr_idValue:(int32_t)value_;

//- (BOOL)validateMkg_attr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_attr_id;



@property int32_t mkg_brnd_attr_idValue;
- (int32_t)mkg_brnd_attr_idValue;
- (void)setMkg_brnd_attr_idValue:(int32_t)value_;

//- (BOOL)validateMkg_brnd_attr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_id;



@property int32_t mkg_brnd_idValue;
- (int32_t)mkg_brnd_idValue;
- (void)setMkg_brnd_idValue:(int32_t)value_;

//- (BOOL)validateMkg_brnd_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *prodAttrSets;

- (NSMutableSet*)prodAttrSetsSet;





@end

@interface _BrndAttr (CoreDataGeneratedAccessors)

- (void)addProdAttrSets:(NSSet*)value_;
- (void)removeProdAttrSets:(NSSet*)value_;
- (void)addProdAttrSetsObject:(ProdAttrSet*)value_;
- (void)removeProdAttrSetsObject:(ProdAttrSet*)value_;

@end

@interface _BrndAttr (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveDspl_nm;
- (void)setPrimitiveDspl_nm:(NSString*)value;




- (NSNumber*)primitiveMkg_attr_id;
- (void)setPrimitiveMkg_attr_id:(NSNumber*)value;

- (int32_t)primitiveMkg_attr_idValue;
- (void)setPrimitiveMkg_attr_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_brnd_attr_id;
- (void)setPrimitiveMkg_brnd_attr_id:(NSNumber*)value;

- (int32_t)primitiveMkg_brnd_attr_idValue;
- (void)setPrimitiveMkg_brnd_attr_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_brnd_id;
- (void)setPrimitiveMkg_brnd_id:(NSNumber*)value;

- (int32_t)primitiveMkg_brnd_idValue;
- (void)setPrimitiveMkg_brnd_idValue:(int32_t)value_;





- (NSMutableSet*)primitiveProdAttrSets;
- (void)setPrimitiveProdAttrSets:(NSMutableSet*)value;


@end
