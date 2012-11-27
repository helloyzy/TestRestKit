//
//  InnerBand
//
//  InnerBand - Making the iOS SDK greater from within!
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "InnerBandCore.h"


#import <Foundation/Foundation.h>


NSNumber *IB_BOX_BOOL(BOOL x) { return [NSNumber numberWithBool:x]; }
NSNumber *IB_BOX_INT(NSInteger x) { return [NSNumber numberWithInt:x]; }
NSNumber *IB_BOX_SHORT(short x) { return [NSNumber numberWithShort:x]; }
NSNumber *IB_BOX_LONG(long x) { return [NSNumber numberWithLong:x]; }
NSNumber *IB_BOX_UINT(NSUInteger x) { return [NSNumber numberWithUnsignedInt:x]; }
NSNumber *IB_BOX_FLOAT(float x) { return [NSNumber numberWithFloat:x]; }
NSNumber *IB_BOX_DOUBLE(double x) { return [NSNumber numberWithDouble:x]; }

BOOL IB_UNBOX_BOOL(NSNumber *x) { return [x boolValue]; }
NSInteger IB_UNBOX_INT(NSNumber *x) { return [x intValue]; }
short IB_UNBOX_SHORT(NSNumber *x) { return [x shortValue]; }
long IB_UNBOX_LONG(NSNumber *x) { return [x longValue]; }
NSUInteger IB_UNBOX_UINT(NSNumber *x) { return [x unsignedIntValue]; }
float IB_UNBOX_FLOAT(NSNumber *x) { return [x floatValue]; }
double IB_UNBOX_DOUBLE(NSNumber *x) { return [x doubleValue]; }


NSString *IB_STRINGIFY_BOOL(BOOL x) { return (x ? @"true" : @"false"); }
NSString *IB_STRINGIFY_INT(NSInteger x) { return [NSString stringWithFormat:@"%i", x]; }
NSString *IB_STRINGIFY_SHORT(short x) { return [NSString stringWithFormat:@"%i", x]; }
NSString *IB_STRINGIFY_LONG(long x) { return [NSString stringWithFormat:@"%li", x]; }
NSString *IB_STRINGIFY_UINT(NSUInteger x) { return [NSString stringWithFormat:@"%u", x]; }
NSString *IB_STRINGIFY_FLOAT(float x) { return [NSString stringWithFormat:@"%f", x]; }
NSString *IB_STRINGIFY_DOUBLE(double x) { return [NSString stringWithFormat:@"%f", x]; }


CGRect IB_RECT_WITH_X(CGRect rect, float x) { return CGRectMake(x, rect.origin.y, rect.size.width, rect.size.height); }
CGRect IB_RECT_WITH_Y(CGRect rect, float y) { return CGRectMake(rect.origin.x, y, rect.size.width, rect.size.height); }
CGRect IB_RECT_WITH_X_Y(CGRect rect, float x, float y) { return CGRectMake(x, y, rect.size.width, rect.size.height); }

CGRect IB_RECT_WITH_WIDTH_HEIGHT(CGRect rect, float width, float height) { return CGRectMake(rect.origin.x, rect.origin.y, width, height); }
CGRect IB_RECT_WITH_WIDTH(CGRect rect, float width) { return CGRectMake(rect.origin.x, rect.origin.y, width, rect.size.height); }
CGRect IB_RECT_WITH_HEIGHT(CGRect rect, float height) { return CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, height); }
CGRect IB_RECT_WITH_HEIGHT_FROM_BOTTOM(CGRect rect, float height) { return CGRectMake(rect.origin.x, rect.origin.y + rect.size.height - height, rect.size.width, height); }

CGRect IB_RECT_INSET_BY_LEFT_TOP_RIGHT_BOTTOM(CGRect rect, float left, float top, float right, float bottom) { return CGRectMake(rect.origin.x + left, rect.origin.y + top, rect.size.width - left - right, rect.size.height - top - bottom); }
CGRect IB_RECT_INSET_BY_TOP_BOTTOM(CGRect rect, float top, float bottom) { return CGRectMake(rect.origin.x, rect.origin.y + top, rect.size.width, rect.size.height - top - bottom); }
CGRect IB_RECT_INSET_BY_LEFT_RIGHT(CGRect rect, float left, float right) { return CGRectMake(rect.origin.x + left, rect.origin.y, rect.size.width - left - right, rect.size.height); }

CGRect IB_RECT_STACKED_OFFSET_BY_X(CGRect rect, float offset) { return CGRectMake(rect.origin.x + rect.size.width + offset, rect.origin.y, rect.size.width, rect.size.height); }
CGRect IB_RECT_STACKED_OFFSET_BY_Y(CGRect rect, float offset) { return CGRectMake(rect.origin.x, rect.origin.y + rect.size.height + offset, rect.size.width, rect.size.height); }


UIImage *IB_IMAGE(NSString *name) { return [UIImage imageNamed:name]; }
NSURL *IB_URL(NSString *urlString) { return [NSURL URLWithString:urlString]; }


double IB_DEG_TO_RAD(double degrees) { return degrees * M_PI / 180.0; }
double IB_RAD_TO_DEG(double radians) { return radians * 180.0 / M_PI; }

NSInteger IB_CONSTRAINED_INT_VALUE(NSInteger val, NSInteger min, NSInteger max) { return MIN(MAX(val, min), max); }
float IB_CONSTRAINED_FLOAT_VALUE(float val, float min, float max) { return MIN(MAX(val, min), max); }
double IB_CONSTRAINED_DOUBLE_VALUE(double val, double min, double max) { return MIN(MAX(val, min), max); }


BOOL IB_IS_EMPTY_STRING(NSString *str) { return !str || ![str isKindOfClass:NSString.class] || [str length] == 0; }
BOOL IB_IS_POPULATED_STRING(NSString *str) { return str && [str isKindOfClass:NSString.class] && [str length] > 0; }


float IB_RGB256_TO_COL(NSInteger rgb) { return rgb / 255.0f; }
NSInteger IB_COL_TO_RGB256(float col) { return (NSInteger)(col * 255.0); }


NSString *IB_DOCUMENTS_DIR(void) { return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]; }


BOOL IB_IS_IPAD(void) {
    return [UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad;
}

BOOL IB_IS_IPHONE(void) {
    return [UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone;
}

BOOL IB_IS_CAMERA_AVAILABLE(void) {
    return [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
}

BOOL IB_IS_GAME_CENTER_AVAILABLE(void) {
    return NSClassFromString(@"GKLocalPlayer") && [[[UIDevice currentDevice] systemVersion] compare:@"4.1" options:NSNumericSearch] != NSOrderedAscending;
}

BOOL IB_IS_EMAIL_ACCOUNT_AVAILABLE(void) {
    Class composerClass = NSClassFromString(@"MFMailComposeViewController");
    return [composerClass respondsToSelector:@selector(canSendMail)];
}

BOOL IB_IS_GPS_ENABLED(void) {
    return IB_IS_GPS_ENABLED_ON_DEVICE() && IB_IS_GPS_ENABLED_FOR_APP();
}

BOOL IB_IS_GPS_ENABLED_ON_DEVICE(void) {
    BOOL isLocationServicesEnabled;
    
    Class locationClass = NSClassFromString(@"CLLocationManager");
    NSMethodSignature *signature = [locationClass instanceMethodSignatureForSelector:@selector(locationServicesEnabled)];
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    
    [invocation invoke];
    [invocation getReturnValue:&isLocationServicesEnabled];
    
    return locationClass && isLocationServicesEnabled;    
}

BOOL IB_IS_GPS_ENABLED_FOR_APP(void) {
    // for 4.2+ only, we can check down to the app level
    #ifdef kCLAuthorizationStatusAuthorized
        Class locationClass = NSClassFromString(@"CLLocationManager");
    
        if ([locationClass respondsToSelector:@selector(authorizationStatus)]) {
            NSInteger authorizationStatus;
            
            NSMethodSignature *signature = [locationClass instanceMethodSignatureForSelector:@selector(authorizationStatus)];
            NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
            
            [invocation invoke];
            [invocation getReturnValue:&authorizationStatus];
            
            return locationClass && (authorizationStatus == kCLAuthorizationStatusAuthorized);    
        }
    #endif
    
    // we can't know this
    return YES;
}


void IB_DISPATCH_TO_MAIN_QUEUE(BOOL isAsync, void (^block)()) {
    if (isAsync) {
        dispatch_async(dispatch_get_main_queue(), block);
    } else {
        dispatch_sync(dispatch_get_main_queue(), block);        
    }
}

void IB_DISPATCH_TO_GLOBAL_QUEUE(dispatch_queue_priority_t priority, BOOL isAsync, void (^block)()) {
    if (isAsync) {    
        dispatch_async(dispatch_get_global_queue(priority, 0), block);
    } else {
        dispatch_sync(dispatch_get_global_queue(priority, 0), block);        
    }
}

void IB_DISPATCH_TO_QUEUE(dispatch_queue_t queue, BOOL isAsync, void (^block)()) {
    if (isAsync) {    
        dispatch_async(queue, block);
    } else {
        dispatch_sync(queue, block);
    }
}

void IB_DISPATCH_TO_MAIN_QUEUE_AFTER(NSTimeInterval delay, void (^block)()) {
    dispatch_time_t runTime = dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC);
    dispatch_after(runTime, dispatch_get_main_queue(), block);
}

void IB_DISPATCH_TO_GLOBAL_QUEUE_AFTER(NSTimeInterval delay, dispatch_queue_priority_t priority, void (^block)()) {
    dispatch_time_t runTime = dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC);
    dispatch_after(runTime, dispatch_get_global_queue(priority, 0), block);
}

void IB_DISPATCH_TO_QUEUE_AFTER(NSTimeInterval delay, dispatch_queue_t queue, void (^block)()) {
    dispatch_time_t runTime = dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC);
    dispatch_after(runTime, queue, block);
}




