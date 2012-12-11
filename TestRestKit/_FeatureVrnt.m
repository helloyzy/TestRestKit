// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FeatureVrnt.m instead.

#import "_FeatureVrnt.h"

const struct FeatureVrntAttributes FeatureVrntAttributes = {
	.bult_txt_proc = @"bult_txt_proc",
	.desc_proc = @"desc_proc",
	.mkg_dig_aset_ownr_id = @"mkg_dig_aset_ownr_id",
	.mkg_fetr_id = @"mkg_fetr_id",
	.mkg_fetr_vrnt_id = @"mkg_fetr_vrnt_id",
	.vrnt_nm = @"vrnt_nm",
};

const struct FeatureVrntRelationships FeatureVrntRelationships = {
	.brndCatFvnts = @"brndCatFvnts",
};

const struct FeatureVrntFetchedProperties FeatureVrntFetchedProperties = {
};

@implementation FeatureVrntID
@end

@implementation _FeatureVrnt

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"FeatureVrnt" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"FeatureVrnt";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"FeatureVrnt" inManagedObjectContext:moc_];
}

- (FeatureVrntID*)objectID {
	return (FeatureVrntID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"mkg_dig_aset_ownr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_dig_aset_ownr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_fetr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_fetr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_fetr_vrnt_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_fetr_vrnt_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic bult_txt_proc;






@dynamic desc_proc;






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





@dynamic mkg_fetr_id;



- (int16_t)mkg_fetr_idValue {
	NSNumber *result = [self mkg_fetr_id];
	return [result shortValue];
}

- (void)setMkg_fetr_idValue:(int16_t)value_ {
	[self setMkg_fetr_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_fetr_idValue {
	NSNumber *result = [self primitiveMkg_fetr_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_fetr_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_fetr_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_fetr_vrnt_id;



- (int16_t)mkg_fetr_vrnt_idValue {
	NSNumber *result = [self mkg_fetr_vrnt_id];
	return [result shortValue];
}

- (void)setMkg_fetr_vrnt_idValue:(int16_t)value_ {
	[self setMkg_fetr_vrnt_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_fetr_vrnt_idValue {
	NSNumber *result = [self primitiveMkg_fetr_vrnt_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_fetr_vrnt_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_fetr_vrnt_id:[NSNumber numberWithShort:value_]];
}





@dynamic vrnt_nm;






@dynamic brndCatFvnts;

	
- (NSMutableSet*)brndCatFvntsSet {
	[self willAccessValueForKey:@"brndCatFvnts"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"brndCatFvnts"];
  
	[self didAccessValueForKey:@"brndCatFvnts"];
	return result;
}
	






@end
