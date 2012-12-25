// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BrndAttr.m instead.

#import "_BrndAttr.h"

const struct BrndAttrAttributes BrndAttrAttributes = {
	.dspl_nm = @"dspl_nm",
	.mkg_attr_id = @"mkg_attr_id",
	.mkg_brnd_attr_id = @"mkg_brnd_attr_id",
	.mkg_brnd_id = @"mkg_brnd_id",
};

const struct BrndAttrRelationships BrndAttrRelationships = {
	.prodAttrSets = @"prodAttrSets",
};

const struct BrndAttrFetchedProperties BrndAttrFetchedProperties = {
};

@implementation BrndAttrID
@end

@implementation _BrndAttr

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BrndAttr" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BrndAttr";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BrndAttr" inManagedObjectContext:moc_];
}

- (BrndAttrID*)objectID {
	return (BrndAttrID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"mkg_attr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_attr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_attr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_attr_id"];
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






@dynamic mkg_attr_id;



- (int32_t)mkg_attr_idValue {
	NSNumber *result = [self mkg_attr_id];
	return [result intValue];
}

- (void)setMkg_attr_idValue:(int32_t)value_ {
	[self setMkg_attr_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_attr_idValue {
	NSNumber *result = [self primitiveMkg_attr_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_attr_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_attr_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_brnd_attr_id;



- (int32_t)mkg_brnd_attr_idValue {
	NSNumber *result = [self mkg_brnd_attr_id];
	return [result intValue];
}

- (void)setMkg_brnd_attr_idValue:(int32_t)value_ {
	[self setMkg_brnd_attr_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_brnd_attr_idValue {
	NSNumber *result = [self primitiveMkg_brnd_attr_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_brnd_attr_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_brnd_attr_id:[NSNumber numberWithInt:value_]];
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





@dynamic prodAttrSets;

	
- (NSMutableSet*)prodAttrSetsSet {
	[self willAccessValueForKey:@"prodAttrSets"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodAttrSets"];
  
	[self didAccessValueForKey:@"prodAttrSets"];
	return result;
}
	






@end
