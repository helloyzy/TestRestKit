// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProductCategory.m instead.

#import "_ProductCategory.h"

const struct ProductCategoryAttributes ProductCategoryAttributes = {
	.dsp_ord = @"dsp_ord",
	.is_actv = @"is_actv",
	.mkg_prod_area_id = @"mkg_prod_area_id",
	.mkg_prod_cat_id = @"mkg_prod_cat_id",
	.prnt_prod_cat_id = @"prnt_prod_cat_id",
	.prod_cat_nm = @"prod_cat_nm",
};

const struct ProductCategoryRelationships ProductCategoryRelationships = {
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
	
	if ([key isEqualToString:@"dsp_ordValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"dsp_ord"];
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
	if ([key isEqualToString:@"mkg_prod_cat_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_cat_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"prnt_prod_cat_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"prnt_prod_cat_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic dsp_ord;



- (int16_t)dsp_ordValue {
	NSNumber *result = [self dsp_ord];
	return [result shortValue];
}

- (void)setDsp_ordValue:(int16_t)value_ {
	[self setDsp_ord:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveDsp_ordValue {
	NSNumber *result = [self primitiveDsp_ord];
	return [result shortValue];
}

- (void)setPrimitiveDsp_ordValue:(int16_t)value_ {
	[self setPrimitiveDsp_ord:[NSNumber numberWithShort:value_]];
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





@dynamic mkg_prod_cat_id;



- (int16_t)mkg_prod_cat_idValue {
	NSNumber *result = [self mkg_prod_cat_id];
	return [result shortValue];
}

- (void)setMkg_prod_cat_idValue:(int16_t)value_ {
	[self setMkg_prod_cat_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_cat_idValue {
	NSNumber *result = [self primitiveMkg_prod_cat_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_cat_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_cat_id:[NSNumber numberWithShort:value_]];
}





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





@dynamic prod_cat_nm;






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
