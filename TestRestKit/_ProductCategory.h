// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProductCategory.h instead.

#import <CoreData/CoreData.h>


extern const struct ProductCategoryAttributes {
	__unsafe_unretained NSString *areaName;
	__unsafe_unretained NSString *displayOrder;
	__unsafe_unretained NSString *is_actv;
	__unsafe_unretained NSString *mkg_prod_area_id;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *prnt_prod_cat_id;
	__unsafe_unretained NSString *productCategoryID;
} ProductCategoryAttributes;

extern const struct ProductCategoryRelationships {
	__unsafe_unretained NSString *brand;
	__unsafe_unretained NSString *children;
	__unsafe_unretained NSString *parent;
	__unsafe_unretained NSString *productArea;
} ProductCategoryRelationships;

extern const struct ProductCategoryFetchedProperties {
} ProductCategoryFetchedProperties;

@class Brand;
@class ProductCategory;
@class ProductCategory;
@class ProductArea;









@interface ProductCategoryID : NSManagedObjectID {}
@end

@interface _ProductCategory : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProductCategoryID*)objectID;





@property (nonatomic, strong) NSString* areaName;



//- (BOOL)validateAreaName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* displayOrder;



@property int16_t displayOrderValue;
- (int16_t)displayOrderValue;
- (void)setDisplayOrderValue:(int16_t)value_;

//- (BOOL)validateDisplayOrder:(id*)value_ error:(NSError**)error_;





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





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* prnt_prod_cat_id;



@property int16_t prnt_prod_cat_idValue;
- (int16_t)prnt_prod_cat_idValue;
- (void)setPrnt_prod_cat_idValue:(int16_t)value_;

//- (BOOL)validatePrnt_prod_cat_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* productCategoryID;



@property int16_t productCategoryIDValue;
- (int16_t)productCategoryIDValue;
- (void)setProductCategoryIDValue:(int16_t)value_;

//- (BOOL)validateProductCategoryID:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Brand *brand;

//- (BOOL)validateBrand:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet *children;

- (NSMutableSet*)childrenSet;




@property (nonatomic, strong) ProductCategory *parent;

//- (BOOL)validateParent:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) ProductArea *productArea;

//- (BOOL)validateProductArea:(id*)value_ error:(NSError**)error_;





@end

@interface _ProductCategory (CoreDataGeneratedAccessors)

- (void)addChildren:(NSSet*)value_;
- (void)removeChildren:(NSSet*)value_;
- (void)addChildrenObject:(ProductCategory*)value_;
- (void)removeChildrenObject:(ProductCategory*)value_;

@end

@interface _ProductCategory (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAreaName;
- (void)setPrimitiveAreaName:(NSString*)value;




- (NSNumber*)primitiveDisplayOrder;
- (void)setPrimitiveDisplayOrder:(NSNumber*)value;

- (int16_t)primitiveDisplayOrderValue;
- (void)setPrimitiveDisplayOrderValue:(int16_t)value_;




- (NSNumber*)primitiveIs_actv;
- (void)setPrimitiveIs_actv:(NSNumber*)value;

- (int16_t)primitiveIs_actvValue;
- (void)setPrimitiveIs_actvValue:(int16_t)value_;




- (NSNumber*)primitiveMkg_prod_area_id;
- (void)setPrimitiveMkg_prod_area_id:(NSNumber*)value;

- (int16_t)primitiveMkg_prod_area_idValue;
- (void)setPrimitiveMkg_prod_area_idValue:(int16_t)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitivePrnt_prod_cat_id;
- (void)setPrimitivePrnt_prod_cat_id:(NSNumber*)value;

- (int16_t)primitivePrnt_prod_cat_idValue;
- (void)setPrimitivePrnt_prod_cat_idValue:(int16_t)value_;




- (NSNumber*)primitiveProductCategoryID;
- (void)setPrimitiveProductCategoryID:(NSNumber*)value;

- (int16_t)primitiveProductCategoryIDValue;
- (void)setPrimitiveProductCategoryIDValue:(int16_t)value_;





- (Brand*)primitiveBrand;
- (void)setPrimitiveBrand:(Brand*)value;



- (NSMutableSet*)primitiveChildren;
- (void)setPrimitiveChildren:(NSMutableSet*)value;



- (ProductCategory*)primitiveParent;
- (void)setPrimitiveParent:(ProductCategory*)value;



- (ProductArea*)primitiveProductArea;
- (void)setPrimitiveProductArea:(ProductArea*)value;


@end
