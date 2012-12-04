//
//  NSArray+ECDataRelated.m
//  ipad
//
//  Created by AAA on 11/30/12.
//  Copyright (c) 2012 Electrolux. All rights reserved.
//

#import "NSArray+ECDataRelated.h"

@implementation NSArray (ECSorting)

- (NSArray *) sortByDispOrd {
    return [self sortByDispOrd:YES];
}

- (NSArray *) sortByDispOrd : (BOOL) asc {
    // NSSortDescriptor *displayOrder = [NSSortDescriptor sortDescriptorWithKey:@"displayOrder" ascending:asc];
    // return [self sortedArrayUsingDescriptors:@[displayOrder]];
    return [self sortByField:@"dsp_ord" ascending:asc];
}

- (NSArray *) sortByField:(NSString *) field ascending:(BOOL) asc {
    NSSortDescriptor * sortDesc = [NSSortDescriptor sortDescriptorWithKey:field ascending:asc];
    return [self sortedArrayUsingDescriptors:@[sortDesc]];
}

@end
