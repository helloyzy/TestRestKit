// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ChnlVisStatus.m instead.

#import "_ChnlVisStatus.h"

const struct ChnlVisStatusAttributes ChnlVisStatusAttributes = {
	.chnl_vis_stts_desc = @"chnl_vis_stts_desc",
	.chnl_vis_stts_nm = @"chnl_vis_stts_nm",
	.dsp_ord = @"dsp_ord",
	.is_actv = @"is_actv",
	.is_protected = @"is_protected",
	.mkg_chnl_vis_stts_id = @"mkg_chnl_vis_stts_id",
};

const struct ChnlVisStatusRelationships ChnlVisStatusRelationships = {
	.prodVrnts = @"prodVrnts",
};

const struct ChnlVisStatusFetchedProperties ChnlVisStatusFetchedProperties = {
};

@implementation ChnlVisStatusID
@end

@implementation _ChnlVisStatus

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ChnlVisStatus" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ChnlVisStatus";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ChnlVisStatus" inManagedObjectContext:moc_];
}

- (ChnlVisStatusID*)objectID {
	return (ChnlVisStatusID*)[super objectID];
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
	if ([key isEqualToString:@"is_protectedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"is_protected"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mkg_chnl_vis_stts_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mkg_chnl_vis_stts_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic chnl_vis_stts_desc;






@dynamic chnl_vis_stts_nm;






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





@dynamic is_protected;



- (int16_t)is_protectedValue {
	NSNumber *result = [self is_protected];
	return [result shortValue];
}

- (void)setIs_protectedValue:(int16_t)value_ {
	[self setIs_protected:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveIs_protectedValue {
	NSNumber *result = [self primitiveIs_protected];
	return [result shortValue];
}

- (void)setPrimitiveIs_protectedValue:(int16_t)value_ {
	[self setPrimitiveIs_protected:[NSNumber numberWithShort:value_]];
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





@dynamic prodVrnts;

	
- (NSMutableSet*)prodVrntsSet {
	[self willAccessValueForKey:@"prodVrnts"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"prodVrnts"];
  
	[self didAccessValueForKey:@"prodVrnts"];
	return result;
}
	






@end
