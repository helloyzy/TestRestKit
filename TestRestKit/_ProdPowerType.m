// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdPowerType.m instead.

#import "_ProdPowerType.h"

const struct ProdPowerTypeAttributes ProdPowerTypeAttributes = {
	.dsp_ord = @"dsp_ord",
	.is_actv = @"is_actv",
	.mkg_nmnl_powr_typ_id = @"mkg_nmnl_powr_typ_id",
	.nmnl_powr_typ_nm = @"nmnl_powr_typ_nm",
};

const struct ProdPowerTypeRelationships ProdPowerTypeRelationships = {
	.products = @"products",
};

const struct ProdPowerTypeFetchedProperties ProdPowerTypeFetchedProperties = {
};

@implementation ProdPowerTypeID
@end

@implementation _ProdPowerType

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProdPowerType" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProdPowerType";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProdPowerType" inManagedObjectContext:moc_];
}

- (ProdPowerTypeID*)objectID {
	return (ProdPowerTypeID*)[super objectID];
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
	if ([key isEqualToString:@"mkg_nmnl_powr_typ_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_nmnl_powr_typ_id"];
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





@dynamic mkg_nmnl_powr_typ_id;



- (int32_t)mkg_nmnl_powr_typ_idValue {
	NSNumber *result = [self mkg_nmnl_powr_typ_id];
	return [result intValue];
}

- (void)setMkg_nmnl_powr_typ_idValue:(int32_t)value_ {
	[self setMkg_nmnl_powr_typ_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_nmnl_powr_typ_idValue {
	NSNumber *result = [self primitiveMkg_nmnl_powr_typ_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_nmnl_powr_typ_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_nmnl_powr_typ_id:[NSNumber numberWithInt:value_]];
}





@dynamic nmnl_powr_typ_nm;






@dynamic products;

	
- (NSMutableSet*)productsSet {
	[self willAccessValueForKey:@"products"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"products"];
  
	[self didAccessValueForKey:@"products"];
	return result;
}
	






@end
