// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProductArea.h instead.

#import <CoreData/CoreData.h>


extern const struct ProductAreaAttributes {
	__unsafe_unretained NSString *dsp_ord;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_prod_area_id;
	__unsafe_unretained NSString *prod_area_desc;
	__unsafe_unretained NSString *prod_area_nm;
} ProductAreaAttributes;

extern const struct ProductAreaRelationships {
	__unsafe_unretained NSString *prodCat;
} ProductAreaRelationships;

extern const struct ProductAreaFetchedProperties {
} ProductAreaFetchedProperties;

@class ProductCategory;







@interface ProductAreaID : NSManagedObjectID {}
@end

@interface _ProductArea : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProductAreaID*)objectID;





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





@property (nonatomic, strong) NSNumber* mkg_prod_area_id;



@property int16_t mkg_prod_area_idValue;
- (int16_t)mkg_prod_area_idValue;
- (void)setMkg_prod_area_idValue:(int16_t)value_;

//- (BOOL)validateMkg_prod_area_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* prod_area_desc;



//- (BOOL)validateProd_area_desc:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* prod_area_nm;



//- (BOOL)validateProd_area_nm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *prodCat;

- (NSMutableSet*)prodCatSet;





@end

@interface _ProductArea (CoreDataGeneratedAccessors)

- (void)addProdCat:(NSSet*)value_;
- (void)removeProdCat:(NSSet*)value_;
- (void)addProdCatObject:(ProductCategory*)value_;
- (void)removeProdCatObject:(ProductCategory*)value_;

@end

@interface _ProductArea (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDsp_ord;
- (void)setPrimitiveDsp_ord:(NSNumber*)value;

- (int16_t)primitiveDsp_ordValue;
- (void)setPrimitiveDsp_ordValue:(int16_t)value_;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_area_id;
- (void)setPrimitiveMkg_prod_area_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_area_idValue;
- (void)setPrimitiveMkg_prod_area_idValue:(int16_t)value_;




- (NSString*)primitiveProd_area_desc;
- (void)setPrimitiveProd_area_desc:(NSString*)value;




- (NSString*)primitiveProd_area_nm;
- (void)setPrimitiveProd_area_nm:(NSString*)value;





- (NSMutableSet*)primitiveProdCat;
- (void)setPrimitiveProdCat:(NSMutableSet*)value;


@end
