// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to InstallType.h instead.

#import <CoreData/CoreData.h>


extern const struct InstallTypeAttributes {
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *inst_typ_desc;
	__unsafe_unretained NSString *inst_typ_nm;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_inst_typ_id;
} InstallTypeAttributes;

extern const struct InstallTypeRelationships {
	__unsafe_unretained NSString *products;
} InstallTypeRelationships;

extern const struct InstallTypeFetchedProperties {
} InstallTypeFetchedProperties;

@class Product;







@interface InstallTypeID : NSManagedObjectID {}
@end

@interface _InstallType : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (InstallTypeID*)objectID;





@property (nonatomic, strong) NSNumber* dsp_ord;



@property int16_t dsp_ordValue;
- (int16_t)dsp_ordValue;
- (void)setDsp_ordValue:(int16_t)value_;

//- (BOOL)validateDsp_ord:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* inst_typ_desc;



//- (BOOL)validateInst_typ_desc:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* inst_typ_nm;



//- (BOOL)validateInst_typ_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* is_actv;



@property int16_t is_actvValue;
- (int16_t)is_actvValue;
- (void)setIs_actvValue:(int16_t)value_;

//- (BOOL)validateIs_actv:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_inst_typ_id;



@property int32_t mkg_inst_typ_idValue;
- (int32_t)mkg_inst_typ_idValue;
- (void)setMkg_inst_typ_idValue:(int32_t)value_;

//- (BOOL)validateMkg_inst_typ_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *products;

- (NSMutableSet*)productsSet;





@end

@interface _InstallType (CoreDataGeneratedAccessors)

- (void)addProducts:(NSSet*)value_;
- (void)removeProducts:(NSSet*)value_;
- (void)addProductsObject:(Product*)value_;
- (void)removeProductsObject:(Product*)value_;

@end

@interface _InstallType (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSString*)primitiveInst_typ_desc;
- (void)setPrimitiveInst_typ_desc:(NSString*)value;




- (NSString*)primitiveInst_typ_nm;
- (void)setPrimitiveInst_typ_nm:(NSString*)value;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_inst_typ_id;
- (void)setPrimitiveMkg_inst_typ_id:(NSNumber*)value;

- (int32_t)primitiveMkg_inst_typ_idValue;
- (void)setPrimitiveMkg_inst_typ_idValue:(int32_t)value_;





- (NSMutableSet*)primitiveProducts;
- (void)setPrimitiveProducts:(NSMutableSet*)value;


@end
