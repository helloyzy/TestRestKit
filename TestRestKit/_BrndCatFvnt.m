// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrndCatFvnt.m instead.

#import "_BrndCatFvnt.h"

const struct BrndCatFvntAttributes BrndCatFvntAttributes = {
	.mkg_brnd_cat_fvnt_id = @"mkg_brnd_cat_fvnt_id",
	.mkg_brnd_id = @"mkg_brnd_id",
	.mkg_fetr_vrnt_id = @"mkg_fetr_vrnt_id",
	.mkg_prod_cat_fetr_id = @"mkg_prod_cat_fetr_id",
	.rank = @"rank",
};

const struct BrndCatFvntRelationships BrndCatFvntRelationships = {
	.fetrVrnt = @"fetrVrnt",
	.prodFetrVrnts = @"prodFetrVrnts",
};

const struct BrndCatFvntFetchedProperties BrndCatFvntFetchedProperties = {
};

@implementation BrndCatFvntID
@end

@implementation _BrndCatFvnt

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BrndCatFvnt" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BrndCatFvnt";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BrndCatFvnt" inManagedObjectContext:moc_];
}

- (BrndCatFvntID*)objectID {
	return (BrndCatFvntID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"mkg_brnd_cat_fvnt_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_cat_fvnt_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_fetr_vrnt_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_fetr_vrnt_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_cat_fetr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_cat_fetr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"rankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"rank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
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





@dynamic mkg_fetr_vrnt_id;



- (int32_t)mkg_fetr_vrnt_idValue {
	NSNumber *result = [self mkg_fetr_vrnt_id];
	return [result intValue];
}

- (void)setMkg_fetr_vrnt_idValue:(int32_t)value_ {
	[self setMkg_fetr_vrnt_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_fetr_vrnt_idValue {
	NSNumber *result = [self primitiveMkg_fetr_vrnt_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_fetr_vrnt_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_fetr_vrnt_id:[NSNumber numberWithInt:value_]];
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





@dynamic rank;



- (int16_t)rankValue {
	NSNumber *result = [self rank];
	return [result shortValue];
}

- (void)setRankValue:(int16_t)value_ {
	[self setRank:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveRankValue {
	NSNumber *result = [self primitiveRank];
	return [result shortValue];
}

- (void)setPrimitiveRankValue:(int16_t)value_ {
	[self setPrimitiveRank:[NSNumber numberWithShort:value_]];
}





@dynamic fetrVrnt;

	

@dynamic prodFetrVrnts;

	
- (NSMutableSet*)prodFetrVrntsSet {
	[self willAccessValueForKey:@"prodFetrVrnts"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodFetrVrnts"];
  
	[self didAccessValueForKey:@"prodFetrVrnts"];
	return result;
}
	






@end
