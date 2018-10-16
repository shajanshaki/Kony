#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFDate)
+(JSValue*) valueWithCFGregorianUnits: (CFGregorianUnits) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"years": @(s.years),
		@"months": @(s.months),
		@"days": @(s.days),
		@"hours": @(s.hours),
		@"minutes": @(s.minutes),
		@"seconds": @(s.seconds),
	} inContext: context];
}
-(CFGregorianUnits) toCFGregorianUnits {
	return (CFGregorianUnits) {
		(SInt32) [self[@"years"] toInt32],
		(SInt32) [self[@"months"] toInt32],
		(SInt32) [self[@"days"] toInt32],
		(SInt32) [self[@"hours"] toInt32],
		(SInt32) [self[@"minutes"] toInt32],
		(double) [self[@"seconds"] toDouble],
	};
}
+(JSValue*) valueWithCFGregorianDate: (CFGregorianDate) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"year": @(s.year),
		@"month": @(s.month),
		@"day": @(s.day),
		@"hour": @(s.hour),
		@"minute": @(s.minute),
		@"second": @(s.second),
	} inContext: context];
}
-(CFGregorianDate) toCFGregorianDate {
	return (CFGregorianDate) {
		(SInt32) [self[@"year"] toInt32],
		(SInt8) [self[@"month"] toInt32],
		(SInt8) [self[@"day"] toInt32],
		(SInt8) [self[@"hour"] toInt32],
		(SInt8) [self[@"minute"] toInt32],
		(double) [self[@"second"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CFAbsoluteTimeGetDayOfWeek"] = ^SInt32(CFAbsoluteTime arg0, id arg1) {
		return CFAbsoluteTimeGetDayOfWeek(arg0, arg1);
	};
	context[@"CFDateCreate"] = ^id(id arg0, CFAbsoluteTime arg1) {
		return CFDateCreate(arg0, arg1);
	};
	context[@"CFAbsoluteTimeGetCurrent"] = ^CFAbsoluteTime() {
		return CFAbsoluteTimeGetCurrent();
	};
	context[@"CFAbsoluteTimeAddGregorianUnits"] = ^CFAbsoluteTime(CFAbsoluteTime arg0, id arg1, CFGregorianUnits arg2) {
		return CFAbsoluteTimeAddGregorianUnits(arg0, arg1, arg2);
	};
	context[@"CFAbsoluteTimeGetDayOfYear"] = ^SInt32(CFAbsoluteTime arg0, id arg1) {
		return CFAbsoluteTimeGetDayOfYear(arg0, arg1);
	};
	context[@"CFDateGetAbsoluteTime"] = ^CFAbsoluteTime(id arg0) {
		return CFDateGetAbsoluteTime(arg0);
	};
	context[@"CFDateGetTimeIntervalSinceDate"] = ^CFTimeInterval(id arg0, id arg1) {
		return CFDateGetTimeIntervalSinceDate(arg0, arg1);
	};
	context[@"CFGregorianDateIsValid"] = ^Boolean(CFGregorianDate arg0, CFOptionFlags arg1) {
		return CFGregorianDateIsValid(arg0, arg1);
	};
	context[@"CFAbsoluteTimeGetDifferenceAsGregorianUnits"] = ^CFGregorianUnits(CFAbsoluteTime arg0, CFAbsoluteTime arg1, id arg2, CFOptionFlags arg3) {
		return CFAbsoluteTimeGetDifferenceAsGregorianUnits(arg0, arg1, arg2, arg3);
	};
	context[@"CFGregorianDateGetAbsoluteTime"] = ^CFAbsoluteTime(CFGregorianDate arg0, id arg1) {
		return CFGregorianDateGetAbsoluteTime(arg0, arg1);
	};
	context[@"CFAbsoluteTimeGetWeekOfYear"] = ^SInt32(CFAbsoluteTime arg0, id arg1) {
		return CFAbsoluteTimeGetWeekOfYear(arg0, arg1);
	};
	context[@"CFDateGetTypeID"] = ^CFTypeID() {
		return CFDateGetTypeID();
	};
	context[@"CFAbsoluteTimeGetGregorianDate"] = ^CFGregorianDate(CFAbsoluteTime arg0, id arg1) {
		return CFAbsoluteTimeGetGregorianDate(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFGregorianUnitsYears"] = @1UL;
	context[@"kCFGregorianUnitsMonths"] = @2UL;
	context[@"kCFGregorianUnitsDays"] = @4UL;
	context[@"kCFGregorianUnitsHours"] = @8UL;
	context[@"kCFGregorianUnitsMinutes"] = @16UL;
	context[@"kCFGregorianUnitsSeconds"] = @32UL;
	context[@"kCFGregorianAllUnits"] = @16777215UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFAbsoluteTimeIntervalSince1904;
	if (p != NULL) context[@"kCFAbsoluteTimeIntervalSince1904"] = @(kCFAbsoluteTimeIntervalSince1904);
	p = (void*) &kCFAbsoluteTimeIntervalSince1970;
	if (p != NULL) context[@"kCFAbsoluteTimeIntervalSince1970"] = @(kCFAbsoluteTimeIntervalSince1970);
}
void load_CoreFoundation_CFDate_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
