// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProductImage.m instead.

#import "_ProductImage.h"

const struct ProductImageAttributes ProductImageAttributes = {
	.dig_aset_purp_nm = @"dig_aset_purp_nm",
	.dsp_ord = @"dsp_ord",
	.file_lctn = @"file_lctn",
	.mkg_dig_aset_id = @"mkg_dig_aset_id",
	.mkg_dig_aset_ownr_id = @"mkg_dig_aset_ownr_id",
	.mkg_ownd_dig_aset_id = @"mkg_ownd_dig_aset_id",
};

const struct ProductImageRelationships ProductImageRelationships = {
};

const struct ProductImageFetchedProperties ProductImageFetchedProperties = {
};

@implementation ProductImageID
@end

@implementation _ProductImage

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProductImage" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProductImage";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProductImage" inManagedObjectContext:moc_];
}

- (ProductImageID*)objectID {
	return (ProductImageID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"dsp_ordValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"dsp_ord"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
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

	return keyPaths;
}




@dynamic dig_aset_purp_nm;






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





@dynamic file_lctn;






@dynamic mkg_dig_aset_id;



- (int32_t)mkg_dig_aset_idValue {
	NSNumber *result = [self mkg_dig_aset_id];
	return [result intValue];
}

- (void)setMkg_dig_aset_idValue:(int32_t)value_ {
	[self setMkg_dig_aset_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_dig_aset_idValue {
	NSNumber *result = [self primitiveMkg_dig_aset_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_dig_aset_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_dig_aset_id:[NSNumber numberWithInt:value_]];
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





@dynamic mkg_ownd_dig_aset_id;



- (int32_t)mkg_ownd_dig_aset_idValue {
	NSNumber *result = [self mkg_ownd_dig_aset_id];
	return [result intValue];
}

- (void)setMkg_ownd_dig_aset_idValue:(int32_t)value_ {
	[self setMkg_ownd_dig_aset_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_ownd_dig_aset_idValue {
	NSNumber *result = [self primitiveMkg_ownd_dig_aset_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_ownd_dig_aset_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_ownd_dig_aset_id:[NSNumber numberWithInt:value_]];
}










@end
