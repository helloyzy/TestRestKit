// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrandModelYr.m instead.

#import "_BrandModelYr.h"

const struct BrandModelYrAttributes BrandModelYrAttributes = {
	.cd_val = @"cd_val",
	.mkg_brnd_id = @"mkg_brnd_id",
	.mkg_brnd_modl_yr_id = @"mkg_brnd_modl_yr_id",
	.mkg_modl_yr_id = @"mkg_modl_yr_id",
};

const struct BrandModelYrRelationships BrandModelYrRelationships = {
	.modelYr = @"modelYr",
	.products = @"products",
};

const struct BrandModelYrFetchedProperties BrandModelYrFetchedProperties = {
};

@implementation BrandModelYrID
@end

@implementation _BrandModelYr

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BrandModelYr" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BrandModelYr";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BrandModelYr" inManagedObjectContext:moc_];
}

- (BrandModelYrID*)objectID {
	return (BrandModelYrID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"mkg_brnd_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_modl_yr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_modl_yr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_modl_yr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_modl_yr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic cd_val;






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





@dynamic mkg_brnd_modl_yr_id;



- (int16_t)mkg_brnd_modl_yr_idValue {
	NSNumber *result = [self mkg_brnd_modl_yr_id];
	return [result shortValue];
}

- (void)setMkg_brnd_modl_yr_idValue:(int16_t)value_ {
	[self setMkg_brnd_modl_yr_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_brnd_modl_yr_idValue {
	NSNumber *result = [self primitiveMkg_brnd_modl_yr_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_brnd_modl_yr_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_brnd_modl_yr_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_modl_yr_id;



- (int16_t)mkg_modl_yr_idValue {
	NSNumber *result = [self mkg_modl_yr_id];
	return [result shortValue];
}

- (void)setMkg_modl_yr_idValue:(int16_t)value_ {
	[self setMkg_modl_yr_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_modl_yr_idValue {
	NSNumber *result = [self primitiveMkg_modl_yr_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_modl_yr_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_modl_yr_id:[NSNumber numberWithShort:value_]];
}





@dynamic modelYr;

	

@dynamic products;

	
- (NSMutableSet*)productsSet {
	[self willAccessValueForKey:@"products"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"products"];
  
	[self didAccessValueForKey:@"products"];
	return result;
}
	






@end
