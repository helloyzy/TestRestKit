// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Brand.m instead.

#import "_Brand.h"

const struct BrandAttributes BrandAttributes = {
	.brandID = @"brandID",
	.displayOrder = @"displayOrder",
	.name = @"name",
};

const struct BrandRelationships BrandRelationships = {
	.children = @"children",
	.parent = @"parent",
	.productCategories = @"productCategories",
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





@dynamic name;






@dynamic children;

	
- (NSMutableSet*)childrenSet {
	[self willAccessValueForKey:@"children"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"children"];
  
	[self didAccessValueForKey:@"children"];
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
	






@end
