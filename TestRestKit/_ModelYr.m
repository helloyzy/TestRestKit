// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ModelYr.m instead.

#import "_ModelYr.h"

const struct ModelYrAttributes ModelYrAttributes = {
	.dsp_ord = @"dsp_ord",
	.effv_end_dt = @"effv_end_dt",
	.effv_strt_dt = @"effv_strt_dt",
	.is_actv = @"is_actv",
	.mkg_modl_yr_id = @"mkg_modl_yr_id",
	.modl_yr_note = @"modl_yr_note",
	.modl_yr_val = @"modl_yr_val",
};

const struct ModelYrRelationships ModelYrRelationships = {
	.brandModelYrs = @"brandModelYrs",
};

const struct ModelYrFetchedProperties ModelYrFetchedProperties = {
};

@implementation ModelYrID
@end

@implementation _ModelYr

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ModelYr" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ModelYr";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ModelYr" inManagedObjectContext:moc_];
}

- (ModelYrID*)objectID {
	return (ModelYrID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"dsp_ordValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"dsp_ord"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"is_actvValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"is_actv"];
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





@dynamic effv_end_dt;






@dynamic effv_strt_dt;






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





@dynamic modl_yr_note;






@dynamic modl_yr_val;






@dynamic brandModelYrs;

	
- (NSMutableSet*)brandModelYrsSet {
	[self willAccessValueForKey:@"brandModelYrs"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"brandModelYrs"];
  
	[self didAccessValueForKey:@"brandModelYrs"];
	return result;
}
	






@end
