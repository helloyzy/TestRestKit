// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdAttrSet.m instead.

#import "_ProdAttrSet.h"

const struct ProdAttrSetAttributes ProdAttrSetAttributes = {
	.attr_rank = @"attr_rank",
	.attr_typ_rank = @"attr_typ_rank",
	.mkg_attr_val_id = @"mkg_attr_val_id",
	.mkg_brnd_attr_id = @"mkg_brnd_attr_id",
	.mkg_brnd_attr_typ_id = @"mkg_brnd_attr_typ_id",
	.mkg_prod_attr_set_id = @"mkg_prod_attr_set_id",
	.mkg_prod_id = @"mkg_prod_id",
};

const struct ProdAttrSetRelationships ProdAttrSetRelationships = {
	.attrVal = @"attrVal",
	.brndAttr = @"brndAttr",
	.brndAttrType = @"brndAttrType",
	.product = @"product",
};

const struct ProdAttrSetFetchedProperties ProdAttrSetFetchedProperties = {
};

@implementation ProdAttrSetID
@end

@implementation _ProdAttrSet

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProdAttrSet" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProdAttrSet";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProdAttrSet" inManagedObjectContext:moc_];
}

- (ProdAttrSetID*)objectID {
	return (ProdAttrSetID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"attr_rankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"attr_rank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"attr_typ_rankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"attr_typ_rank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_attr_val_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_attr_val_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_attr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_attr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_attr_typ_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_attr_typ_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_attr_set_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_attr_set_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic attr_rank;



- (int16_t)attr_rankValue {
	NSNumber *result = [self attr_rank];
	return [result shortValue];
}

- (void)setAttr_rankValue:(int16_t)value_ {
	[self setAttr_rank:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveAttr_rankValue {
	NSNumber *result = [self primitiveAttr_rank];
	return [result shortValue];
}

- (void)setPrimitiveAttr_rankValue:(int16_t)value_ {
	[self setPrimitiveAttr_rank:[NSNumber numberWithShort:value_]];
}





@dynamic attr_typ_rank;



- (int16_t)attr_typ_rankValue {
	NSNumber *result = [self attr_typ_rank];
	return [result shortValue];
}

- (void)setAttr_typ_rankValue:(int16_t)value_ {
	[self setAttr_typ_rank:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveAttr_typ_rankValue {
	NSNumber *result = [self primitiveAttr_typ_rank];
	return [result shortValue];
}

- (void)setPrimitiveAttr_typ_rankValue:(int16_t)value_ {
	[self setPrimitiveAttr_typ_rank:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_attr_val_id;



- (int16_t)mkg_attr_val_idValue {
	NSNumber *result = [self mkg_attr_val_id];
	return [result shortValue];
}

- (void)setMkg_attr_val_idValue:(int16_t)value_ {
	[self setMkg_attr_val_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_attr_val_idValue {
	NSNumber *result = [self primitiveMkg_attr_val_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_attr_val_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_attr_val_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_brnd_attr_id;



- (int16_t)mkg_brnd_attr_idValue {
	NSNumber *result = [self mkg_brnd_attr_id];
	return [result shortValue];
}

- (void)setMkg_brnd_attr_idValue:(int16_t)value_ {
	[self setMkg_brnd_attr_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_brnd_attr_idValue {
	NSNumber *result = [self primitiveMkg_brnd_attr_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_brnd_attr_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_brnd_attr_id:[NSNumber numberWithShort:value_]];
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





@dynamic mkg_prod_attr_set_id;



- (int16_t)mkg_prod_attr_set_idValue {
	NSNumber *result = [self mkg_prod_attr_set_id];
	return [result shortValue];
}

- (void)setMkg_prod_attr_set_idValue:(int16_t)value_ {
	[self setMkg_prod_attr_set_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_attr_set_idValue {
	NSNumber *result = [self primitiveMkg_prod_attr_set_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_attr_set_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_attr_set_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_prod_id;



- (int16_t)mkg_prod_idValue {
	NSNumber *result = [self mkg_prod_id];
	return [result shortValue];
}

- (void)setMkg_prod_idValue:(int16_t)value_ {
	[self setMkg_prod_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_idValue {
	NSNumber *result = [self primitiveMkg_prod_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_id:[NSNumber numberWithShort:value_]];
}





@dynamic attrVal;

	

@dynamic brndAttr;

	

@dynamic brndAttrType;

	

@dynamic product;

	






@end
