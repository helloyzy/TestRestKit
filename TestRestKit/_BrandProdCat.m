// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrandProdCat.m instead.

#import "_BrandProdCat.h"

const struct BrandProdCatAttributes BrandProdCatAttributes = {
	.mkg_brnd_id = @"mkg_brnd_id",
	.mkg_brnd_prod_cat_id = @"mkg_brnd_prod_cat_id",
	.mkg_dig_aset_ownr_id = @"mkg_dig_aset_ownr_id",
	.mkg_prod_cat_id = @"mkg_prod_cat_id",
};

const struct BrandProdCatRelationships BrandProdCatRelationships = {
	.brand = @"brand",
	.prodCat = @"prodCat",
	.products = @"products",
};

const struct BrandProdCatFetchedProperties BrandProdCatFetchedProperties = {
};

@implementation BrandProdCatID
@end

@implementation _BrandProdCat

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BrandProdCat" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BrandProdCat";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BrandProdCat" inManagedObjectContext:moc_];
}

- (BrandProdCatID*)objectID {
	return (BrandProdCatID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
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
	if ([key isEqualToString:@"mkg_dig_aset_ownr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_dig_aset_ownr_id"];
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




@dynamic mkg_brnd_id;



- (int16_t)mkg_brnd_idValue {
	NSNumber *result = [self mkg_brnd_id];
	return [result shortValue];
}

- (void)setMkg_brnd_idValue:(int16_t)value_ {
	[self setMkg_brnd_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_brnd_idValue {
	NSNumber *result = [self primitiveMkg_brnd_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_brnd_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_brnd_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_brnd_prod_cat_id;



- (int16_t)mkg_brnd_prod_cat_idValue {
	NSNumber *result = [self mkg_brnd_prod_cat_id];
	return [result shortValue];
}

- (void)setMkg_brnd_prod_cat_idValue:(int16_t)value_ {
	[self setMkg_brnd_prod_cat_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_brnd_prod_cat_idValue {
	NSNumber *result = [self primitiveMkg_brnd_prod_cat_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_brnd_prod_cat_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_brnd_prod_cat_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_dig_aset_ownr_id;



- (int16_t)mkg_dig_aset_ownr_idValue {
	NSNumber *result = [self mkg_dig_aset_ownr_id];
	return [result shortValue];
}

- (void)setMkg_dig_aset_ownr_idValue:(int16_t)value_ {
	[self setMkg_dig_aset_ownr_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_dig_aset_ownr_idValue {
	NSNumber *result = [self primitiveMkg_dig_aset_ownr_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_dig_aset_ownr_id:[NSNumber numberWithShort:value_]];
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





@dynamic brand;

	

@dynamic prodCat;

	

@dynamic products;

	
- (NSMutableSet*)productsSet {
	[self willAccessValueForKey:@"products"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"products"];
  
	[self didAccessValueForKey:@"products"];
	return result;
}
	






@end
