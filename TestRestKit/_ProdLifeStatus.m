// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdLifeStatus.m instead.

#import "_ProdLifeStatus.h"

const struct ProdLifeStatusAttributes ProdLifeStatusAttributes = {
	.dsp_ord = @"dsp_ord",
	.is_actv = @"is_actv",
	.is_protected = @"is_protected",
	.mkg_prod_lif_stts_id = @"mkg_prod_lif_stts_id",
	.prod_lif_stts_nm = @"prod_lif_stts_nm",
};

const struct ProdLifeStatusRelationships ProdLifeStatusRelationships = {
	.products = @"products",
};

const struct ProdLifeStatusFetchedProperties ProdLifeStatusFetchedProperties = {
};

@implementation ProdLifeStatusID
@end

@implementation _ProdLifeStatus

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProdLifeStatus" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProdLifeStatus";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProdLifeStatus" inManagedObjectContext:moc_];
}

- (ProdLifeStatusID*)objectID {
	return (ProdLifeStatusID*)[super objectID];
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
	if ([key isEqualToString:@"is_protectedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"is_protected"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_lif_stts_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_lif_stts_id"];
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





@dynamic is_protected;



- (int16_t)is_protectedValue {
	NSNumber *result = [self is_protected];
	return [result shortValue];
}

- (void)setIs_protectedValue:(int16_t)value_ {
	[self setIs_protected:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveIs_protectedValue {
	NSNumber *result = [self primitiveIs_protected];
	return [result shortValue];
}

- (void)setPrimitiveIs_protectedValue:(int16_t)value_ {
	[self setPrimitiveIs_protected:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_prod_lif_stts_id;



- (int32_t)mkg_prod_lif_stts_idValue {
	NSNumber *result = [self mkg_prod_lif_stts_id];
	return [result intValue];
}

- (void)setMkg_prod_lif_stts_idValue:(int32_t)value_ {
	[self setMkg_prod_lif_stts_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_prod_lif_stts_idValue {
	NSNumber *result = [self primitiveMkg_prod_lif_stts_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_prod_lif_stts_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_prod_lif_stts_id:[NSNumber numberWithInt:value_]];
}





@dynamic prod_lif_stts_nm;






@dynamic products;

	
- (NSMutableSet*)productsSet {
	[self willAccessValueForKey:@"products"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"products"];
  
	[self didAccessValueForKey:@"products"];
	return result;
}
	






@end
