// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrndCatImage.m instead.

#import "_BrndCatImage.h"

const struct BrndCatImageAttributes BrndCatImageAttributes = {
	.file_lctn = @"file_lctn",
	.mkg_brnd_prod_cat_id = @"mkg_brnd_prod_cat_id",
	.mkg_dig_aset_ownr_id = @"mkg_dig_aset_ownr_id",
};

const struct BrndCatImageRelationships BrndCatImageRelationships = {
};

const struct BrndCatImageFetchedProperties BrndCatImageFetchedProperties = {
};

@implementation BrndCatImageID
@end

@implementation _BrndCatImage

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BrndCatImage" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BrndCatImage";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BrndCatImage" inManagedObjectContext:moc_];
}

- (BrndCatImageID*)objectID {
	return (BrndCatImageID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
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

	return keyPaths;
}




@dynamic file_lctn;






@dynamic mkg_brnd_prod_cat_id;



- (int32_t)mkg_brnd_prod_cat_idValue {
	NSNumber *result = [self mkg_brnd_prod_cat_id];
	return [result intValue];
}

- (void)setMkg_brnd_prod_cat_idValue:(int32_t)value_ {
	[self setMkg_brnd_prod_cat_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_brnd_prod_cat_idValue {
	NSNumber *result = [self primitiveMkg_brnd_prod_cat_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_brnd_prod_cat_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_brnd_prod_cat_id:[NSNumber numberWithInt:value_]];
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
