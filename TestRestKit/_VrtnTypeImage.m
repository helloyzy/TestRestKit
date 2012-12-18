// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to VrtnTypeImage.m instead.

#import "_VrtnTypeImage.h"

const struct VrtnTypeImageAttributes VrtnTypeImageAttributes = {
	.file_lctn = @"file_lctn",
	.mkg_dig_aset_id = @"mkg_dig_aset_id",
	.mkg_dig_aset_ownr_id = @"mkg_dig_aset_ownr_id",
	.mkg_ownd_dig_aset_id = @"mkg_ownd_dig_aset_id",
	.mkg_vrtn_typ_cd_id = @"mkg_vrtn_typ_cd_id",
};

const struct VrtnTypeImageRelationships VrtnTypeImageRelationships = {
};

const struct VrtnTypeImageFetchedProperties VrtnTypeImageFetchedProperties = {
};

@implementation VrtnTypeImageID
@end

@implementation _VrtnTypeImage

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"VrtnTypeImage" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"VrtnTypeImage";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"VrtnTypeImage" inManagedObjectContext:moc_];
}

- (VrtnTypeImageID*)objectID {
	return (VrtnTypeImageID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"mkg_dig_aset_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_dig_aset_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_dig_aset_ownr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_dig_aset_ownr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_ownd_dig_aset_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_ownd_dig_aset_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_vrtn_typ_cd_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_vrtn_typ_cd_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic file_lctn;






@dynamic mkg_dig_aset_id;



- (int16_t)mkg_dig_aset_idValue {
	NSNumber *result = [self mkg_dig_aset_id];
	return [result shortValue];
}

- (void)setMkg_dig_aset_idValue:(int16_t)value_ {
	[self setMkg_dig_aset_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_dig_aset_idValue {
	NSNumber *result = [self primitiveMkg_dig_aset_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_dig_aset_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_dig_aset_id:[NSNumber numberWithShort:value_]];
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





@dynamic mkg_ownd_dig_aset_id;



- (int16_t)mkg_ownd_dig_aset_idValue {
	NSNumber *result = [self mkg_ownd_dig_aset_id];
	return [result shortValue];
}

- (void)setMkg_ownd_dig_aset_idValue:(int16_t)value_ {
	[self setMkg_ownd_dig_aset_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_ownd_dig_aset_idValue {
	NSNumber *result = [self primitiveMkg_ownd_dig_aset_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_ownd_dig_aset_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_ownd_dig_aset_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_vrtn_typ_cd_id;



- (int16_t)mkg_vrtn_typ_cd_idValue {
	NSNumber *result = [self mkg_vrtn_typ_cd_id];
	return [result shortValue];
}

- (void)setMkg_vrtn_typ_cd_idValue:(int16_t)value_ {
	[self setMkg_vrtn_typ_cd_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_vrtn_typ_cd_idValue {
	NSNumber *result = [self primitiveMkg_vrtn_typ_cd_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_vrtn_typ_cd_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_vrtn_typ_cd_id:[NSNumber numberWithShort:value_]];
}










@end
