// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProductArea.m instead.

#import "_ProductArea.h"

const struct ProductAreaAttributes ProductAreaAttributes = {
	.dsp_ord = @"dsp_ord",
	.is_actv = @"is_actv",
	.mkg_prod_area_id = @"mkg_prod_area_id",
	.prod_area_desc = @"prod_area_desc",
	.prod_area_nm = @"prod_area_nm",
};

const struct ProductAreaRelationships ProductAreaRelationships = {
	.prodCat = @"prodCat",
};

const struct ProductAreaFetchedProperties ProductAreaFetchedProperties = {
};

@implementation ProductAreaID
@end

@implementation _ProductArea

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProductArea" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProductArea";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProductArea" inManagedObjectContext:moc_];
}

- (ProductAreaID*)objectID {
	return (ProductAreaID*)[super objectID];
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
	if ([key isEqualToString:@"mkg_prod_area_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_prod_area_id"];
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





@dynamic mkg_prod_area_id;



- (int16_t)mkg_prod_area_idValue {
	NSNumber *result = [self mkg_prod_area_id];
	return [result shortValue];
}

- (void)setMkg_prod_area_idValue:(int16_t)value_ {
	[self setMkg_prod_area_id:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveMkg_prod_area_idValue {
	NSNumber *result = [self primitiveMkg_prod_area_id];
	return [result shortValue];
}

- (void)setPrimitiveMkg_prod_area_idValue:(int16_t)value_ {
	[self setPrimitiveMkg_prod_area_id:[NSNumber numberWithShort:value_]];
}





@dynamic prod_area_desc;






@dynamic prod_area_nm;






@dynamic prodCat;

	
- (NSMutableSet*)prodCatSet {
	[self willAccessValueForKey:@"prodCat"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodCat"];
  
	[self didAccessValueForKey:@"prodCat"];
	return result;
}
	






@end
