// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrandImage.m instead.

#import "_BrandImage.h"

const struct BrandImageAttributes BrandImageAttributes = {
	.dig_aset_purp_id = @"dig_aset_purp_id",
	.file_lctn = @"file_lctn",
	.mkg_brnd_id = @"mkg_brnd_id",
	.mkg_dig_aset_ownr_id = @"mkg_dig_aset_ownr_id",
};

const struct BrandImageRelationships BrandImageRelationships = {
};

const struct BrandImageFetchedProperties BrandImageFetchedProperties = {
};

@implementation BrandImageID
@end

@implementation _BrandImage

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BrandImage" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BrandImage";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BrandImage" inManagedObjectContext:moc_];
}

- (BrandImageID*)objectID {
	return (BrandImageID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"dig_aset_purp_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"dig_aset_purp_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_dig_aset_ownr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_dig_aset_ownr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic dig_aset_purp_id;



- (int32_t)dig_aset_purp_idValue {
	NSNumber *result = [self dig_aset_purp_id];
	return [result intValue];
}

- (void)setDig_aset_purp_idValue:(int32_t)value_ {
	[self setDig_aset_purp_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveDig_aset_purp_idValue {
	NSNumber *result = [self primitiveDig_aset_purp_id];
	return [result intValue];
}

- (void)setPrimitiveDig_aset_purp_idValue:(int32_t)value_ {
	[self setPrimitiveDig_aset_purp_id:[NSNumber numberWithInt:value_]];
}





@dynamic file_lctn;






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





@dynamic mkg_dig_aset_ownr_id;



- (int32_t)mkg_dig_aset_ownr_idValue {
	NSNumber *result = [self mkg_dig_aset_ownr_id];
	return [result intValue];
}

- (void)setMkg_dig_aset_ownr_idValue:(int32_t)value_ {
	[self setMkg_dig_aset_ownr_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_dig_aset_ownr_idValue {
	NSNumber *result = [self primitiveMkg_dig_aset_ownr_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_dig_aset_ownr_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_dig_aset_ownr_id:[NSNumber numberWithInt:value_]];
}










@end
