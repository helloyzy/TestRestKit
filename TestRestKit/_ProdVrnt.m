// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProdVrnt.m instead.

#import "_ProdVrnt.h"

const struct ProdVrntAttributes ProdVrntAttributes = {
	.mkg_chnl_vis_stts_id = @"mkg_chnl_vis_stts_id",
	.mkg_cons_vis_stts_id = @"mkg_cons_vis_stts_id",
	.mkg_dig_aset_ownr_id = @"mkg_dig_aset_ownr_id",
	.mkg_prod_id = @"mkg_prod_id",
	.mkg_prod_vrnt_id = @"mkg_prod_vrnt_id",
	.mkg_vrtn_typ_cd_id = @"mkg_vrtn_typ_cd_id",
	.prod_vrnt_sku = @"prod_vrnt_sku",
	.prod_vrnt_upc = @"prod_vrnt_upc",
};

const struct ProdVrntRelationships ProdVrntRelationships = {
	.product = @"product",
	.vrtnTypeCode = @"vrtnTypeCode",
};

const struct ProdVrntFetchedProperties ProdVrntFetchedProperties = {
};

@implementation ProdVrntID
@end

@implementation _ProdVrnt

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProdVrnt" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProdVrnt";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProdVrnt" inManagedObjectContext:moc_];
}

- (ProdVrntID*)objectID {
	return (ProdVrntID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"mkg_chnl_vis_stts_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_chnl_vis_stts_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_cons_vis_stts_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_cons_vis_stts_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_dig_aset_ownr_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_dig_aset_ownr_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_prod_vrnt_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_vrnt_id"];
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




@dynamic mkg_chnl_vis_stts_id;



- (int16_t)mkg_chnl_vis_stts_idValue {
	NSNumber *result = [self mkg_chnl_vis_stts_id];
	return [result shortValue];
}

- (void)setMkg_chnl_vis_stts_idValue:(int16_t)value_ {
	[self setMkg_chnl_vis_stts_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_chnl_vis_stts_idValue {
	NSNumber *result = [self primitiveMkg_chnl_vis_stts_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_chnl_vis_stts_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_chnl_vis_stts_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_cons_vis_stts_id;



- (int16_t)mkg_cons_vis_stts_idValue {
	NSNumber *result = [self mkg_cons_vis_stts_id];
	return [result shortValue];
}

- (void)setMkg_cons_vis_stts_idValue:(int16_t)value_ {
	[self setMkg_cons_vis_stts_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_cons_vis_stts_idValue {
	NSNumber *result = [self primitiveMkg_cons_vis_stts_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_cons_vis_stts_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_cons_vis_stts_id:[NSNumber numberWithShort:value_]];
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





@dynamic mkg_prod_vrnt_id;



- (int16_t)mkg_prod_vrnt_idValue {
	NSNumber *result = [self mkg_prod_vrnt_id];
	return [result shortValue];
}

- (void)setMkg_prod_vrnt_idValue:(int16_t)value_ {
	[self setMkg_prod_vrnt_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_vrnt_idValue {
	NSNumber *result = [self primitiveMkg_prod_vrnt_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_vrnt_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_vrnt_id:[NSNumber numberWithShort:value_]];
}





@dynamic mkg_vrtn_typ_cd_id;



- (int16_t)mkg_vrtn_typ_cd_idValue {
	NSNumber *result = [self mkg_vrtn_typ_cd_id];
	return [result shortValue];
}

- (void)setMkg_vrtn_typ_cd_idValue:(int16_t)value_ {
	[self setMkg_vrtn_typ_cd_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_vrtn_typ_cd_idValue {
	NSNumber *result = [self primitiveMkg_vrtn_typ_cd_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_vrtn_typ_cd_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_vrtn_typ_cd_id:[NSNumber numberWithShort:value_]];
}





@dynamic prod_vrnt_sku;






@dynamic prod_vrnt_upc;






@dynamic product;

	

@dynamic vrtnTypeCode;

	






@end
