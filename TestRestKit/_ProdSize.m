// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdSize.m instead.

#import "_ProdSize.h"

const struct ProdSizeAttributes ProdSizeAttributes = {
	.dsp_ord = @"dsp_ord",
	.is_actv = @"is_actv",
	.mkg_nmnl_prod_sz_id = @"mkg_nmnl_prod_sz_id",
	.mkg_prod_cat_id = @"mkg_prod_cat_id",
	.nmnl_prod_sz_nm = @"nmnl_prod_sz_nm",
};

const struct ProdSizeRelationships ProdSizeRelationships = {
	.products = @"products",
};

const struct ProdSizeFetchedProperties ProdSizeFetchedProperties = {
};

@implementation ProdSizeID
@end

@implementation _ProdSize

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProdSize" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProdSize";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProdSize" inManagedObjectContext:moc_];
}

- (ProdSizeID*)objectID {
	return (ProdSizeID*)[super objectID];
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
	if ([key isEqualToString:@"mkg_nmnl_prod_sz_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_nmnl_prod_sz_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_cat_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_cat_id"];
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





@dynamic mkg_nmnl_prod_sz_id;



- (int16_t)mkg_nmnl_prod_sz_idValue {
	NSNumber *result = [self mkg_nmnl_prod_sz_id];
	return [result shortValue];
}

- (void)setMkg_nmnl_prod_sz_idValue:(int16_t)value_ {
	[self setMkg_nmnl_prod_sz_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_nmnl_prod_sz_idValue {
	NSNumber *result = [self primitiveMkg_nmnl_prod_sz_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_nmnl_prod_sz_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_nmnl_prod_sz_id:[NSNumber numberWithShort:value_]];
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





@dynamic nmnl_prod_sz_nm;






@dynamic products;

	
- (NSMutableSet*)productsSet {
	[self willAccessValueForKey:@"products"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"products"];
  
	[self didAccessValueForKey:@"products"];
	return result;
}
	






@end
