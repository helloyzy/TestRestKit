// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to InstallType.m instead.

#import "_InstallType.h"

const struct InstallTypeAttributes InstallTypeAttributes = {
	.dsp_ord = @"dsp_ord",
	.inst_typ_desc = @"inst_typ_desc",
	.inst_typ_nm = @"inst_typ_nm",
	.is_actv = @"is_actv",
	.mkg_inst_typ_id = @"mkg_inst_typ_id",
};

const struct InstallTypeRelationships InstallTypeRelationships = {
	.products = @"products",
};

const struct InstallTypeFetchedProperties InstallTypeFetchedProperties = {
};

@implementation InstallTypeID
@end

@implementation _InstallType

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"InstallType" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"InstallType";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"InstallType" inManagedObjectContext:moc_];
}

- (InstallTypeID*)objectID {
	return (InstallTypeID*)[super objectID];
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
	if ([key isEqualToString:@"mkg_inst_typ_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_inst_typ_id"];
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





@dynamic inst_typ_desc;






@dynamic inst_typ_nm;






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





@dynamic mkg_inst_typ_id;



- (int16_t)mkg_inst_typ_idValue {
	NSNumber *result = [self mkg_inst_typ_id];
	return [result shortValue];
}

- (void)setMkg_inst_typ_idValue:(int16_t)value_ {
	[self setMkg_inst_typ_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_inst_typ_idValue {
	NSNumber *result = [self primitiveMkg_inst_typ_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_inst_typ_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_inst_typ_id:[NSNumber numberWithShort:value_]];
}





@dynamic products;

	
- (NSMutableSet*)productsSet {
	[self willAccessValueForKey:@"products"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"products"];
  
	[self didAccessValueForKey:@"products"];
	return result;
}
	






@end
