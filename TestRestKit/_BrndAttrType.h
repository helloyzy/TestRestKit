// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrndAttrType.h instead.

#import <CoreData/CoreData.h>


extern const struct BrndAttrTypeAttributes {
	__unsafe_unretained NSString *dspl_nm;
	__unsafe_unretained NSString *mkg_attr_typ_id;
	__unsafe_unretained NSString *mkg_brnd_attr_typ_id;
	__unsafe_unretained NSString *mkg_brnd_id;
} BrndAttrTypeAttributes;

extern const struct BrndAttrTypeRelationships {
	__unsafe_unretained NSString *prodAttrSets;
} BrndAttrTypeRelationships;

extern const struct BrndAttrTypeFetchedProperties {
} BrndAttrTypeFetchedProperties;

@class ProdAttrSet;






@interface BrndAttrTypeID : NSManagedObjectID {}
@end

@interface _BrndAttrType : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BrndAttrTypeID*)objectID;





@property (nonatomic, strong) NSString* dspl_nm;



//- (BOOL)validateDspl_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_attr_typ_id;



@property int32_t mkg_attr_typ_idValue;
- (int32_t)mkg_attr_typ_idValue;
- (void)setMkg_attr_typ_idValue:(int32_t)value_;

//- (BOOL)validateMkg_attr_typ_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_attr_typ_id;



@property int32_t mkg_brnd_attr_typ_idValue;
- (int32_t)mkg_brnd_attr_typ_idValue;
- (void)setMkg_brnd_attr_typ_idValue:(int32_t)value_;

//- (BOOL)validateMkg_brnd_attr_typ_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_id;



@property int32_t mkg_brnd_idValue;
- (int32_t)mkg_brnd_idValue;
- (void)setMkg_brnd_idValue:(int32_t)value_;

//- (BOOL)validateMkg_brnd_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *prodAttrSets;

- (NSMutableSet*)prodAttrSetsSet;





@end

@interface _BrndAttrType (CoreDataGeneratedAccessors)

- (void)addProdAttrSets:(NSSet*)value_;
- (void)removeProdAttrSets:(NSSet*)value_;
- (void)addProdAttrSetsObject:(ProdAttrSet*)value_;
- (void)removeProdAttrSetsObject:(ProdAttrSet*)value_;

@end

@interface _BrndAttrType (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveDspl_nm;
- (void)setPrimitiveDspl_nm:(NSString*)value;




- (NSNumber*)primitiveMkg_attr_typ_id;
- (void)setPrimitiveMkg_attr_typ_id:(NSNumber*)value;

- (int32_t)primitiveMkg_attr_typ_idValue;
- (void)setPrimitiveMkg_attr_typ_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_brnd_attr_typ_id;
- (void)setPrimitiveMkg_brnd_attr_typ_id:(NSNumber*)value;

- (int32_t)primitiveMkg_brnd_attr_typ_idValue;
- (void)setPrimitiveMkg_brnd_attr_typ_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_brnd_id;
- (void)setPrimitiveMkg_brnd_id:(NSNumber*)value;

- (int32_t)primitiveMkg_brnd_idValue;
- (void)setPrimitiveMkg_brnd_idValue:(int32_t)value_;





- (NSMutableSet*)primitiveProdAttrSets;
- (void)setPrimitiveProdAttrSets:(NSMutableSet*)value;


@end
