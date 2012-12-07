// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Product.m instead.

#import "_Product.h"

const struct ProductAttributes ProductAttributes = {
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
	.fkPrices = @"fkPrices",
	.installType = @"installType",
	.lifeCycleStatus = @"lifeCycleStatus",
	.modelYr = @"modelYr",
	.powerType = @"powerType",
	.prodDesc = @"prodDesc",
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




@dynamic mkg_brnd_modl_yr_id;



- (int16_t)mkg_brnd_modl_yr_idValue {
	NSNumber *result = [self mkg_brnd_modl_yr_id];
	return [result shortValue];
}

- (void)setMkg_brnd_modl_yr_idValue:(int16_t)value_ {
	[self setMkg_brnd_modl_yr_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_brnd_modl_yr_idValue {
	NSNumber *result = [self primitiveMkg_brnd_modl_yr_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_brnd_modl_yr_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_brnd_modl_yr_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_brnd_prod_cat_id;



- (int16_t)mkg_brnd_prod_cat_idValue {
	NSNumber *result = [self mkg_brnd_prod_cat_id];
	return [result shortValue];
}

- (void)setMkg_brnd_prod_cat_idValue:(int16_t)value_ {
	[self setMkg_brnd_prod_cat_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_brnd_prod_cat_idValue {
	NSNumber *result = [self primitiveMkg_brnd_prod_cat_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_brnd_prod_cat_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_brnd_prod_cat_id:[NSNumber numberWithShort:value_]];
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





@dynamic mkg_nmnl_powr_typ_id;



- (int16_t)mkg_nmnl_powr_typ_idValue {
	NSNumber *result = [self mkg_nmnl_powr_typ_id];
	return [result shortValue];
}

- (void)setMkg_nmnl_powr_typ_idValue:(int16_t)value_ {
	[self setMkg_nmnl_powr_typ_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_nmnl_powr_typ_idValue {
	NSNumber *result = [self primitiveMkg_nmnl_powr_typ_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_nmnl_powr_typ_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_nmnl_powr_typ_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_nmnl_prod_sz_id;



- (int16_t)mkg_nmnl_prod_sz_idValue {
	NSNumber *result = [self mkg_nmnl_prod_sz_id];
	return [result shortValue];
}

- (void)setMkg_nmnl_prod_sz_idValue:(int16_t)value_ {
	[self setMkg_nmnl_prod_sz_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_nmnl_prod_sz_idValue {
	NSNumber *result = [self primitiveMkg_nmnl_prod_sz_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_nmnl_prod_sz_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_nmnl_prod_sz_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_prod_desc_id;



- (int16_t)mkg_prod_desc_idValue {
	NSNumber *result = [self mkg_prod_desc_id];
	return [result shortValue];
}

- (void)setMkg_prod_desc_idValue:(int16_t)value_ {
	[self setMkg_prod_desc_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_desc_idValue {
	NSNumber *result = [self primitiveMkg_prod_desc_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_desc_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_desc_id:[NSNumber numberWithShort:value_]];
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





@dynamic mkg_prod_lif_stts_id;



- (int16_t)mkg_prod_lif_stts_idValue {
	NSNumber *result = [self mkg_prod_lif_stts_id];
	return [result shortValue];
}

- (void)setMkg_prod_lif_stts_idValue:(int16_t)value_ {
	[self setMkg_prod_lif_stts_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_lif_stts_idValue {
	NSNumber *result = [self primitiveMkg_prod_lif_stts_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_lif_stts_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_lif_stts_id:[NSNumber numberWithShort:value_]];
}





@dynamic prod_cd;






@dynamic fkPrices;

	
- (NSMutableSet*)fkPricesSet {
	[self willAccessValueForKey:@"fkPrices"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"fkPrices"];
  
	[self didAccessValueForKey:@"fkPrices"];
	return result;
}
	

@dynamic installType;

	

@dynamic lifeCycleStatus;

	

@dynamic modelYr;

	

@dynamic powerType;

	

@dynamic prodDesc;

	

@dynamic prodSize;

	

@dynamic prodVrnts;

	
- (NSMutableSet*)prodVrntsSet {
	[self willAccessValueForKey:@"prodVrnts"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodVrnts"];
  
	[self didAccessValueForKey:@"prodVrnts"];
	return result;
}
	






@end