void CGContextAddRoundedRect(CGContextRef context, CGRect rect, CGFloat radius) {
	CGFloat minx = CGRectGetMinX(rect), midx = CGRectGetMidX(rect), maxx = CGRectGetMaxX(rect);
	CGFloat miny = CGRectGetMinY(rect), midy = CGRectGetMidY(rect), maxy = CGRectGetMaxY(rect);	
	CGContextMoveToPoint(context, minx, midy);
	CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
	CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
	CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
	CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
	CGContextClosePath(context);
}
void CGContextAddRoundedRectComplex(CGContextRef context, CGRect rect, const CGFloat radiuses[]) {
	CGFloat minx = CGRectGetMinX(rect), midx = CGRectGetMidX(rect), maxx = CGRectGetMaxX(rect);
	CGFloat miny = CGRectGetMinY(rect), midy = CGRectGetMidY(rect), maxy = CGRectGetMaxY(rect);	
	CGContextMoveToPoint(context, minx, midy);
	CGContextAddArcToPoint(context, minx, miny, midx, miny, radiuses[0]);
	CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radiuses[1]);
	CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radiuses[2]);
	CGContextAddArcToPoint(context, minx, maxy, minx, midy, radiuses[3]);
	CGContextClosePath(context);
}




@implementation NSArray (InnerBand)

- (NSArray *)sortedArrayAsDiacriticInsensitiveCaseInsensitive {
	return [self sortedArrayUsingSelector:@selector(diacriticInsensitiveCaseInsensitiveSort:)];
}

- (NSArray *)sortedArrayAsDiacriticInsensitive {
	return [self sortedArrayUsingSelector:@selector(diacriticInsensitiveSort:)];
}

- (NSArray *)sortedArrayAsCaseInsensitive {
	return [self sortedArrayUsingSelector:@selector(caseInsensitiveSort:)];
}

- (NSArray *)sortedArray {
	return [self sortedArrayUsingSelector:@selector(compare:)];
}

- (NSArray *)reversedArray {
    NSMutableArray *reversedArray = [NSMutableArray arrayWithCapacity:self.count];
    NSEnumerator *enumerator = [self reverseObjectEnumerator];
    
    for (id iObject in enumerator) {
        [reversedArray addObject:iObject];
    }
    
    return [reversedArray copy];
}

- (NSArray *)shuffledArray {
    NSMutableArray *shuffledArray = [NSMutableArray arrayWithArray:self];
    
    [shuffledArray shuffle];
    
    return [shuffledArray copy];
}

- (id)firstObject {
    return (self.count > 0) ? [self objectAtIndex:0] : nil;
}

#pragma mark -


- (NSArray *)map:(ib_enum_id_t)blk {
    NSMutableArray *mappedArray = [NSMutableArray array];
    
    for (NSInteger i = (self.count - 1); i >= 0; --i) {
        [mappedArray unshiftObject:blk([self objectAtIndex:i])];
    }
    
    return mappedArray;
}

@end



#import <time.h>

@implementation NSDate (InnerBand)

- (NSDate *)dateByAddingSeconds:(NSInteger)numSeconds {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit fromDate:self];
    [_datecomp setSecond:[_datecomp minute] + numSeconds];
    return [_calendar dateFromComponents:_datecomp];
}

- (NSDate *)dateByAddingMinutes:(NSInteger)numMinutes {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit fromDate:self];
    [_datecomp setMinute:[_datecomp minute] + numMinutes];
    return [_calendar dateFromComponents:_datecomp];
}

- (NSDate *)dateByAddingHours:(NSInteger)numHours {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit fromDate:self];
    [_datecomp setHour:[_datecomp hour] + numHours];
    return [_calendar dateFromComponents:_datecomp];
}

- (NSDate *)dateByAddingDays:(NSInteger)numDays {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit fromDate:self];
    [_datecomp setDay:[_datecomp day] + numDays];
    return [_calendar dateFromComponents:_datecomp];
}

- (NSDate *)dateByAddingWeeks:(NSInteger)numWeeks {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit fromDate:self];
    [_datecomp setWeek:[_datecomp week] + numWeeks];
    return [_calendar dateFromComponents:_datecomp];
}

- (NSDate *)dateByAddingMonths:(NSInteger)numMonths {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit fromDate:self];
    [_datecomp setMonth:[_datecomp month] + numMonths];
    return [_calendar dateFromComponents:_datecomp];
}

- (NSDate *)dateByAddingYears:(NSInteger)numYears {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit fromDate:self];
    [_datecomp setYear:[_datecomp year] + numYears];
    return [_calendar dateFromComponents:_datecomp];
}

- (NSInteger)utcYear {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit fromDate:self];
    return [_datecomp year];
}

- (NSInteger)utcMonth {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSMonthCalendarUnit fromDate:self];
    return [_datecomp month];
}

- (NSInteger)utcDay {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSDayCalendarUnit fromDate:self];
    return [_datecomp day];
}

- (NSInteger)utcHour {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSHourCalendarUnit fromDate:self];
    return [_datecomp hour];
}

- (NSInteger)utcMinute {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSMinuteCalendarUnit fromDate:self];
    return [_datecomp minute];
}

- (NSInteger)utcSecond {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSSecondCalendarUnit fromDate:self];
    return [_datecomp second];
}

- (NSInteger)year {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit fromDate:self];
    return [_datecomp year];
}

- (NSInteger)month {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSMonthCalendarUnit fromDate:self];
    return [_datecomp month];
}

- (NSInteger)day {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSDayCalendarUnit fromDate:self];
    return [_datecomp day];
}

- (NSInteger)hour {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSHourCalendarUnit fromDate:self];
    return [_datecomp hour];
}

- (NSInteger)minute {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSMinuteCalendarUnit fromDate:self];
    return [_datecomp minute];
}

- (NSInteger)second {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSSecondCalendarUnit fromDate:self];
    return [_datecomp second];
}

