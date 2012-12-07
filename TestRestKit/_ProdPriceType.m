// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdPriceType.m instead.

#import "_ProdPriceType.h"

const struct ProdPriceTypeAttributes ProdPriceTypeAttributes = {
	.dsp_ord = @"dsp_ord",
	.is_actv = @"is_actv",
	.mkg_mkt_id = @"mkg_mkt_id",
	.mkg_prod_prce_typ_id = @"mkg_prod_prce_typ_id",
	.prod_prce_typ_desc = @"prod_prce_typ_desc",
	.prod_prce_typ_nm = @"prod_prce_typ_nm",
};

const struct ProdPriceTypeRelationships ProdPriceTypeRelationships = {
	.fkPrices = @"fkPrices",
};

const struct ProdPriceTypeFetchedProperties ProdPriceTypeFetchedProperties = {
};

@implementation ProdPriceTypeID
@end

@implementation _ProdPriceType

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProdPriceType" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProdPriceType";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProdPriceType" inManagedObjectContext:moc_];
}

- (ProdPriceTypeID*)objectID {
	return (ProdPriceTypeID*)[super objectID];
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
	if ([key isEqualToString:@"mkg_mkt_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_mkt_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_prce_typ_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_prce_typ_id"];
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





@dynamic mkg_mkt_id;



- (int16_t)mkg_mkt_idValue {
	NSNumber *result = [self mkg_mkt_id];
	return [result shortValue];
}

- (void)setMkg_mkt_idValue:(int16_t)value_ {
	[self setMkg_mkt_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_mkt_idValue {
	NSNumber *result = [self primitiveMkg_mkt_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_mkt_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_mkt_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_prod_prce_typ_id;



- (int16_t)mkg_prod_prce_typ_idValue {
	NSNumber *result = [self mkg_prod_prce_typ_id];
	return [result shortValue];
}

- (void)setMkg_prod_prce_typ_idValue:(int16_t)value_ {
	[self setMkg_prod_prce_typ_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_prce_typ_idValue {
	NSNumber *result = [self primitiveMkg_prod_prce_typ_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_prce_typ_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_prce_typ_id:[NSNumber numberWithShort:value_]];
}





@dynamic prod_prce_typ_desc;






@dynamic prod_prce_typ_nm;






@dynamic fkPrices;

	
- (NSMutableSet*)fkPricesSet {
	[self willAccessValueForKey:@"fkPrices"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"fkPrices"];
  
	[self didAccessValueForKey:@"fkPrices"];
	return result;
}
	






@end
