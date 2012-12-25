// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to VrtnTypeCode.m instead.

#import "_VrtnTypeCode.h"

const struct VrtnTypeCodeAttributes VrtnTypeCodeAttributes = {
	.dsp_ord = @"dsp_ord",
	.is_actv = @"is_actv",
	.mkg_prod_vrtn_typ_id = @"mkg_prod_vrtn_typ_id",
	.mkg_vrtn_typ_cd_id = @"mkg_vrtn_typ_cd_id",
	.vrtn_typ_cd = @"vrtn_typ_cd",
	.vrtn_typ_cd_desc = @"vrtn_typ_cd_desc",
	.vrtn_typ_cd_nm = @"vrtn_typ_cd_nm",
};

const struct VrtnTypeCodeRelationships VrtnTypeCodeRelationships = {
	.prodVrtns = @"prodVrtns",
};

const struct VrtnTypeCodeFetchedProperties VrtnTypeCodeFetchedProperties = {
};

@implementation VrtnTypeCodeID
@end

@implementation _VrtnTypeCode

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"VrtnTypeCode" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"VrtnTypeCode";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"VrtnTypeCode" inManagedObjectContext:moc_];
}

- (VrtnTypeCodeID*)objectID {
	return (VrtnTypeCodeID*)[super objectID];
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
	if ([key isEqualToString:@"mkg_prod_vrtn_typ_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_vrtn_typ_id"];
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





@dynamic mkg_prod_vrtn_typ_id;



- (int32_t)mkg_prod_vrtn_typ_idValue {
	NSNumber *result = [self mkg_prod_vrtn_typ_id];
	return [result intValue];
}

- (void)setMkg_prod_vrtn_typ_idValue:(int32_t)value_ {
	[self setMkg_prod_vrtn_typ_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_prod_vrtn_typ_idValue {
	NSNumber *result = [self primitiveMkg_prod_vrtn_typ_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_prod_vrtn_typ_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_prod_vrtn_typ_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_vrtn_typ_cd_id;



- (int32_t)mkg_vrtn_typ_cd_idValue {
	NSNumber *result = [self mkg_vrtn_typ_cd_id];
	return [result intValue];
}

- (void)setMkg_vrtn_typ_cd_idValue:(int32_t)value_ {
	[self setMkg_vrtn_typ_cd_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_vrtn_typ_cd_idValue {
	NSNumber *result = [self primitiveMkg_vrtn_typ_cd_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_vrtn_typ_cd_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_vrtn_typ_cd_id:[NSNumber numberWithInt:value_]];
}





@dynamic vrtn_typ_cd;






@dynamic vrtn_typ_cd_desc;






@dynamic vrtn_typ_cd_nm;






@dynamic prodVrtns;

	
- (NSMutableSet*)prodVrtnsSet {
	[self willAccessValueForKey:@"prodVrtns"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodVrtns"];
  
	[self didAccessValueForKey:@"prodVrtns"];
	return result;
}
	






@end
