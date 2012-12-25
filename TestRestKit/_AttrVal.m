// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AttrVal.m instead.

#import "_AttrVal.h"

const struct AttrValAttributes AttrValAttributes = {
	.attr_val = @"attr_val",
	.is_actv = @"is_actv",
	.mkg_attr_id = @"mkg_attr_id",
	.mkg_attr_val_id = @"mkg_attr_val_id",
	.val_is_neg = @"val_is_neg",
};

const struct AttrValRelationships AttrValRelationships = {
	.prodAttrSets = @"prodAttrSets",
};

const struct AttrValFetchedProperties AttrValFetchedProperties = {
};

@implementation AttrValID
@end

@implementation _AttrVal

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AttrVal" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AttrVal";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AttrVal" inManagedObjectContext:moc_];
}

- (AttrValID*)objectID {
	return (AttrValID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"is_actvValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"is_actv"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_attr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_attr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_attr_val_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_attr_val_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"val_is_negValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"val_is_neg"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic attr_val;






@dynamic is_actv;



- (int16_t)is_actvValue {
	NSNumber *result = [self is_actv];
	return [result shortValue];
}

- (void)setIs_actvValue:(int16_t)value_ {
	[self setIs_actv:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveIs_actvValue {
	NSNumber *result = [self primitiveIs_actv];
	return [result shortValue];
}

- (void)setPrimitiveIs_actvValue:(int16_t)value_ {
	[self setPrimitiveIs_actv:[NSNumber numberWithShort:value_]];
}





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





@dynamic mkg_attr_val_id;



- (int32_t)mkg_attr_val_idValue {
	NSNumber *result = [self mkg_attr_val_id];
	return [result intValue];
}

- (void)setMkg_attr_val_idValue:(int32_t)value_ {
	[self setMkg_attr_val_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_attr_val_idValue {
	NSNumber *result = [self primitiveMkg_attr_val_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_attr_val_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_attr_val_id:[NSNumber numberWithInt:value_]];
}





@dynamic val_is_neg;



- (int16_t)val_is_negValue {
	NSNumber *result = [self val_is_neg];
	return [result shortValue];
}

- (void)setVal_is_negValue:(int16_t)value_ {
	[self setVal_is_neg:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveVal_is_negValue {
	NSNumber *result = [self primitiveVal_is_neg];
	return [result shortValue];
}

- (void)setPrimitiveVal_is_negValue:(int16_t)value_ {
	[self setPrimitiveVal_is_neg:[NSNumber numberWithShort:value_]];
}





@dynamic prodAttrSets;

	
- (NSMutableSet*)prodAttrSetsSet {
	[self willAccessValueForKey:@"prodAttrSets"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodAttrSets"];
  
	[self didAccessValueForKey:@"prodAttrSets"];
	return result;
}
	






@end
