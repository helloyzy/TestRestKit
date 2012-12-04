//
//  NSArray+ECDataRelated.h
//  ipad
//
//  Created by AAA on 11/30/12.
//  Copyright (c) 2012 Electrolux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ECDataRelated)

// sort by display order, AESC
- (NSArray *) sortByDispOrd;
- (NSArray *) sortByDispOrd : (BOOL) asc;

- (NSArray *) sortByField:(NSString *) field ascending:(BOOL) asc;

@end
