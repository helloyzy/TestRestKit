// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Product.m instead.

#import "_Product.h"

const struct ProductAttributes ProductAttributes = {
	.is_enrg_star = @"is_enrg_star",
	.mkg_brnd_modl_yr_id = @"mkg_brnd_modl_yr_id",
	.mkg_brnd_prod_cat_id = @"mkg_brnd_prod_cat_id",
	.mkg_dig_aset_ownr_id = @"mkg_dig_aset_ownr_id",
	.mkg_inst_typ_id = @"mkg_inst_typ_id",
	.mkg_nmnl_powr_typ_id = @"mkg_nmnl_powr_typ_id",
	.mkg_nmnl_prod_sz_id = @"mkg_nmnl_prod_sz_id",
	.mkg_prod_desc_id = @"mkg_prod_desc_id",
	.mkg_prod_id = @"mkg_prod_id",
	.mkg_prod_lif_stts_id = @"mkg_prod_lif_stts_id",
	.prod_cd = @"prod_cd",
};

const struct ProductRelationships ProductRelationships = {
	.brandProdCat = @"brandProdCat",
	.fkPrices = @"fkPrices",
	.installType = @"installType",
	.lifeCycleStatus = @"lifeCycleStatus",
	.powerType = @"powerType",
	.prodAttrSets = @"prodAttrSets",
	.prodDesc = @"prodDesc",
	.prodFetrVrnts = @"prodFetrVrnts",
	.prodSize = @"prodSize",
	.prodVrnts = @"prodVrnts",
};

const struct ProductFetchedProperties ProductFetchedProperties = {
};

@implementation ProductID
@end

@implementation _Product

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Product" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Product";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Product" inManagedObjectContext:moc_];
}

- (ProductID*)objectID {
	return (ProductID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"is_enrg_starValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"is_enrg_star"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_brnd_modl_yr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_brnd_modl_yr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
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
	if ([key isEqualToString:@"mkg_inst_typ_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_inst_typ_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_nmnl_powr_typ_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_nmnl_powr_typ_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_nmnl_prod_sz_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_nmnl_prod_sz_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_desc_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_desc_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_lif_stts_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_lif_stts_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic is_enrg_star;



- (int16_t)is_enrg_starValue {
	NSNumber *result = [self is_enrg_star];
	return [result shortValue];
}

- (void)setIs_enrg_starValue:(int16_t)value_ {
	[self setIs_enrg_star:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveIs_enrg_starValue {
	NSNumber *result = [self primitiveIs_enrg_star];
	return [result shortValue];
}

- (void)setPrimitiveIs_enrg_starValue:(int16_t)value_ {
	[self setPrimitiveIs_enrg_star:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_brnd_modl_yr_id;



- (int32_t)mkg_brnd_modl_yr_idValue {
	NSNumber *result = [self mkg_brnd_modl_yr_id];
	return [result intValue];
}

- (void)setMkg_brnd_modl_yr_idValue:(int32_t)value_ {
	[self setMkg_brnd_modl_yr_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_brnd_modl_yr_idValue {
	NSNumber *result = [self primitiveMkg_brnd_modl_yr_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_brnd_modl_yr_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_brnd_modl_yr_id:[NSNumber numberWithInt:value_]];
}





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





@dynamic mkg_inst_typ_id;



- (int32_t)mkg_inst_typ_idValue {
	NSNumber *result = [self mkg_inst_typ_id];
	return [result intValue];
}

- (void)setMkg_inst_typ_idValue:(int32_t)value_ {
	[self setMkg_inst_typ_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_inst_typ_idValue {
	NSNumber *result = [self primitiveMkg_inst_typ_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_inst_typ_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_inst_typ_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_nmnl_powr_typ_id;



- (int32_t)mkg_nmnl_powr_typ_idValue {
	NSNumber *result = [self mkg_nmnl_powr_typ_id];
	return [result intValue];
}

- (void)setMkg_nmnl_powr_typ_idValue:(int32_t)value_ {
	[self setMkg_nmnl_powr_typ_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_nmnl_powr_typ_idValue {
	NSNumber *result = [self primitiveMkg_nmnl_powr_typ_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_nmnl_powr_typ_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_nmnl_powr_typ_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_nmnl_prod_sz_id;



- (int32_t)mkg_nmnl_prod_sz_idValue {
	NSNumber *result = [self mkg_nmnl_prod_sz_id];
	return [result intValue];
}

- (void)setMkg_nmnl_prod_sz_idValue:(int32_t)value_ {
	[self setMkg_nmnl_prod_sz_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_nmnl_prod_sz_idValue {
	NSNumber *result = [self primitiveMkg_nmnl_prod_sz_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_nmnl_prod_sz_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_nmnl_prod_sz_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_prod_desc_id;



- (int32_t)mkg_prod_desc_idValue {
	NSNumber *result = [self mkg_prod_desc_id];
	return [result intValue];
}

- (void)setMkg_prod_desc_idValue:(int32_t)value_ {
	[self setMkg_prod_desc_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_prod_desc_idValue {
	NSNumber *result = [self primitiveMkg_prod_desc_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_prod_desc_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_prod_desc_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_prod_id;



- (int32_t)mkg_prod_idValue {
	NSNumber *result = [self mkg_prod_id];
	return [result intValue];
}

- (void)setMkg_prod_idValue:(int32_t)value_ {
	[self setMkg_prod_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_prod_idValue {
	NSNumber *result = [self primitiveMkg_prod_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_prod_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_prod_id:[NSNumber numberWithInt:value_]];
}





@dynamic mkg_prod_lif_stts_id;



- (int32_t)mkg_prod_lif_stts_idValue {
	NSNumber *result = [self mkg_prod_lif_stts_id];
	return [result intValue];
}

- (void)setMkg_prod_lif_stts_idValue:(int32_t)value_ {
	[self setMkg_prod_lif_stts_id:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveMkg_prod_lif_stts_idValue {
	NSNumber *result = [self primitiveMkg_prod_lif_stts_id];
	return [result intValue];
}

- (void)setPrimitiveMkg_prod_lif_stts_idValue:(int32_t)value_ {
	[self setPrimitiveMkg_prod_lif_stts_id:[NSNumber numberWithInt:value_]];
}





@dynamic prod_cd;






@dynamic brandProdCat;

	

@dynamic fkPrices;

	
- (NSMutableSet*)fkPricesSet {
	[self willAccessValueForKey:@"fkPrices"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"fkPrices"];
  
	[self didAccessValueForKey:@"fkPrices"];
	return result;
}
	

@dynamic installType;

	

@dynamic lifeCycleStatus;

	

@dynamic powerType;

	

@dynamic prodAttrSets;

	
- (NSMutableSet*)prodAttrSetsSet {
	[self willAccessValueForKey:@"prodAttrSets"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodAttrSets"];
  
	[self didAccessValueForKey:@"prodAttrSets"];
	return result;
}
	

@dynamic prodDesc;

	

@dynamic prodFetrVrnts;

	
- (NSMutableSet*)prodFetrVrntsSet {
	[self willAccessValueForKey:@"prodFetrVrnts"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodFetrVrnts"];
  
	[self didAccessValueForKey:@"prodFetrVrnts"];
	return result;
}
	

@dynamic prodSize;

	

@dynamic prodVrnts;

	
- (NSMutableSet*)prodVrntsSet {
	[self willAccessValueForKey:@"prodVrnts"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodVrnts"];
  
	[self didAccessValueForKey:@"prodVrnts"];
	return result;
}
	






@end
