// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdPrice.h instead.

#import <CoreData/CoreData.h>


extern const struct ProdPriceAttributes {
	__unsafe_unretained NSString *mkg_prod_id;
	__unsafe_unretained NSString *mkg_prod_prce_crnt_id;
	__unsafe_unretained NSString *mkg_prod_prce_typ_id;
	__unsafe_unretained NSString *prod_prce_amt;
} ProdPriceAttributes;

extern const struct ProdPriceRelationships {
	__unsafe_unretained NSString *product;
} ProdPriceRelationships;

extern const struct ProdPriceFetchedProperties {
} ProdPriceFetchedProperties;

@class Product;






@interface ProdPriceID : NSManagedObjectID {}
@end

@interface _ProdPrice : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ProdPriceID*)objectID;





@property (nonatomic, strong) NSNumber* mkg_prod_id;



@property int32_t mkg_prod_idValue;
- (int32_t)mkg_prod_idValue;
- (void)setMkg_prod_idValue:(int32_t)value_;

//- (BOOL)validateMkg_prod_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_prce_crnt_id;



@property int32_t mkg_prod_prce_crnt_idValue;
- (int32_t)mkg_prod_prce_crnt_idValue;
- (void)setMkg_prod_prce_crnt_idValue:(int32_t)value_;

//- (BOOL)validateMkg_prod_prce_crnt_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* mkg_prod_prce_typ_id;



@property int32_t mkg_prod_prce_typ_idValue;
- (int32_t)mkg_prod_prce_typ_idValue;
- (void)setMkg_prod_prce_typ_idValue:(int32_t)value_;

//- (BOOL)validateMkg_prod_prce_typ_id:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* prod_prce_amt;



@property double prod_prce_amtValue;
- (double)prod_prce_amtValue;
- (void)setProd_prce_amtValue:(double)value_;

//- (BOOL)validateProd_prce_amt:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Product *product;

//- (BOOL)validateProduct:(id*)value_ error:(NSError**)error_;





@end

@interface _ProdPrice (CoreDataGeneratedAccessors)

@end

@interface _ProdPrice (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveMkg_prod_id;
- (void)setPrimitiveMkg_prod_id:(NSNumber*)value;

- (int32_t)primitiveMkg_prod_idValue;
- (void)setPrimitiveMkg_prod_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_prod_prce_crnt_id;
- (void)setPrimitiveMkg_prod_prce_crnt_id:(NSNumber*)value;

- (int32_t)primitiveMkg_prod_prce_crnt_idValue;
- (void)setPrimitiveMkg_prod_prce_crnt_idValue:(int32_t)value_;




- (NSNumber*)primitiveMkg_prod_prce_typ_id;
- (void)setPrimitiveMkg_prod_prce_typ_id:(NSNumber*)value;

- (int32_t)primitiveMkg_prod_prce_typ_idValue;
- (void)setPrimitiveMkg_prod_prce_typ_idValue:(int32_t)value_;




- (NSNumber*)primitiveProd_prce_amt;
- (void)setPrimitiveProd_prce_amt:(NSNumber*)value;

- (double)primitiveProd_prce_amtValue;
- (void)setPrimitiveProd_prce_amtValue:(double)value_;





- (Product*)primitiveProduct;
- (void)setPrimitiveProduct:(Product*)value;


@end
