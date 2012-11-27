// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ProductCategory.m instead.

#import "_ProductCategory.h"

const struct ProductCategoryAttributes ProductCategoryAttributes = {
	.areaName = @"areaName",
	.displayOrder = @"displayOrder",
	.name = @"name",
	.productCategoryID = @"productCategoryID",
};

const struct ProductCategoryRelationships ProductCategoryRelationships = {
	.brand = @"brand",
	.children = @"children",
	.parent = @"parent",
};

const struct ProductCategoryFetchedProperties ProductCategoryFetchedProperties = {
};

@implementation ProductCategoryID
@end

@implementation _ProductCategory

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ProductCategory" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ProductCategory";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ProductCategory" inManagedObjectContext:moc_];
}

- (ProductCategoryID*)objectID {
	return (ProductCategoryID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"displayOrderValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"displayOrder"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"productCategoryIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"productCategoryID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic areaName;






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






@dynamic productCategoryID;



- (int16_t)productCategoryIDValue {
	NSNumber *result = [self productCategoryID];
	return [result shortValue];
}

- (void)setProductCategoryIDValue:(int16_t)value_ {
	[self setProductCategoryID:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveProductCategoryIDValue {
	NSNumber *result = [self primitiveProductCategoryID];
	return [result shortValue];
}

- (void)setPrimitiveProductCategoryIDValue:(int16_t)value_ {
	[self setPrimitiveProductCategoryID:[NSNumber numberWithShort:value_]];
}





@dynamic brand;

	

@dynamic children;

	
- (NSMutableSet*)childrenSet {
	[self willAccessValueForKey:@"children"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"children"];
  
	[self didAccessValueForKey:@"children"];
	return result;
}
	

@dynamic parent;

	






@end