- (NSString *)formattedUTCDateStyle:(NSDateFormatterStyle)dateStyle {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];

	[format setDateStyle:dateStyle];
	[format setTimeStyle:NSDateFormatterNoStyle];
	[format setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedUTCTimeStyle:(NSDateFormatterStyle)timeStyle {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];

	[format setDateStyle:NSDateFormatterNoStyle];
	[format setTimeStyle:timeStyle];
	[format setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedUTCDateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];

	[format setDateStyle:dateStyle];
	[format setTimeStyle:timeStyle];
	[format setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedUTCDatePattern:(NSString *)datePattern {
	//
	// format document: http://unicode.org/reports/tr35/tr35-6.html#Date_Format_Patterns
	//
    NSDateFormatter *format = [[NSDateFormatter alloc] init];

	[format setDateFormat:datePattern];
	[format setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedDateStyle:(NSDateFormatterStyle)dateStyle {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];

	[format setDateStyle:dateStyle];
	[format setTimeStyle:NSDateFormatterNoStyle];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedTimeStyle:(NSDateFormatterStyle)timeStyle {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];

	[format setDateStyle:NSDateFormatterNoStyle];
	[format setTimeStyle:timeStyle];

	return [format stringFromDate:self];
}

- (NSString *)formattedDateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];

	[format setDateStyle:dateStyle];
	[format setTimeStyle:timeStyle];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedDatePattern:(NSString *)datePattern {
	//
	// format document: http://unicode.org/reports/tr35/tr35-6.html#Date_Format_Patterns
	//
    NSDateFormatter *format = [[NSDateFormatter alloc] init];

	[format setDateFormat:datePattern];
	
	return [format stringFromDate:self];
}

- (NSDate *)dateAsMidnight {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSMonthCalendarUnit|NSDayCalendarUnit|NSYearCalendarUnit fromDate:self];
	return [_calendar dateFromComponents:_datecomp];
}

- (BOOL)isSameDay:(NSDate *)rhs { 
	NSCalendar* calendar = [NSCalendar currentCalendar];
	NSDateComponents *comps = [calendar components:(NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:self];
	NSDateComponents *compsRHS = [calendar components:(NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:rhs];
    
	return [comps year] == [compsRHS year] && [comps month] == [compsRHS month] && [comps day] == [compsRHS day];
}

@end




#import <objc/runtime.h>

@class CoreDataStore;

@implementation NSManagedObject (InnerBand)

+ (id)create {
    return [self createInStore:[IBCoreDataStore mainStore]];
}

+ (id)createInStore:(IBCoreDataStore *)store {
    return [store createNewEntityByName:NSStringFromClass(self.class)];
}

+ (NSArray *)all {
    return [self allInStore:[IBCoreDataStore mainStore]];
}

+ (NSArray *)allForPredicate:(NSPredicate *)predicate {
    return [self allForPredicate:predicate inStore:[IBCoreDataStore mainStore]];
}

+ (NSArray *)allForPredicate:(NSPredicate *)predicate orderBy:(NSString *)key ascending:(BOOL)ascending {
    return [self allForPredicate:predicate orderBy:key ascending:ascending inStore:[IBCoreDataStore mainStore]];
}

+ (NSArray *)allOrderedBy:(NSString *)key ascending:(BOOL)ascending {
    return [self allOrderedBy:key ascending:ascending inStore:[IBCoreDataStore mainStore]];
}

+ (NSArray *)allInStore:(IBCoreDataStore *)store {
    NSError *error = nil;
    return [store allForEntity:NSStringFromClass(self.class) error:&error];    
}

+ (NSArray *)allForPredicate:(NSPredicate *)predicate inStore:(IBCoreDataStore *)store {
    NSError *error = nil;
    return [store allForEntity:NSStringFromClass(self.class) predicate:predicate error:&error];
}

+ (NSArray *)allForPredicate:(NSPredicate *)predicate orderBy:(NSString *)key ascending:(BOOL)ascending inStore:(IBCoreDataStore *)store {
    NSError *error = nil;
    return [store allForEntity:NSStringFromClass(self.class) predicate:predicate orderBy:key ascending:ascending error:&error];    
}

+ (NSArray *)allOrderedBy:(NSString *)key ascending:(BOOL)ascending inStore:(IBCoreDataStore *)store {
    NSError *error = nil;
    return [store allForEntity:NSStringFromClass(self.class) orderBy:key ascending:ascending error:&error];
}

+ (id)first {
    return [self firstInStore:[IBCoreDataStore mainStore]];
}

+ (id)firstWithKey:(NSString *)key value:(NSObject *)value {
    return [self firstWithKey:key value:value inStore:[IBCoreDataStore mainStore]];
}

+ (id)firstInStore:(IBCoreDataStore *)store {
    NSError *error = nil;
    return [store entityByName:NSStringFromClass(self.class) error:&error];    
}

+ (id)firstWithKey:(NSString *)key value:(NSObject *)value inStore:(IBCoreDataStore *)store {
    NSError *error = nil;
    return [store entityByName:NSStringFromClass(self.class) key:key value:value error:&error];    
}

- (void)destroy {
    [self.managedObjectContext deleteObject:self];
}

+ (void)destroyAll {
    return [self destroyAllInStore:[IBCoreDataStore mainStore]];
}

+ (void)destroyAllInStore:(IBCoreDataStore *)store {
    return [store removeAllEntitiesByName:NSStringFromClass(self.class)];
}

@end




static const void* IBRetainNoOp(CFAllocatorRef allocator, const void *value) { return value; }
static void IBReleaseNoOp(CFAllocatorRef allocator, const void *value) { }

@implementation NSMutableArray (InnerBand)

+ (NSMutableArray *)arrayUnretaining {
	CFArrayCallBacks callbacks = kCFTypeArrayCallBacks;
	callbacks.retain = IBRetainNoOp;
	callbacks.release = IBReleaseNoOp;

    #if __has_feature(objc_arc)
        return (__bridge_transfer NSMutableArray*)CFArrayCreateMutable(nil, 0, &callbacks);
    #else
        return [(NSMutableArray*)CFArrayCreateMutable(nil, 0, &callbacks) autorelease];
    #endif
}

- (void)sortDiacriticInsensitiveCaseInsensitive {
	[self sortUsingSelector:@selector(diacriticInsensitiveCaseInsensitiveSort:)];
}

- (void)sortDiacriticInsensitive {
	[self sortUsingSelector:@selector(diacriticInsensitiveSort:)];
}

- (void)sortCaseInsensitive {
	[self sortUsingSelector:@selector(caseInsensitiveSort:)];
}

#pragma mark -

- (void)pushObject:(id)obj {
    [self addObject:obj];
}

- (id)popObject {
    id pop = [self lastObject];

    [self removeLastObject];

    return pop;
}

- (id)shiftObject {
    if (self.count > 0) {
        id shft = [self objectAtIndex:0];

        [self removeObjectAtIndex:0];
        return shft;
    }

    return nil;
}

- (void)unshiftObject:(id)obj {
    [self insertObject:obj atIndex:0];
}

#pragma mark -

- (void)deleteIf:(ib_enum_bool_t)blk {
    for (NSInteger i = (self.count - 1); i >= 0; --i) {
        if (blk([self objectAtIndex:i])) {
            [self removeObjectAtIndex:i];
        }
    }
}

#pragma mark -

- (void)shuffle {
    // shuffle it 3 times because 3 is magical
    for (NSInteger times=0; times < 3; ++times) {
        for (NSInteger i=self.count - 1; i >= 0; --i) {
            NSInteger fromIndex = arc4random() % self.count;
            NSInteger toIndex = arc4random() % self.count;
            
            [self exchangeObjectAtIndex:fromIndex withObjectAtIndex:toIndex];
        }
    }
}

- (void)reverse {
    for (NSInteger i=0, j=self.count - 1; i < j; ++i, --j) {
        [self exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
}

@end




@implementation NSMutableString (InnerBand)

- (void)trim {
    NSString *trimmedString = [self trimmedString];
    
    // replace self
    [self replaceCharactersInRange:NSMakeRange(0, self.length) withString:trimmedString];
}

@end




@implementation NSNumber (InnerBand)

- (NSString *)formattedCurrency {
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];

	[format setNumberStyle:NSNumberFormatterCurrencyStyle];
	
	return [format stringFromNumber:self];
}

- (NSString *)formattedFlatCurrency {
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];

    [format setNumberStyle:NSNumberFormatterDecimalStyle];
    [format setMinimumFractionDigits:2];
    [format setMaximumFractionDigits:2];
    
    return [format stringFromNumber:self];
}

- (NSString *)formattedCurrencyWithMinusSign {
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];

	[format setNumberStyle:NSNumberFormatterCurrencyStyle];
	[format setNegativeFormat:@"-$#,##0.00"];

	return [format stringFromNumber:self];
}

- (NSString *)formattedDecimal {
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];

	[format setNumberStyle:NSNumberFormatterDecimalStyle];
	
	return [format stringFromNumber:self];
}

- (NSString *)formattedFlatDecimal {
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];

	[format setNumberStyle:NSNumberFormatterDecimalStyle];
	[format setGroupingSeparator:@""];
	
	return [format stringFromNumber:self];
}

- (NSString *)formattedSpellOut {
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];

	[format setNumberStyle:NSNumberFormatterSpellOutStyle];
	
	return [format stringFromNumber:self];
}

@end





@implementation NSObject (InnerBand)

- (id)performSelector:(SEL)selector withObject:(id)p1 withObject:(id)p2 withObject:(id)p3 {
	NSMethodSignature *sig = [self methodSignatureForSelector:selector];
	if (sig) {
		NSInvocation* invo = [NSInvocation invocationWithMethodSignature:sig];
		[invo setTarget:self];
		[invo setSelector:selector];
		[invo setArgument:&p1 atIndex:2];
		[invo setArgument:&p2 atIndex:3];
		[invo setArgument:&p3 atIndex:4];
		[invo invoke];
		if (sig.methodReturnLength) {
			id anObject;
			[invo getReturnValue:&anObject];
			return anObject;
		} else {
			return nil;
		}
	} else {
		return nil;
	}
}

- (id)performSelector:(SEL)selector withObject:(id)p1 withObject:(id)p2 withObject:(id)p3 withObject:(id)p4 {
	NSMethodSignature *sig = [self methodSignatureForSelector:selector];
	if (sig) {
		NSInvocation* invo = [NSInvocation invocationWithMethodSignature:sig];
		[invo setTarget:self];
		[invo setSelector:selector];
		[invo setArgument:&p1 atIndex:2];
		[invo setArgument:&p2 atIndex:3];
		[invo setArgument:&p3 atIndex:4];
		[invo setArgument:&p4 atIndex:5];
		[invo invoke];
		if (sig.methodReturnLength) {
			id anObject;
			[invo getReturnValue:&anObject];
			return anObject;
		} else {
			return nil;
		}
	} else {
		return nil;
	}
}

- (void)performSelectorInBackground:(SEL)selector withObject:(id)p1 withObject:(id)p2 {
	NSMethodSignature *sig = [self methodSignatureForSelector:selector];

	if (sig) {
		NSInvocation* invo = [NSInvocation invocationWithMethodSignature:sig];
		[invo setTarget:self];
		[invo setSelector:selector];
		[invo setArgument:&p1 atIndex:2];
		[invo setArgument:&p2 atIndex:3];
        [invo retainArguments];        
		[invo performSelectorInBackground:@selector(invoke) withObject:nil];
	}
}

