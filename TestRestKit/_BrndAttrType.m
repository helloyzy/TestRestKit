// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrndAttrType.m instead.

#import "_BrndAttrType.h"

const struct BrndAttrTypeAttributes BrndAttrTypeAttributes = {
	.dspl_nm = @"dspl_nm",
	.mkg_attr_typ_id = @"mkg_attr_typ_id",
	.mkg_brnd_attr_typ_id = @"mkg_brnd_attr_typ_id",
	.mkg_brnd_id = @"mkg_brnd_id",
};

const struct BrndAttrTypeRelationships BrndAttrTypeRelationships = {
	.prodAttrSets = @"prodAttrSets",
};

const struct BrndAttrTypeFetchedProperties BrndAttrTypeFetchedProperties = {
};

@implementation BrndAttrTypeID
@end

@implementation _BrndAttrType

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BrndAttrType" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BrndAttrType";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BrndAttrType" inManagedObjectContext:moc_];
}

- (BrndAttrTypeID*)objectID {
	return (BrndAttrTypeID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"mkg_attr_typ_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_attr_typ_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_attr_typ_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_attr_typ_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic dspl_nm;






@dynamic mkg_attr_typ_id;



- (int16_t)mkg_attr_typ_idValue {
	NSNumber *result = [self mkg_attr_typ_id];
	return [result shortValue];
}

- (void)setMkg_attr_typ_idValue:(int16_t)value_ {
	[self setMkg_attr_typ_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_attr_typ_idValue {
	NSNumber *result = [self primitiveMkg_attr_typ_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_attr_typ_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_attr_typ_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_brnd_attr_typ_id;



- (int16_t)mkg_brnd_attr_typ_idValue {
	NSNumber *result = [self mkg_brnd_attr_typ_id];
	return [result shortValue];
}

- (void)setMkg_brnd_attr_typ_idValue:(int16_t)value_ {
	[self setMkg_brnd_attr_typ_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_brnd_attr_typ_idValue {
	NSNumber *result = [self primitiveMkg_brnd_attr_typ_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_brnd_attr_typ_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_brnd_attr_typ_id:[NSNumber numberWithShort:value_]];
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





@dynamic prodAttrSets;

	
- (NSMutableSet*)prodAttrSetsSet {
	[self willAccessValueForKey:@"prodAttrSets"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodAttrSets"];
  
	[self didAccessValueForKey:@"prodAttrSets"];
	return result;
}
	






@end
