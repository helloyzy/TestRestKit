// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdDesc.m instead.

#import "_ProdDesc.h"

const struct ProdDescAttributes ProdDescAttributes = {
	.dsp_ord = @"dsp_ord",
	.is_actv = @"is_actv",
	.mkg_brnd_id = @"mkg_brnd_id",
	.mkg_brnd_prod_cat_id = @"mkg_brnd_prod_cat_id",
	.mkg_prod_desc_id = @"mkg_prod_desc_id",
	.prod_desc_shrt = @"prod_desc_shrt",
};

const struct ProdDescRelationships ProdDescRelationships = {
	.products = @"products",
};

const struct ProdDescFetchedProperties ProdDescFetchedProperties = {
};

@implementation ProdDescID
@end

@implementation _ProdDesc

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProdDesc" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProdDesc";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProdDesc" inManagedObjectContext:moc_];
}

- (ProdDescID*)objectID {
	return (ProdDescID*)[super objectID];
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
	if ([key isEqualToString:@"mkg_brnd_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_prod_cat_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_prod_cat_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_desc_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_desc_id"];
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





@dynamic mkg_brnd_id;



- (int32_t)mkg_brnd_idValue {
	NSNumber *result = [self mkg_brnd_id];
	return [result intValue];
}

- (void)setMkg_brnd_idValue:(int32_t)value_ {
	[self setMkg_brnd_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_brnd_idValue {
	NSNumber *result = [self primitiveMkg_brnd_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_brnd_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_brnd_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_brnd_prod_cat_id;



- (int32_t)mkg_brnd_prod_cat_idValue {
	NSNumber *result = [self mkg_brnd_prod_cat_id];
	return [result intValue];
}

- (void)setMkg_brnd_prod_cat_idValue:(int32_t)value_ {
	[self setMkg_brnd_prod_cat_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_brnd_prod_cat_idValue {
	NSNumber *result = [self primitiveMkg_brnd_prod_cat_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_brnd_prod_cat_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_brnd_prod_cat_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_prod_desc_id;



- (int32_t)mkg_prod_desc_idValue {
	NSNumber *result = [self mkg_prod_desc_id];
	return [result intValue];
}

- (void)setMkg_prod_desc_idValue:(int32_t)value_ {
	[self setMkg_prod_desc_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_prod_desc_idValue {
	NSNumber *result = [self primitiveMkg_prod_desc_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_prod_desc_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_prod_desc_id:[NSNumber numberWithInt:value_]];
}





@dynamic prod_desc_shrt;






@dynamic products;

	
- (NSMutableSet*)productsSet {
	[self willAccessValueForKey:@"products"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"products"];
  
	[self didAccessValueForKey:@"products"];
	return result;
}
	






@end