- (void)performSelectorInBackground:(SEL)selector withObject:(id)p1 withObject:(id)p2 withObject:(id)p3 {
	NSMethodSignature *sig = [self methodSignatureForSelector:selector];
	
	if (sig) {
		NSInvocation* invo = [NSInvocation invocationWithMethodSignature:sig];
		[invo setTarget:self];
		[invo setSelector:selector];
		[invo setArgument:&p1 atIndex:2];
		[invo setArgument:&p2 atIndex:3];
		[invo setArgument:&p3 atIndex:4];
        [invo retainArguments];        
		[invo performSelectorInBackground:@selector(invoke) withObject:nil];
	}
}

- (void)performSelectorInBackground:(SEL)selector withObject:(id)p1 withObject:(id)p2 withObject:(id)p3 withObject:(id)p4{
	NSMethodSignature *sig = [self methodSignatureForSelector:selector];
	
	if (sig) {
		NSInvocation* invo = [NSInvocation invocationWithMethodSignature:sig];
		[invo setTarget:self];
		[invo setSelector:selector];
		[invo setArgument:&p1 atIndex:2];
		[invo setArgument:&p2 atIndex:3];
		[invo setArgument:&p3 atIndex:4];
		[invo setArgument:&p4 atIndex:5];
        [invo retainArguments];        
		[invo performSelectorInBackground:@selector(invoke) withObject:nil];
	}
}

@end




@implementation NSString (InnerBand)

- (NSComparisonResult)diacriticInsensitiveCaseInsensitiveSort:(NSString *)rhs {
	return [self compare:rhs options:NSDiacriticInsensitiveSearch | NSCaseInsensitiveSearch];	
}

- (NSComparisonResult)diacriticInsensitiveSort:(NSString *)rhs {
	return [self compare:rhs options:NSDiacriticInsensitiveSearch];	
}

- (NSComparisonResult)caseInsensitiveSort:(NSString *)rhs {
	return [self compare:rhs options:NSCaseInsensitiveSearch];	
}

- (NSString *)asBundlePath {
	NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
	return [resourcePath stringByAppendingPathComponent:self];
}

- (NSString *)asDocumentsPath {
    __strong static NSString* documentsPath = nil;

	if (!documentsPath) {
		NSArray *dirs = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);

        documentsPath = [dirs objectAtIndex:0];
	}
	
	return [documentsPath stringByAppendingPathComponent:self];
}

- (BOOL)contains:(NSString *)substring {
    return ([self rangeOfString:substring].location != NSNotFound);
}

- (BOOL)contains:(NSString *)substring options:(NSStringCompareOptions)options {
    return ([self rangeOfString:substring options:options].location != NSNotFound);
}

