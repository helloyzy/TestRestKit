// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdFeatureVrnt.m instead.

#import "_ProdFeatureVrnt.h"

const struct ProdFeatureVrntAttributes ProdFeatureVrntAttributes = {
	.is_difn = @"is_difn",
	.mkg_brnd_cat_fvnt_id = @"mkg_brnd_cat_fvnt_id",
	.mkg_prod_cat_fetr_id = @"mkg_prod_cat_fetr_id",
	.mkg_prod_fetr_vrnt_id = @"mkg_prod_fetr_vrnt_id",
	.mkg_prod_id = @"mkg_prod_id",
};

const struct ProdFeatureVrntRelationships ProdFeatureVrntRelationships = {
	.brandCatFvnt = @"brandCatFvnt",
	.product = @"product",
};

const struct ProdFeatureVrntFetchedProperties ProdFeatureVrntFetchedProperties = {
};

@implementation ProdFeatureVrntID
@end

@implementation _ProdFeatureVrnt

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProdFeatureVrnt" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProdFeatureVrnt";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProdFeatureVrnt" inManagedObjectContext:moc_];
}

- (ProdFeatureVrntID*)objectID {
	return (ProdFeatureVrntID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"is_difnValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"is_difn"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_cat_fvnt_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_cat_fvnt_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_cat_fetr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_cat_fetr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_fetr_vrnt_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_fetr_vrnt_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic is_difn;



- (int16_t)is_difnValue {
	NSNumber *result = [self is_difn];
	return [result shortValue];
}

- (void)setIs_difnValue:(int16_t)value_ {
	[self setIs_difn:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveIs_difnValue {
	NSNumber *result = [self primitiveIs_difn];
	return [result shortValue];
}

- (void)setPrimitiveIs_difnValue:(int16_t)value_ {
	[self setPrimitiveIs_difn:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_brnd_cat_fvnt_id;



- (int32_t)mkg_brnd_cat_fvnt_idValue {
	NSNumber *result = [self mkg_brnd_cat_fvnt_id];
	return [result intValue];
}

- (void)setMkg_brnd_cat_fvnt_idValue:(int32_t)value_ {
	[self setMkg_brnd_cat_fvnt_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_brnd_cat_fvnt_idValue {
	NSNumber *result = [self primitiveMkg_brnd_cat_fvnt_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_brnd_cat_fvnt_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_brnd_cat_fvnt_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_prod_cat_fetr_id;



- (int32_t)mkg_prod_cat_fetr_idValue {
	NSNumber *result = [self mkg_prod_cat_fetr_id];
	return [result intValue];
}

- (void)setMkg_prod_cat_fetr_idValue:(int32_t)value_ {
	[self setMkg_prod_cat_fetr_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_prod_cat_fetr_idValue {
	NSNumber *result = [self primitiveMkg_prod_cat_fetr_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_prod_cat_fetr_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_prod_cat_fetr_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_prod_fetr_vrnt_id;



- (int32_t)mkg_prod_fetr_vrnt_idValue {
	NSNumber *result = [self mkg_prod_fetr_vrnt_id];
	return [result intValue];
}

- (void)setMkg_prod_fetr_vrnt_idValue:(int32_t)value_ {
	[self setMkg_prod_fetr_vrnt_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_prod_fetr_vrnt_idValue {
	NSNumber *result = [self primitiveMkg_prod_fetr_vrnt_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_prod_fetr_vrnt_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_prod_fetr_vrnt_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_prod_id;



- (int32_t)mkg_prod_idValue {
	NSNumber *result = [self mkg_prod_id];
	return [result intValue];
}

- (void)setMkg_prod_idValue:(int32_t)value_ {
	[self setMkg_prod_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_prod_idValue {
	NSNumber *result = [self primitiveMkg_prod_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_prod_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_prod_id:[NSNumber numberWithInt:value_]];
}





@dynamic brandCatFvnt;

	

@dynamic product;

	






@end
