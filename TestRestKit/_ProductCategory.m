// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProductCategory.m instead.

#import "_ProductCategory.h"

const struct ProductCategoryAttributes ProductCategoryAttributes = {
	.areaName = @"areaName",
	.displayOrder = @"displayOrder",
	.is_actv = @"is_actv",
	.mkg_prod_area_id = @"mkg_prod_area_id",
	.name = @"name",
	.prnt_prod_cat_id = @"prnt_prod_cat_id",
	.productCategoryID = @"productCategoryID",
};

const struct ProductCategoryRelationships ProductCategoryRelationships = {
	.brand = @"brand",
	.children = @"children",
	.fkBrandInfo = @"fkBrandInfo",
	.parent = @"parent",
	.productArea = @"productArea",
};

const struct ProductCategoryFetchedProperties ProductCategoryFetchedProperties = {
};

@implementation ProductCategoryID
@end

@implementation _ProductCategory

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProductCategory" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProductCategory";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProductCategory" inManagedObjectContext:moc_];
}

- (ProductCategoryID*)objectID {
	return (ProductCategoryID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"displayOrderValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"displayOrder"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"is_actvValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"is_actv"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_area_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_area_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"prnt_prod_cat_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"prnt_prod_cat_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"productCategoryIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"productCategoryID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic areaName;






@dynamic displayOrder;



- (int16_t)displayOrderValue {
	NSNumber *result = [self displayOrder];
	return [result shortValue];
}

- (void)setDisplayOrderValue:(int16_t)value_ {
	[self setDisplayOrder:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveDisplayOrderValue {
	NSNumber *result = [self primitiveDisplayOrder];
	return [result shortValue];
}

- (void)setPrimitiveDisplayOrderValue:(int16_t)value_ {
	[self setPrimitiveDisplayOrder:[NSNumber numberWithShort:value_]];
}





@dynamic is_actv;



- (int16_t)is_actvValue {
	NSNumber *result = [self is_actv];
	return [result shortValue];
}

- (void)setIs_actvValue:(int16_t)value_ {
	[self setIs_actv:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveIs_actvValue {
	NSNumber *result = [self primitiveIs_actv];
	return [result shortValue];
}

- (void)setPrimitiveIs_actvValue:(int16_t)value_ {
	[self setPrimitiveIs_actv:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_prod_area_id;



- (int16_t)mkg_prod_area_idValue {
	NSNumber *result = [self mkg_prod_area_id];
	return [result shortValue];
}

- (void)setMkg_prod_area_idValue:(int16_t)value_ {
	[self setMkg_prod_area_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_area_idValue {
	NSNumber *result = [self primitiveMkg_prod_area_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_area_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_area_id:[NSNumber numberWithShort:value_]];
}





@dynamic name;






@dynamic prnt_prod_cat_id;



- (int16_t)prnt_prod_cat_idValue {
	NSNumber *result = [self prnt_prod_cat_id];
	return [result shortValue];
}

- (void)setPrnt_prod_cat_idValue:(int16_t)value_ {
	[self setPrnt_prod_cat_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePrnt_prod_cat_idValue {
	NSNumber *result = [self primitivePrnt_prod_cat_id];
	return [result shortValue];
}

- (void)setPrimitivePrnt_prod_cat_idValue:(int16_t)value_ {
	[self setPrimitivePrnt_prod_cat_id:[NSNumber numberWithShort:value_]];
}





@dynamic productCategoryID;



- (int16_t)productCategoryIDValue {
	NSNumber *result = [self productCategoryID];
	return [result shortValue];
}

- (void)setProductCategoryIDValue:(int16_t)value_ {
	[self setProductCategoryID:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveProductCategoryIDValue {
	NSNumber *result = [self primitiveProductCategoryID];
	return [result shortValue];
}

- (void)setPrimitiveProductCategoryIDValue:(int16_t)value_ {
	[self setPrimitiveProductCategoryID:[NSNumber numberWithShort:value_]];
}





@dynamic brand;

	

@dynamic children;

	
- (NSMutableSet*)childrenSet {
	[self willAccessValueForKey:@"children"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"children"];
  
	[self didAccessValueForKey:@"children"];
	return result;
}
	

@dynamic fkBrandInfo;

	
- (NSMutableSet*)fkBrandInfoSet {
	[self willAccessValueForKey:@"fkBrandInfo"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"fkBrandInfo"];
  
	[self didAccessValueForKey:@"fkBrandInfo"];
	return result;
}
	

@dynamic parent;

	

@dynamic productArea;

	






@end