- (NSString *)trimmedString {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end




static NSString *entityList[] = {
    @"&quot;",
    @"&amp;",
    @"&apos;",
    @"&lt;",
    @"&gt;",
};

IBXMLCharMode XMLModeForUnichar(UniChar c);
static NSString *AutoreleasedCloneForXML(NSString *src, BOOL escaping);

IBXMLCharMode XMLModeForUnichar(UniChar c) {
    // Per XML spec Section 2.2 Characters
    //   ( http://www.w3.org/TR/REC-xml/#charsets )
    if (c <= 0xd7ff)  {
        if (c >= 0x20) {
            switch (c) {
                case 34:
                    return kGTMXMLCharModeEncodeQUOT;
                case 38:
                    return kGTMXMLCharModeEncodeAMP;
                case 39:
                    return kGTMXMLCharModeEncodeAPOS;
                case 60:
                    return kGTMXMLCharModeEncodeLT;
                case 62:
                    return kGTMXMLCharModeEncodeGT;
                default:
                    return kGTMXMLCharModeValid;
            }
        } else {
            if (c == '\n')
                return kGTMXMLCharModeValid;
            if (c == '\r')
                return kGTMXMLCharModeValid;
            if (c == '\t')
                return kGTMXMLCharModeValid;
            return kGTMXMLCharModeInvalid;
        }
    }
    
    if (c < 0xE000)
        return kGTMXMLCharModeInvalid;
    
    if (c <= 0xFFFD)
        return kGTMXMLCharModeValid;
    
    return kGTMXMLCharModeInvalid;
}

static NSString *AutoreleasedCloneForXML(NSString *src, BOOL escaping) {
    NSUInteger length = [src length];

    if (!length) {
        return src;
    }
    
    NSMutableString *finalString = [NSMutableString string];
    
    // this block is common between GTMNSString+HTML and GTMNSString+XML but
    // it's so short that it isn't really worth trying to share.
    const UniChar *buffer = CFStringGetCharactersPtr((__bridge CFStringRef)src);

    if (!buffer) {
        // We want this buffer to be autoreleased.
        NSMutableData *data = [NSMutableData dataWithLength:length * sizeof(UniChar)];
        if (!data) {
            return nil;
        }
        [src getCharacters:[data mutableBytes]];
        buffer = [data bytes];
    }
    
    const UniChar *goodRun = buffer;
    NSUInteger goodRunLength = 0;
    
    for (NSUInteger i = 0; i < length; ++i) {
        
        IBXMLCharMode cMode = XMLModeForUnichar(buffer[i]);
        
        // valid chars go as is, and if we aren't doing entities, then
        // everything goes as is.
        if ((cMode == kGTMXMLCharModeValid) ||
            (!escaping && (cMode != kGTMXMLCharModeInvalid))) {
            // goes as is
            goodRunLength += 1;
        } else {
            // it's something we have to encode or something invalid
            
            // start by adding what we already collected (if anything)
            if (goodRunLength) {
                CFStringAppendCharacters((__bridge CFMutableStringRef)finalString, 
                                         goodRun, 
                                         goodRunLength);
                goodRunLength = 0;
            }
            
            // if it wasn't invalid, add the encoded version
            if (cMode != kGTMXMLCharModeInvalid) {
                // add this encoded
                [finalString appendString:entityList[cMode]];
            }
            
            // update goodRun to point to the next UniChar
            goodRun = buffer + i + 1;
        }
    }
    
    // anything left to add?
    if (goodRunLength) {
        CFStringAppendCharacters((__bridge CFMutableStringRef)finalString, 
                                 goodRun, 
                                 goodRunLength);
    }
    return finalString;
}

@implementation NSString (XMLEncoding)

- (NSString *)stringWithXMLSanitizingAndEscaping {
    return AutoreleasedCloneForXML(self, YES);
}

- (NSString *)stringWithXMLSanitizing {
    return AutoreleasedCloneForXML(self, NO);
}

@end




const NSInteger MAX_RGB_COLOR_VALUE = 0xff;
const NSInteger MAX_RGB_COLOR_VALUE_FLOAT = 255.0f;

@implementation UIColor (InnerBand)

+ (UIColor *)colorWith256Red:(NSInteger)r green:(NSInteger)g blue:(NSInteger)b {
	return [UIColor colorWithRed:IB_RGB256_TO_COL(r) green:IB_RGB256_TO_COL(g) blue:IB_RGB256_TO_COL(b) alpha:1.0];
}

+ (UIColor *)colorWith256Red:(NSInteger)r green:(NSInteger)g blue:(NSInteger)b alpha:(NSInteger)a {
	return [UIColor colorWithRed:IB_RGB256_TO_COL(r) green:IB_RGB256_TO_COL(g) blue:IB_RGB256_TO_COL(b) alpha:IB_RGB256_TO_COL(a)];
}
			
+ (UIColor *) colorWithRGBA:(uint) hex {
	return [UIColor colorWithRed:(CGFloat)((hex>>24) & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT 
						   green:(CGFloat)((hex>>16) & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT 
							blue:(CGFloat)((hex>>8) & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT 
						   alpha:(CGFloat)((hex) & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT];
}

+ (UIColor *) colorWithARGB:(uint) hex {
	return [UIColor colorWithRed:(CGFloat)((hex>>16) & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT 
						   green:(CGFloat)((hex>>8) & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT 
							blue:(CGFloat)(hex & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT 
						   alpha:(CGFloat)((hex>>24) & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT];
}

+ (UIColor *) colorWithRGB:(uint) hex {
	return [UIColor colorWithRed:(CGFloat)((hex>>16) & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT 
						   green:(CGFloat)((hex>>8) & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT 
							blue:(CGFloat)(hex & MAX_RGB_COLOR_VALUE) / MAX_RGB_COLOR_VALUE_FLOAT 
						   alpha:1.0];
}

+ (UIColor *)colorWithHexString:(NSString *)hexString {
	uint hex;
	
	// chop off hash
	if ([hexString characterAtIndex:0] == '#') {
		hexString = [hexString substringFromIndex:1];
	}
	
	// depending on character count, generate a color
	NSInteger hexStringLength = hexString.length;
	
	if (hexStringLength == 3) {
		// RGB, once character each (each should be repeated)
		hexString = [NSString stringWithFormat:@"%c%c%c%c%c%c", [hexString characterAtIndex:0], [hexString characterAtIndex:0], [hexString characterAtIndex:1], [hexString characterAtIndex:1], [hexString characterAtIndex:2], [hexString characterAtIndex:2]];
		hex = strtoul([hexString UTF8String], NULL, 16);	

		return [self colorWithRGB:hex];
	} else if (hexStringLength == 4) {
		// RGBA, once character each (each should be repeated)
		hexString = [NSString stringWithFormat:@"%c%c%c%c%c%c%c%c", [hexString characterAtIndex:0], [hexString characterAtIndex:0], [hexString characterAtIndex:1], [hexString characterAtIndex:1], [hexString characterAtIndex:2], [hexString characterAtIndex:2], [hexString characterAtIndex:3], [hexString characterAtIndex:3]];
		hex = strtoul([hexString UTF8String], NULL, 16);		

		return [self colorWithRGBA:hex];
	} else if (hexStringLength == 6) {
		// RGB
		hex = strtoul([hexString UTF8String], NULL, 16);		
		
		return [self colorWithRGB:hex];
	} else if (hexStringLength == 8) {
		// RGBA
		hex = strtoul([hexString UTF8String], NULL, 16);		

		return [self colorWithRGBA:hex];
	}
	
	// illegal
	[NSException raise:@"Invalid Hex String" format:@"Hex string invalid: %@", hexString];
	
	return nil;
}

- (NSString *) hexString {
	const CGFloat *components = CGColorGetComponents(self.CGColor);
	
	NSInteger red = (int)(components[0] * MAX_RGB_COLOR_VALUE);
	NSInteger green = (int)(components[1] * MAX_RGB_COLOR_VALUE);
	NSInteger blue = (int)(components[2] * MAX_RGB_COLOR_VALUE);
	NSInteger alpha = (int)(components[3] * MAX_RGB_COLOR_VALUE);
	
	if (alpha < 255) {
		return [NSString stringWithFormat:@"#%02x%02x%02x%02x", red, green, blue, alpha];
	}
	
	return [NSString stringWithFormat:@"#%02x%02x%02x", red, green, blue];
}

- (UIColor*) colorBrighterByPercent:(float) percent {
	percent = MAX(percent, 0.0f);
	percent = (percent + 100.0f) / 100.0f;
	const CGFloat* rgba = CGColorGetComponents(self.CGColor);
	CGFloat r = rgba[0];
	CGFloat g = rgba[1];
	CGFloat b = rgba[2];
	CGFloat a = rgba[3];
	CGFloat newR = r * percent;
	CGFloat newG = g * percent;
	CGFloat newB = b * percent;
	return [UIColor colorWithRed:newR green:newG blue:newB alpha:a];
}

- (UIColor*) colorDarkerByPercent:(float) percent {
	percent = MAX(percent, 0.0f);
	percent /= 100.0f;
	const CGFloat* rgba = CGColorGetComponents(self.CGColor);
	CGFloat r = rgba[0];
	CGFloat g = rgba[1];
	CGFloat b = rgba[2];
	CGFloat a = rgba[3];
	CGFloat newR = r - (r * percent);
	CGFloat newG = g - (g * percent);
	CGFloat newB = b - (b * percent);
	return [UIColor colorWithRed:newR green:newG blue:newB alpha:a];
}

- (CGFloat)r {
	const CGFloat* rgba = CGColorGetComponents(self.CGColor);
	return rgba[0];
}

- (CGFloat)g {
	const CGFloat* rgba = CGColorGetComponents(self.CGColor);
	return rgba[1];
}

- (CGFloat)b {
	const CGFloat* rgba = CGColorGetComponents(self.CGColor);
	return rgba[2];
}

- (CGFloat)a {
	const CGFloat* rgba = CGColorGetComponents(self.CGColor);
	return rgba[3];
}
						
@end





@implementation UIImage (InnerBand)

- (void)drawInRect:(CGRect)rect contentMode:(UIViewContentMode)contentMode {
	BOOL clip = NO;
	CGRect originalRect = rect;
	if (self.size.width != rect.size.width || self.size.height != rect.size.height) {
		clip = contentMode != UIViewContentModeScaleAspectFill
		&& contentMode != UIViewContentModeScaleAspectFit;
		rect = [self convertRect:rect withContentMode:contentMode];
	}
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	if (clip) {
		CGContextSaveGState(context);
		CGContextAddRect(context, originalRect);
		CGContextClip(context);
	}
	
	[self drawInRect:rect];
	
	if (clip) {
		CGContextRestoreGState(context);
	}
}

- (CGRect)convertRect:(CGRect)rect withContentMode:(UIViewContentMode)contentMode {
	if (self.size.width != rect.size.width || self.size.height != rect.size.height) {
		if (contentMode == UIViewContentModeLeft) {
			return CGRectMake(rect.origin.x,
							  rect.origin.y + floor(rect.size.height/2 - self.size.height/2),
							  self.size.width, self.size.height);
		} else if (contentMode == UIViewContentModeRight) {
			return CGRectMake(rect.origin.x + (rect.size.width - self.size.width),
							  rect.origin.y + floor(rect.size.height/2 - self.size.height/2),
							  self.size.width, self.size.height);
		} else if (contentMode == UIViewContentModeTop) {
			return CGRectMake(rect.origin.x + floor(rect.size.width/2 - self.size.width/2),
							  rect.origin.y,
							  self.size.width, self.size.height);
		} else if (contentMode == UIViewContentModeBottom) {
			return CGRectMake(rect.origin.x + floor(rect.size.width/2 - self.size.width/2),
							  rect.origin.y + floor(rect.size.height - self.size.height),
							  self.size.width, self.size.height);
		} else if (contentMode == UIViewContentModeCenter) {
			return CGRectMake(rect.origin.x + floor(rect.size.width/2 - self.size.width/2),
							  rect.origin.y + floor(rect.size.height/2 - self.size.height/2),
							  self.size.width, self.size.height);
		} else if (contentMode == UIViewContentModeBottomLeft) {
			return CGRectMake(rect.origin.x,
							  rect.origin.y + floor(rect.size.height - self.size.height),
							  self.size.width, self.size.height);
		} else if (contentMode == UIViewContentModeBottomRight) {
			return CGRectMake(rect.origin.x + (rect.size.width - self.size.width),
							  rect.origin.y + (rect.size.height - self.size.height),
							  self.size.width, self.size.height);
		} else if (contentMode == UIViewContentModeTopLeft) {
			return CGRectMake(rect.origin.x,
							  rect.origin.y,
							  
							  self.size.width, self.size.height);
		} else if (contentMode == UIViewContentModeTopRight) {
			return CGRectMake(rect.origin.x + (rect.size.width - self.size.width),
							  rect.origin.y,
							  self.size.width, self.size.height);
		} else if (contentMode == UIViewContentModeScaleAspectFill) {
			CGSize imageSize = self.size;
			if (imageSize.height < imageSize.width) {
				imageSize.width = floor((imageSize.width/imageSize.height) * rect.size.height);
				imageSize.height = rect.size.height;
			} else {
				imageSize.height = floor((imageSize.height/imageSize.width) * rect.size.width);
				imageSize.width = rect.size.width;
			}
			return CGRectMake(rect.origin.x + floor(rect.size.width/2 - imageSize.width/2),
							  rect.origin.y + floor(rect.size.height/2 - imageSize.height/2),
							  imageSize.width, imageSize.height);
		} else if (contentMode == UIViewContentModeScaleAspectFit) {
			CGSize imageSize = self.size;
			if (imageSize.height < imageSize.width) {
				imageSize.height = floor((imageSize.height/imageSize.width) * rect.size.width);
				imageSize.width = rect.size.width;
			} else {
				imageSize.width = floor((imageSize.width/imageSize.height) * rect.size.height);
				imageSize.height = rect.size.height;
			}
			return CGRectMake(rect.origin.x + floor(rect.size.width/2 - imageSize.width/2),
							  rect.origin.y + floor(rect.size.height/2 - imageSize.height/2),
							  imageSize.width, imageSize.height);
		}
	}
	return rect;
}

@end




@implementation UIView (InnerBand)

- (CGFloat)left {
	return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x {
	CGRect frame = self.frame;
	frame.origin.x = x;
	self.frame = frame;
}

- (CGFloat)top {
	return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y {
	CGRect frame = self.frame;
	frame.origin.y = y;
	self.frame = frame;
}

- (CGFloat)right {
	return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
	CGRect frame = self.frame;
	frame.origin.x = right - frame.size.width;
	self.frame = frame;
}

- (CGFloat)bottom {
	return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
	CGRect frame = self.frame;
	frame.origin.y = bottom - frame.size.height;
	self.frame = frame;
}

- (CGFloat)centerX {
	return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
	self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerY {
	return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
	self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)width {
	return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
	CGRect frame = self.frame;
	frame.size.width = width;
	self.frame = frame;
}

- (CGFloat)height {
	return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
	CGRect frame = self.frame;
	frame.size.height = height;
	self.frame = frame;
}

- (void)setVisible:(BOOL)value {
	self.hidden = !value;
}

- (BOOL)visible {
	return !self.hidden;
}

@end





@implementation IBViewUtil

+ (id) loadInstanceOfView:(Class)clazz fromNibNamed:(NSString *)name {
	id obj = nil;
	NSArray *topObjects = [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil];
	for (id currentObject in topObjects) {
		if ([currentObject isKindOfClass:clazz]) {
			obj = currentObject;
			break;
		}
	}
	return obj;
}

@end




__strong static NSManagedObjectModel *gManagedObjectModel;
__strong static NSPersistentStoreCoordinator *gPersistentStoreCoordinator;

static IBCoreDataStore *gMainStoreInstance;

@interface IBCoreDataStore ()

- (void)createManagedObjectContext;

@end

@implementation IBCoreDataStore

+ (IBCoreDataStore *)mainStore {
	@synchronized (self) {
		if (!gMainStoreInstance) {
			gMainStoreInstance = [[IBCoreDataStore alloc] init];
		}
	}
	
	return gMainStoreInstance;
}

+ (IBCoreDataStore *)createStore {
    return [[IBCoreDataStore alloc] init];
}

+ (void)initialize {
	NSError *error = nil;

	// create the global managed object model
    gManagedObjectModel = [NSManagedObjectModel mergedModelFromBundles:nil];    

	// create the global persistent store
    gPersistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:gManagedObjectModel];
	
	NSString *storeLocation = [IB_DOCUMENTS_DIR() stringByAppendingPathComponent:@"CoreDataStore.sqlite"];
	NSURL *storeURL = [NSURL fileURLWithPath:storeLocation];

    NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:
                                       IB_BOX_BOOL(YES), NSMigratePersistentStoresAutomaticallyOption,
                                       IB_BOX_BOOL(YES), NSInferMappingModelAutomaticallyOption, nil];

	if (![gPersistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:options error:&error]) {
		NSLog(@"Error creating persistantStoreCoordinator: %@, %@", error, [error userInfo]);
		abort();
    }    
}

+ (IBCoreDataStore *)createStoreWithContext:(NSManagedObjectContext *)context {
    return [[IBCoreDataStore alloc] initWithContext:context];
}

- (id)init {
	if ((self = [super init])) {
		[self createManagedObjectContext];
	}
	
	return self;
}

- (id)initWithContext:(NSManagedObjectContext *)context {
	if ((self = [super init])) {
        _managedObjectContext = context;
	}
	
	return self;
}

#pragma mark -

- (NSManagedObjectContext *)context {
	return _managedObjectContext;
}

- (void)clearAllData {
	NSError *error = nil;
	
	// clear existing stack
    gManagedObjectModel = nil;
    gPersistentStoreCoordinator = nil;
    _managedObjectContext = nil;
    
	// remove persistence file
	NSString *storeLocation = [IB_DOCUMENTS_DIR() stringByAppendingPathComponent:@"CoreDataStore.sqlite"];
	NSURL *storeURL = [NSURL fileURLWithPath:storeLocation];
	
	// remove
	@try {
		[[NSFileManager defaultManager] removeItemAtPath:storeURL.path error:&error];
	} @catch (NSException *exception) {
		// ignore, totally normal
	}
	
	// init again
	[IBCoreDataStore initialize];
	[self createManagedObjectContext];
}

/**
 Save the context.
 */
- (void)save { 
	NSError *error = nil;
	
	if ([_managedObjectContext hasChanges] && ![_managedObjectContext save:&error]) {
		NSArray* detailedErrors = [[error userInfo] objectForKey:NSDetailedErrorsKey];
		
		if(detailedErrors != nil && [detailedErrors count] > 0) {
			for(NSError* detailedError in detailedErrors) {
				NSLog(@"  DetailedError: %@", [detailedError userInfo]);
			}
		}
		else {
			NSLog(@"  %@", [error userInfo]);
		}
	} 
}

#pragma mark - Deprecated Accessors (Use NSManagedObject+InnerBand)

- (NSArray *)allForEntity:(NSString *)entityName error:(NSError **)error {
	NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];
	
	// execute
	NSArray *ret = [_managedObjectContext executeFetchRequest:request error:error];

	return ret;
}

- (NSArray *)allForEntity:(NSString *)entityName predicate:(NSPredicate *)predicate error:(NSError **)error {
	NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];
	
	// predicate
	[request setPredicate:predicate];
	
	// execute
	return [_managedObjectContext executeFetchRequest:request error:error];
}

- (NSArray *)allForEntity:(NSString *)entityName predicate:(NSPredicate *)predicate orderBy:(NSString *)key ascending:(BOOL)ascending error:(NSError **)error {
	NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];
	NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:key ascending:ascending];
	
	// predicate
	[request setPredicate:predicate];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	
	// execute
	return [_managedObjectContext executeFetchRequest:request error:error];
}

- (NSArray *)allForEntity:(NSString *)entityName orderBy:(NSString *)key ascending:(BOOL)ascending error:(NSError **)error {
	NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];
	NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:key ascending:ascending];
	
	// predicate
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	 
	// execute
	return [_managedObjectContext executeFetchRequest:request error:error];
}

- (NSManagedObject *)entityByName:(NSString *)entityName error:(NSError **)error {
	NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];
	
	// execute
	NSArray *values = [_managedObjectContext executeFetchRequest:request error:error];
	
	if (values.count > 0) {
		// this method is designed for accessing a single object, but if there's more just give the first
		return (NSManagedObject *)[values objectAtIndex:0];
	}
	
	return nil;
}

- (NSManagedObject *)entityByName:(NSString *)entityName key:(NSString *)key value:(NSObject *)value error:(NSError **)error {
	NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K == %@", key, value];
	NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];

	// predicate
	[request setPredicate:predicate];
	 
	// execute
	NSArray *values = [_managedObjectContext executeFetchRequest:request error:error];
	
	if (values.count > 0) {
		// this method is designed for accessing a single object, but if there's more just give the first
		return (NSManagedObject *)[values objectAtIndex:0];
	}
	
	return nil;
}

- (NSManagedObject *)entityByURI:(NSURL *)uri {
	NSManagedObjectID *oid = [gPersistentStoreCoordinator managedObjectIDForURIRepresentation:uri]; 

    return [self entityByObjectID:oid];
}

- (NSManagedObject *)entityByObjectID:(NSManagedObjectID *)oid {
	if (oid) {
		return [_managedObjectContext objectWithID:oid];
	}
    
	return nil;    
}

- (NSManagedObject *)createNewEntityByName:(NSString *)entityName {
	return [NSEntityDescription insertNewObjectForEntityForName:entityName inManagedObjectContext:_managedObjectContext]; 
}

- (void)removeEntity:(NSManagedObject *)entity {
	@try {
		[_managedObjectContext deleteObject:entity];
	} @catch(id exception) {}
}

/* Remove all objects of an entity. */
- (void)removeAllEntitiesByName:(NSString *)entityName {
	NSError *error = nil;
	
	// get all objects for entity
	// TODO: we can fetch these in a more minimalistic way, would be faster, so do it if we have time
	NSArray *objects = [self allForEntity:entityName error:&error];
	
	for (NSManagedObject *iObject in objects) {
		[_managedObjectContext deleteObject:iObject];
	}
}

- (NSEntityDescription *)entityDescriptionForEntity:(NSString *)entityName {
	return [NSEntityDescription entityForName:entityName inManagedObjectContext:_managedObjectContext];
}

#pragma mark -

- (void)createManagedObjectContext {
	_managedObjectContext = [[NSManagedObjectContext alloc] init];
	[_managedObjectContext setPersistentStoreCoordinator:gPersistentStoreCoordinator];
}

@end




@implementation IBDispatchMessage

@synthesize asynchronous = asynchronous_;
@synthesize name = name_;

- (id)init {
	self = [super init];
	
	if (self) {
		name_ = nil;
        userInfo_ = [[NSMutableDictionary alloc] init];
		asynchronous_ = NO;
	}
	
	return self;
}

- (id)initWithName:(NSString *)name userInfo:(NSDictionary *)userInfo {
	self = [super init];

	if (self) {
		name_ = [name copy];
        userInfo_ = [userInfo mutableCopy];
	}
	
	return self;
}

- (id)initWithName:(NSString *)name andObjectsAndKeys:(id)firstObject, ... {
	self = [super init];
    
	if (self) {
        // construct user info
        NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
        id currentObject = nil;
        id currentKey = nil;
        va_list argList;
        
        if (firstObject) {
            va_start(argList, firstObject);
            currentObject = firstObject;
            
            do {
                currentKey = va_arg(argList, id);
                [userInfo setObject:currentObject forKey:currentKey];
            } while ((currentObject = va_arg(argList, id)));
            
            va_end(argList);        
        }
        
		name_ = [name copy];
        userInfo_ = [userInfo mutableCopy];
	}
	
	return self;    
}

+ (id)messageWithName:(NSString *)name andObjectsAndKeys:(id)firstObject, ... {
    // construct user info
    NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
    id currentObject = nil;
    id currentKey = nil;
    va_list argList;
    
    if (firstObject) {
        va_start(argList, firstObject);
        currentObject = firstObject;
        
        do {
            currentKey = va_arg(argList, id);
            [userInfo setObject:currentObject forKey:currentKey];
        } while ((currentObject = va_arg(argList, id)));
        
        va_end(argList);        
    }

	IBDispatchMessage *message = [[IBDispatchMessage alloc] initWithName:name userInfo:userInfo];
    
    va_end(argList);
    
    return message;
}

+ (id)messageWithName:(NSString *)name userInfo:(NSDictionary *)userInfo {
	IBDispatchMessage *message = [[IBDispatchMessage alloc] initWithName:name userInfo:userInfo];

    return message;
}

#pragma mark -

- (NSDictionary *)userInfo {
    return [userInfo_ copy];
}

- (void)setUserInfoValue:(id)value forKey:(NSString *)key {
    [userInfo_ setValue:value forKey:key];
}

#pragma mark -

- (void)inputData:(NSData *)input {
	// input and do nothing
}

- (NSData *)outputData {
	// output nothing
	return nil;
}

@end




@interface IBMessageCenter (private)

+ (NSMutableArray *)getTargetActionsForMessageName:(NSString *)name source:(id)source;
+ (NSMutableArray *)getTargetActionsForMessageName:(NSString *)name sourceDescription:(NSString *)sourceDescription;
+ (void)runProcessorInThread:(IBDispatchMessage *)message targetActions:(NSArray *)targetActions;

@end

static NSMutableDictionary *_messageListeners = nil;

static BOOL _debuggingEnabled = NO;

static NSString *getSourceIdentifier(id obj) {
	return [NSString stringWithFormat:@"%p", obj];
}

@implementation IBMessageCenter

+ (NSInteger)getCountOfListeningSources {
	return [_messageListeners count];
}

+ (void)setDebuggingEnabled:(BOOL)enabled {
	_debuggingEnabled = enabled;
}

+ (BOOL)isDebuggingEnabled {
	return _debuggingEnabled;
}

#pragma mark -

+ (void)initialize {
	_messageListeners = [[NSMutableDictionary alloc] init];
}

#pragma mark -

+ (void)addGlobalMessageListener:(NSString *)name target:(id)target action:(SEL)action {
	[IBMessageCenter addMessageListener:name source:nil target:target action:action];
}

+ (void)addMessageListener:(NSString *)name source:(id)source target:(id)target action:(SEL)action {
	// remove existing listener (avoids duplication)
	[IBMessageCenter removeMessageListener:name source:source target:target action:action];
	
	// add listener
	NSMutableArray *targetActions = [IBMessageCenter getTargetActionsForMessageName:name source:source];
    IBTargetAction *targetAction = [[IBTargetAction alloc] init];
    
    targetAction.target = target;
    targetAction.action = NSStringFromSelector(action);
    
	[targetActions addObject:targetAction];
}

#pragma mark -

+ (void)removeMessageListener:(NSString *)name source:(id)source target:(id)target action:(SEL)action {
	NSMutableArray *targetActions = [IBMessageCenter getTargetActionsForMessageName:name source:source];
	
	// remove all matching target/action pairs
	for (NSInteger i = targetActions.count - 1; i >= 0; --i) {
		IBTargetAction *targetAction = (IBTargetAction *)[targetActions objectAtIndex:i];
		id iTarget = targetAction.target;
		
		// remove if matched
		if (iTarget == target) {
			SEL iAction = NSSelectorFromString(targetAction.action);
			
			if (iAction == action) {
				[targetActions removeObjectAtIndex:i];
			}
		}
	}
}

+ (void)removeMessageListener:(NSString *)name source:(id)source target:(id)target {
	NSMutableArray *targetActions = [IBMessageCenter getTargetActionsForMessageName:name source:source];
	
	// remove all matching targets
	for (NSInteger i = targetActions.count - 1; i >= 0; --i) {
		IBTargetAction *targetAction = (IBTargetAction *)[targetActions objectAtIndex:i];
		id iTarget = targetAction.target;
		
		// remove if matched
		if (iTarget == target) {
			[targetActions removeObjectAtIndex:i];
		}
	}
}

+ (void)removeMessageListener:(NSString *)name target:(id)target action:(SEL)action {
	for (NSMutableDictionary *iMessageNames in _messageListeners) {
		for (NSMutableArray *iTargetActions in iMessageNames) {
			// remove all matching target/action pairs
			for (NSInteger i = iTargetActions.count - 1; i >= 0; --i) {
                IBTargetAction *targetAction = (IBTargetAction *)[iTargetActions objectAtIndex:i];
                id iTarget = targetAction.target;
				
				// remove if matched
				if (iTarget == target) {
                    SEL iAction = NSSelectorFromString(targetAction.action);
					
					if (iAction == action) {
						[iTargetActions removeObjectAtIndex:i];
					}
				}
			}
		}
	}
}

+ (void)removeMessageListenersForTarget:(id)target {
	for (NSString *iSourceDescription in _messageListeners) {
		NSMutableDictionary *targetActionsByName = [_messageListeners objectForKey:iSourceDescription];
		for (NSString *iTargetActionName in targetActionsByName) {
			NSMutableArray *iTargetActions = [targetActionsByName objectForKey:iTargetActionName];
			
			// remove all matching target/action pairs
			for (NSInteger i = iTargetActions.count - 1; i >= 0; --i) {
                IBTargetAction *targetAction = (IBTargetAction *)[iTargetActions objectAtIndex:i];
                id iTarget = targetAction.target;
				
				// remove if matched
				if (iTarget == target) {
					[iTargetActions removeObjectAtIndex:i];
				}
			}
		}
	}
}

#pragma mark -

+ (void)sendGlobalMessageNamed:(NSString *)name {
	[IBMessageCenter sendMessageNamed:name forSource:nil];
}

+ (void)sendGlobalMessageNamed:(NSString *)name withUserInfo:(NSDictionary *)userInfo {
	[IBMessageCenter sendMessageNamed:name withUserInfo:userInfo forSource:nil];
}

+ (void)sendGlobalMessageNamed:(NSString *)name withUserInfoKey:(id)key andValue:(id)value {
	NSDictionary *userInfo = [NSDictionary dictionaryWithObject:value forKey:key];
	[IBMessageCenter sendGlobalMessageNamed:name withUserInfo:userInfo];
}

+ (void)sendGlobalMessageNamed:(NSString *)name withObjectsAndKeys:(id)firstObject, ... {
    NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
    id currentObject = nil;
    id currentKey = nil;
    va_list argList;
    
    if (firstObject) {
        va_start(argList, firstObject);
        currentObject = firstObject;
        
        do {
            currentKey = va_arg(argList, id);
            [userInfo setObject:currentObject forKey:currentKey];
        } while ((currentObject = va_arg(argList, id)));
        
        va_end(argList);        
    }

    [IBMessageCenter sendMessageNamed:name withUserInfo:userInfo forSource:nil ];
}

+ (void)sendGlobalMessage:(IBDispatchMessage *)message {
	[IBMessageCenter sendMessage:message forSource:nil];
}

+ (void)sendMessageNamed:(NSString *)name forSource:(id)source {
	IBDispatchMessage *message = [IBDispatchMessage messageWithName:name userInfo:nil];
	
	// dispatch
	[IBMessageCenter sendMessage:message forSource:source];
}

+ (void)sendMessageNamed:(NSString *)name withUserInfo:(NSDictionary *)userInfo forSource:(id)source {
	IBDispatchMessage *message = [IBDispatchMessage messageWithName:name userInfo:userInfo];
	
	// dispatch
	[IBMessageCenter sendMessage:message forSource:source];
}

+ (void)sendMessageNamed:(NSString *)name withUserInfoKey:(id)key andValue:(id)value forSource:(id)source {
	NSDictionary *userInfo = [NSDictionary dictionaryWithObject:value forKey:key];
	[IBMessageCenter sendMessageNamed:name withUserInfo:userInfo forSource:source];
}

+ (void)sendMessageNamed:(NSString *)name forSource:(id)source withObjectsAndKeys:(id)firstObject, ... {
    // construct user info
    NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
    id currentObject = nil;
    id currentKey = nil;
    va_list argList;
    
    if (firstObject) {
        va_start(argList, firstObject);
        currentObject = firstObject;
        
        do {
            currentKey = va_arg(argList, id);
            [userInfo setObject:currentObject forKey:currentKey];
        } while ((currentObject = va_arg(argList, id)));
        
        va_end(argList);        
    }

	// dispatch
	[IBMessageCenter sendMessageNamed:name withUserInfo:userInfo forSource:source];
}

+ (void)sendMessage:(IBDispatchMessage *)message forSource:(id)source {
	// global or local delivery only
	NSArray *targetActions = [IBMessageCenter getTargetActionsForMessageName:message.name source:source];
	
	if (message.isAsynchronous) {
		// run completely in thread
		[IBMessageCenter performSelectorInBackground:@selector(runProcessorInThread:targetActions:) withObject:message withObject:targetActions];
	} else {
		// process message in sync
		IBMessageProcessor *processor = [[IBMessageProcessor alloc] initWithMessage:message targetActions:targetActions];

		[processor process];
	}
}

+ (void)runProcessorInThread:(IBDispatchMessage *)message targetActions:(NSArray *)targetActions {
	// pool
    @autoreleasepool {
        // process message
        IBMessageProcessor *processor = [[IBMessageProcessor alloc] initWithMessage:message targetActions:targetActions];

        // process
        [processor process];
    }
}

#pragma mark -

+ (NSMutableArray *)getTargetActionsForMessageName:(NSString *)name source:(id)source {
	// if no source given, treat as global listener (use self as key)
	if (!source) {
		source = [NSNull null];
	}
	
	return [self.class getTargetActionsForMessageName:name sourceDescription:getSourceIdentifier(source)];
}

+ (NSMutableArray *)getTargetActionsForMessageName:(NSString *)name sourceDescription:(NSString *)sourceDescription {
	NSMutableDictionary *messageNames = [_messageListeners objectForKey:sourceDescription];
	
	// add a new dictionary if there isn't one
	if (!messageNames) {
		[_messageListeners setObject:(messageNames = [NSMutableDictionary dictionary]) forKey:sourceDescription];
	}
	
	NSMutableArray *targetActions = [messageNames objectForKey:name];
	
	// add a new array if there isn't one
	if (!targetActions) {
		[messageNames setObject:(targetActions = [NSMutableArray array]) forKey:name];
	}
	
	return targetActions;
}

@end





@implementation IBMessageProcessor

- (id)initWithMessage:(IBDispatchMessage *)message targetActions:(NSArray *)targetActions {
	self = [super init];
	
	if (self) {
        _message = message;
		_targetActions = [targetActions copy];
	}
	
	return self;
}

- (void)process {
	// process
	[_message inputData:nil];
	
	// dispatch for all target/action pairs
	for (NSInteger i = _targetActions.count - 1; i >= 0; --i) {
        IBTargetAction *targetAction = (IBTargetAction *)[_targetActions objectAtIndex:i];
		NSObject *iTarget = targetAction.target;
		SEL iAction = NSSelectorFromString(targetAction.action);
		
		// perform on main thread
		if (_message.isAsynchronous) {
			[iTarget performSelectorOnMainThread:iAction withObject:_message waitUntilDone:NO];
		} else {
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
                        [iTarget performSelector:iAction withObject:_message];
            #pragma clang diagnostic pop						
		}
	}
}

@end




@implementation IBTargetAction

@synthesize target;
@synthesize action;

@end




@implementation IBBlockBasedDispatchMessage

+ (id)messageWithName:(NSString *)name isAsynchronous:(BOOL)isAsync input:(void (^)(NSData *))inputBlock output:(NSData * (^)(void))outputBlock {
    IBBlockBasedDispatchMessage *msg = [[IBBlockBasedDispatchMessage alloc] initWithName:name userInfo:nil];
    msg.asynchronous = isAsync;

    msg->inputBlock_ = [inputBlock copy];
    msg->outputBlock_ = [outputBlock copy];

    return msg;
}

- (void)inputData:(NSData *)input {
    inputBlock_(input);
}

- (NSData *)outputData {
    return outputBlock_();    
}

@end



#import <UIKit/UIKit.h>

@implementation IBHTTPGetRequestMessage

+ (id)messageWithName:(NSString *)name userInfo:(NSDictionary *)userInfo url:(NSString *)url {
	IBHTTPGetRequestMessage *message = [[IBHTTPGetRequestMessage alloc] initWithName:name userInfo:userInfo];
	
	// must be async
	message.asynchronous = YES;
	
    message->_url = [url copy];
	message->_headersDict = [[NSMutableDictionary alloc] init];
	
	// autorelease
    return message;
}

+ (id)messageWithName:(NSString *)name userInfo:(NSDictionary *)userInfo url:(NSString *)url processBlock:(ib_http_proc_t)processBlock {
	IBHTTPGetRequestMessage *message = [[IBHTTPGetRequestMessage alloc] initWithName:name userInfo:userInfo];
	
	// must be async
	message.asynchronous = YES;
	
    message->_url = [url copy];
	message->_headersDict = [[NSMutableDictionary alloc] init];
    message->_processBlock = [processBlock copy];
    
    return message;
}

#pragma mark -

- (void)addHeaderValue:(NSString *)value forKey:(NSString *)key {
    [_headersDict setValue:value forKey:key];
}

- (void)inputData:(NSData *)input {
	NSString *subbedURL = _url;
	NSError *error = nil;
	NSHTTPURLResponse *response = nil;
	
	// perform substitutions on URL
	for (NSString *key in self.userInfo) {
		NSString *subToken = [NSString stringWithFormat:@"[%@]", key];
        
		if ([[self.userInfo objectForKey:key] isKindOfClass:NSString.class]) {
            subbedURL = [subbedURL stringByReplacingOccurrencesOfString:subToken withString:[(NSString *)[self.userInfo objectForKey:key] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        }
	}
    
	// debug
    if ([IBMessageCenter isDebuggingEnabled]) {
        NSLog(@"OPEN URL: %@", subbedURL);
    }
	
	// generate request
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:subbedURL] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10];
    [request setAllHTTPHeaderFields:_headersDict];
    
	NSData *content = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
	if (!error) {
		_responseData = [content mutableCopy];
        
		if (response) {
            [self setUserInfoValue:IB_BOX_INT(response.statusCode) forKey:HTTP_STATUS_CODE];
            
            if (_processBlock) {
                _processBlock(_responseData, response.statusCode);
            }
		} else if (_processBlock) {
            _processBlock(_responseData, 0);
        }
	} else {
		_responseData = nil;
        
        if (_processBlock) {
            _processBlock(_responseData, response ? response.statusCode : 0);
        }
    }
}

- (NSData *)outputData {
	return _responseData;
}

@end



#import <UIKit/UIKit.h>

@implementation IBHTTPPostRequestMessage

+ (id)messageWithName:(NSString *)name userInfo:(NSDictionary *)userInfo url:(NSString *)url body:(NSString *)body {
	IBHTTPPostRequestMessage *message = [[IBHTTPPostRequestMessage alloc] initWithName:name userInfo:userInfo];
	
	// must be async
	message.asynchronous = YES;
	
	message->_url = [url copy];
	message->_headersDict = [[NSMutableDictionary alloc] init];
	message->_body = [body copy];

	// autorelease
    return message;
}

+ (id)messageWithName:(NSString *)name userInfo:(NSDictionary *)userInfo url:(NSString *)url body:(NSString *)body processBlock:(ib_http_proc_t)processBlock {
	IBHTTPPostRequestMessage *message = [[IBHTTPPostRequestMessage alloc] initWithName:name userInfo:userInfo];
	
	// must be async
	message.asynchronous = YES;
	
	message->_url = [url copy];
	message->_headersDict = [[NSMutableDictionary alloc] init];
	message->_body = [body copy];
    message->_processBlock = [processBlock copy];
    
	// autorelease
    return message;
}

#pragma mark -

- (void)addHeaderValue:(NSString *)value forKey:(NSString *)key {
    [_headersDict setValue:value forKey:key];
}

- (void)inputData:(NSData *)input {
	NSString *subbedURL = _url;
	NSError *error = nil;
	NSHTTPURLResponse *response = nil;
	
	// perform substitutions on URL
	for (NSString *key in self.userInfo) {
		NSString *subToken = [NSString stringWithFormat:@"[%@]", key];
        
		if ([[self.userInfo objectForKey:key] isKindOfClass:NSString.class]) {
            subbedURL = [subbedURL stringByReplacingOccurrencesOfString:subToken withString:[(NSString *)[self.userInfo objectForKey:key] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        }
	}
    
	// debug
    if ([IBMessageCenter isDebuggingEnabled]) {
        NSLog(@"OPEN URL: %@", subbedURL);
    }
	
	// generate request
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:subbedURL] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10];
    [request setHTTPMethod:@"POST"];
    [request setAllHTTPHeaderFields:_headersDict];
    [request setHTTPBody:[_body dataUsingEncoding:NSUTF8StringEncoding]];
	NSData *content = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
	if (!error) {
		_responseData = [content mutableCopy];
        
		if (response) {
            [self setUserInfoValue:IB_BOX_INT(response.statusCode) forKey:HTTP_STATUS_CODE];
            
            if (_processBlock) {
                _processBlock(_responseData, response.statusCode);
            }
        } else if (_processBlock) {
            _processBlock(_responseData, 0);
        }
	} else {
		_responseData = nil;
        
        if (_processBlock) {
            _processBlock(_responseData, response ? response.statusCode : 0);
        }
	}
}

- (NSData *)outputData {
	return _responseData;
}

@end




@implementation IBSequencedMessage

- (id)initWithName:(NSString *)name userInfo:(NSDictionary *)userInfo sequence:(NSArray *)messageSequence {
	self = [super initWithName:name userInfo:userInfo];
	
	if (self) {
		_messageSequence = [messageSequence mutableCopy];

		// if any message in the sequence is asynchronous, the whole thing is asynchronous
		for (IBDispatchMessage *iMessage in _messageSequence) {
			if (iMessage.isAsynchronous) {
				self.asynchronous = YES;
				break;
			}
		}
	}
	
	return self;
}

+ (id)messageWithName:(NSString *)name userInfo:(NSDictionary *)userInfo sequence:(NSArray *)messageSequence {
	IBSequencedMessage *message = [[IBSequencedMessage alloc] initWithName:name userInfo:userInfo sequence:messageSequence];

    return message;
}

#pragma mark -

- (void)inputData:(NSData *)input {
	_outputOfLastMessage = nil;

	// process each message in sequence
	for (IBDispatchMessage *iMessage in _messageSequence) {
		// process
		[iMessage inputData:_outputOfLastMessage];

		// gather output
        _outputOfLastMessage = [iMessage outputData];
	}
}           


- (NSData *)outputData {
	// this is the output of the last message we processed in inputData
	return _outputOfLastMessage;
}

@end

