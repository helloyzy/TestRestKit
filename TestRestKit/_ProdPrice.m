// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdPrice.m instead.

#import "_ProdPrice.h"

const struct ProdPriceAttributes ProdPriceAttributes = {
	.mkg_prod_id = @"mkg_prod_id",
	.mkg_prod_prce_crnt_id = @"mkg_prod_prce_crnt_id",
	.mkg_prod_prce_typ_id = @"mkg_prod_prce_typ_id",
	.prod_prce_amt = @"prod_prce_amt",
};

const struct ProdPriceRelationships ProdPriceRelationships = {
	.product = @"product",
};

const struct ProdPriceFetchedProperties ProdPriceFetchedProperties = {
};

@implementation ProdPriceID
@end

@implementation _ProdPrice

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProdPrice" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProdPrice";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProdPrice" inManagedObjectContext:moc_];
}

- (ProdPriceID*)objectID {
	return (ProdPriceID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"mkg_prod_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_prce_crnt_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_prce_crnt_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_prce_typ_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_prce_typ_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"prod_prce_amtValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"prod_prce_amt"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic mkg_prod_id;



- (int16_t)mkg_prod_idValue {
	NSNumber *result = [self mkg_prod_id];
	return [result shortValue];
}

- (void)setMkg_prod_idValue:(int16_t)value_ {
	[self setMkg_prod_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_idValue {
	NSNumber *result = [self primitiveMkg_prod_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_prod_prce_crnt_id;



- (int16_t)mkg_prod_prce_crnt_idValue {
	NSNumber *result = [self mkg_prod_prce_crnt_id];
	return [result shortValue];
}

- (void)setMkg_prod_prce_crnt_idValue:(int16_t)value_ {
	[self setMkg_prod_prce_crnt_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_prce_crnt_idValue {
	NSNumber *result = [self primitiveMkg_prod_prce_crnt_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_prce_crnt_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_prce_crnt_id:[NSNumber numberWithShort:value_]];
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





@dynamic prod_prce_amt;



- (double)prod_prce_amtValue {
	NSNumber *result = [self prod_prce_amt];
	return [result doubleValue];
}

- (void)setProd_prce_amtValue:(double)value_ {
	[self setProd_prce_amt:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveProd_prce_amtValue {
	NSNumber *result = [self primitiveProd_prce_amt];
	return [result doubleValue];
}

- (void)setPrimitiveProd_prce_amtValue:(double)value_ {
	[self setPrimitiveProd_prce_amt:[NSNumber numberWithDouble:value_]];
}





@dynamic product;

	






@end
