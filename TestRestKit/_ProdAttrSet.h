// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdAttrSet.h instead.

#import <CoreData/CoreData.h>


extern const struct ProdAttrSetAttributes {
	__unsafe_unretained NSString *attr_rank;
	__unsafe_unretained NSString *attr_typ_rank;
	__unsafe_unretained NSString *mkg_attr_val_id;
	__unsafe_unretained NSString *mkg_brnd_attr_id;
	__unsafe_unretained NSString *mkg_brnd_attr_typ_id;
	__unsafe_unretained NSString *mkg_prod_attr_set_id;
	__unsafe_unretained NSString *mkg_prod_id;
} ProdAttrSetAttributes;

extern const struct ProdAttrSetRelationships {
	__unsafe_unretained NSString *attrVal;
	__unsafe_unretained NSString *brndAttr;
	__unsafe_unretained NSString *brndAttrType;
	__unsafe_unretained NSString *product;
} ProdAttrSetRelationships;

extern const struct ProdAttrSetFetchedProperties {
} ProdAttrSetFetchedProperties;

@class AttrVal;
@class BrndAttr;
@class BrndAttrType;
@class Product;









@interface ProdAttrSetID : NSManagedObjectID {}
@end

@interface _ProdAttrSet : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProdAttrSetID*)objectID;





@property (nonatomic, strong) NSNumber* attr_rank;



@property int16_t attr_rankValue;
- (int16_t)attr_rankValue;
- (void)setAttr_rankValue:(int16_t)value_;

//- (BOOL)validateAttr_rank:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* attr_typ_rank;



@property int16_t attr_typ_rankValue;
- (int16_t)attr_typ_rankValue;
- (void)setAttr_typ_rankValue:(int16_t)value_;

//- (BOOL)validateAttr_typ_rank:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_attr_val_id;



@property int16_t mkg_attr_val_idValue;
- (int16_t)mkg_attr_val_idValue;
- (void)setMkg_attr_val_idValue:(int16_t)value_;

//- (BOOL)validateMkg_attr_val_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_attr_id;



@property int16_t mkg_brnd_attr_idValue;
- (int16_t)mkg_brnd_attr_idValue;
- (void)setMkg_brnd_attr_idValue:(int16_t)value_;

//- (BOOL)validateMkg_brnd_attr_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_brnd_attr_typ_id;



@property int16_t mkg_brnd_attr_typ_idValue;
- (int16_t)mkg_brnd_attr_typ_idValue;
- (void)setMkg_brnd_attr_typ_idValue:(int16_t)value_;

//- (BOOL)validateMkg_brnd_attr_typ_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_attr_set_id;



@property int16_t mkg_prod_attr_set_idValue;
- (int16_t)mkg_prod_attr_set_idValue;
- (void)setMkg_prod_attr_set_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_attr_set_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_id;



@property int16_t mkg_prod_idValue;
- (int16_t)mkg_prod_idValue;
- (void)setMkg_prod_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) AttrVal *attrVal;

//- (BOOL)validateAttrVal:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) BrndAttr *brndAttr;

//- (BOOL)validateBrndAttr:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) BrndAttrType *brndAttrType;

//- (BOOL)validateBrndAttrType:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) Product *product;

//- (BOOL)validateProduct:(id*)value_ error:(NSError**)error_;





@end

@interface _ProdAttrSet (CoreDataGeneratedAccessors)

@end

@interface _ProdAttrSet (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveAttr_rank;
- (void)setPrimitiveAttr_rank:(NSNumber*)value;

- (int16_t)primitiveAttr_rankValue;
- (void)setPrimitiveAttr_rankValue:(int16_t)value_;




- (NSNumber*)primitiveAttr_typ_rank;
- (void)setPrimitiveAttr_typ_rank:(NSNumber*)value;

- (int16_t)primitiveAttr_typ_rankValue;
- (void)setPrimitiveAttr_typ_rankValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_attr_val_id;
- (void)setPrimitiveMkg_attr_val_id:(NSNumber*)value;

- (int16_t)primitiveMkg_attr_val_idValue;
- (void)setPrimitiveMkg_attr_val_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_brnd_attr_id;
- (void)setPrimitiveMkg_brnd_attr_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_attr_idValue;
- (void)setPrimitiveMkg_brnd_attr_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_brnd_attr_typ_id;
- (void)setPrimitiveMkg_brnd_attr_typ_id:(NSNumber*)value;

- (int16_t)primitiveMkg_brnd_attr_typ_idValue;
- (void)setPrimitiveMkg_brnd_attr_typ_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_attr_set_id;
- (void)setPrimitiveMkg_prod_attr_set_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_attr_set_idValue;
- (void)setPrimitiveMkg_prod_attr_set_idValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_id;
- (void)setPrimitiveMkg_prod_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_idValue;
- (void)setPrimitiveMkg_prod_idValue:(int16_t)value_;





- (AttrVal*)primitiveAttrVal;
- (void)setPrimitiveAttrVal:(AttrVal*)value;



- (BrndAttr*)primitiveBrndAttr;
- (void)setPrimitiveBrndAttr:(BrndAttr*)value;



- (BrndAttrType*)primitiveBrndAttrType;
- (void)setPrimitiveBrndAttrType:(BrndAttrType*)value;



- (Product*)primitiveProduct;
- (void)setPrimitiveProduct:(Product*)value;


@end
