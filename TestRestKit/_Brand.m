// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Brand.m instead.

#import "_Brand.h"

const struct BrandAttributes BrandAttributes = {
	.brandID = @"brandID",
	.displayOrder = @"displayOrder",
	.is_internal = @"is_internal",
	.mkg_dig_aset_ownr_id = @"mkg_dig_aset_ownr_id",
	.name = @"name",
	.prnt_brnd_id = @"prnt_brnd_id",
	.show_sub_brnd = @"show_sub_brnd",
	.top_brnd_id = @"top_brnd_id",
};

const struct BrandRelationships BrandRelationships = {
	.children = @"children",
	.fkProdCatInfo = @"fkProdCatInfo",
	.parent = @"parent",
	.productCategories = @"productCategories",
	.subBrands = @"subBrands",
	.topBrand = @"topBrand",
};

const struct BrandFetchedProperties BrandFetchedProperties = {
};

@implementation BrandID
@end

@implementation _Brand

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Brand" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Brand";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Brand" inManagedObjectContext:moc_];
}

- (BrandID*)objectID {
	return (BrandID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"brandIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"brandID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"displayOrderValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"displayOrder"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"is_internalValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"is_internal"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_dig_aset_ownr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_dig_aset_ownr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"prnt_brnd_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"prnt_brnd_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"show_sub_brndValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"show_sub_brnd"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"top_brnd_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"top_brnd_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic brandID;



- (int16_t)brandIDValue {
	NSNumber *result = [self brandID];
	return [result shortValue];
}

- (void)setBrandIDValue:(int16_t)value_ {
	[self setBrandID:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveBrandIDValue {
	NSNumber *result = [self primitiveBrandID];
	return [result shortValue];
}

- (void)setPrimitiveBrandIDValue:(int16_t)value_ {
	[self setPrimitiveBrandID:[NSNumber numberWithShort:value_]];
}





@dynamic displayOrder;



- (int16_t)displayOrderValue {
	NSNumber *result = [self displayOrder];
	return [result shortValue];
}

- (void)setDisplayOrderValue:(int16_t)value_ {
	[self setDisplayOrder:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveDisplayOrderValue {
	NSNumber *result = [self primitiveDisplayOrder];
	return [result shortValue];
}

- (void)setPrimitiveDisplayOrderValue:(int16_t)value_ {
	[self setPrimitiveDisplayOrder:[NSNumber numberWithShort:value_]];
}





@dynamic is_internal;



- (int16_t)is_internalValue {
	NSNumber *result = [self is_internal];
	return [result shortValue];
}

- (void)setIs_internalValue:(int16_t)value_ {
	[self setIs_internal:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveIs_internalValue {
	NSNumber *result = [self primitiveIs_internal];
	return [result shortValue];
}

- (void)setPrimitiveIs_internalValue:(int16_t)value_ {
	[self setPrimitiveIs_internal:[NSNumber numberWithShort:value_]];
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





@dynamic name;






@dynamic prnt_brnd_id;



- (int16_t)prnt_brnd_idValue {
	NSNumber *result = [self prnt_brnd_id];
	return [result shortValue];
}

- (void)setPrnt_brnd_idValue:(int16_t)value_ {
	[self setPrnt_brnd_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePrnt_brnd_idValue {
	NSNumber *result = [self primitivePrnt_brnd_id];
	return [result shortValue];
}

- (void)setPrimitivePrnt_brnd_idValue:(int16_t)value_ {
	[self setPrimitivePrnt_brnd_id:[NSNumber numberWithShort:value_]];
}





@dynamic show_sub_brnd;



- (int16_t)show_sub_brndValue {
	NSNumber *result = [self show_sub_brnd];
	return [result shortValue];
}

- (void)setShow_sub_brndValue:(int16_t)value_ {
	[self setShow_sub_brnd:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveShow_sub_brndValue {
	NSNumber *result = [self primitiveShow_sub_brnd];
	return [result shortValue];
}

- (void)setPrimitiveShow_sub_brndValue:(int16_t)value_ {
	[self setPrimitiveShow_sub_brnd:[NSNumber numberWithShort:value_]];
}





@dynamic top_brnd_id;



- (int16_t)top_brnd_idValue {
	NSNumber *result = [self top_brnd_id];
	return [result shortValue];
}

- (void)setTop_brnd_idValue:(int16_t)value_ {
	[self setTop_brnd_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveTop_brnd_idValue {
	NSNumber *result = [self primitiveTop_brnd_id];
	return [result shortValue];
}

- (void)setPrimitiveTop_brnd_idValue:(int16_t)value_ {
	[self setPrimitiveTop_brnd_id:[NSNumber numberWithShort:value_]];
}





@dynamic children;

	
- (NSMutableSet*)childrenSet {
	[self willAccessValueForKey:@"children"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"children"];
  
	[self didAccessValueForKey:@"children"];
	return result;
}
	

@dynamic fkProdCatInfo;

	
- (NSMutableSet*)fkProdCatInfoSet {
	[self willAccessValueForKey:@"fkProdCatInfo"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"fkProdCatInfo"];
  
	[self didAccessValueForKey:@"fkProdCatInfo"];
	return result;
}
	

@dynamic parent;

	

@dynamic productCategories;

	
- (NSMutableSet*)productCategoriesSet {
	[self willAccessValueForKey:@"productCategories"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"productCategories"];
  
	[self didAccessValueForKey:@"productCategories"];
	return result;
}
	

@dynamic subBrands;

	
- (NSMutableSet*)subBrandsSet {
	[self willAccessValueForKey:@"subBrands"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"subBrands"];
  
	[self didAccessValueForKey:@"subBrands"];
	return result;
}
	

@dynamic topBrand;

	






@end
