#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CFCalendarGetRangeOfUnit"] = ^CFRange(id arg0, CFCalendarUnit arg1, CFCalendarUnit arg2, CFAbsoluteTime arg3) {
		return CFCalendarGetRangeOfUnit(arg0, arg1, arg2, arg3);
	};
	context[@"CFCalendarGetMinimumDaysInFirstWeek"] = ^CFIndex(id arg0) {
		return CFCalendarGetMinimumDaysInFirstWeek(arg0);
	};
	context[@"CFCalendarGetTypeID"] = ^CFTypeID() {
		return CFCalendarGetTypeID();
	};
	context[@"CFCalendarCopyTimeZone"] = ^id(id arg0) {
		return CFCalendarCopyTimeZone(arg0);
	};
	context[@"CFCalendarGetMaximumRangeOfUnit"] = ^CFRange(id arg0, CFCalendarUnit arg1) {
		return CFCalendarGetMaximumRangeOfUnit(arg0, arg1);
	};
	context[@"CFCalendarGetOrdinalityOfUnit"] = ^CFIndex(id arg0, CFCalendarUnit arg1, CFCalendarUnit arg2, CFAbsoluteTime arg3) {
		return CFCalendarGetOrdinalityOfUnit(arg0, arg1, arg2, arg3);
	};
	context[@"CFCalendarCopyCurrent"] = ^id() {
		return CFCalendarCopyCurrent();
	};
	context[@"CFCalendarGetIdentifier"] = ^id(id arg0) {
		return CFCalendarGetIdentifier(arg0);
	};
	context[@"CFCalendarCreateWithIdentifier"] = ^id(id arg0, id arg1) {
		return CFCalendarCreateWithIdentifier(arg0, arg1);
	};
	context[@"CFCalendarGetFirstWeekday"] = ^CFIndex(id arg0) {
		return CFCalendarGetFirstWeekday(arg0);
	};
	context[@"CFCalendarSetLocale"] = ^void(id arg0, id arg1) {
		CFCalendarSetLocale(arg0, arg1);
	};
	context[@"CFCalendarGetMinimumRangeOfUnit"] = ^CFRange(id arg0, CFCalendarUnit arg1) {
		return CFCalendarGetMinimumRangeOfUnit(arg0, arg1);
	};
	context[@"CFCalendarSetMinimumDaysInFirstWeek"] = ^void(id arg0, CFIndex arg1) {
		CFCalendarSetMinimumDaysInFirstWeek(arg0, arg1);
	};
	context[@"CFCalendarCopyLocale"] = ^id(id arg0) {
		return CFCalendarCopyLocale(arg0);
	};
	context[@"CFCalendarSetFirstWeekday"] = ^void(id arg0, CFIndex arg1) {
		CFCalendarSetFirstWeekday(arg0, arg1);
	};
	context[@"CFCalendarSetTimeZone"] = ^void(id arg0, id arg1) {
		CFCalendarSetTimeZone(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFCalendarUnitEra"] = @2UL;
	context[@"kCFCalendarUnitYear"] = @4UL;
	context[@"kCFCalendarUnitMonth"] = @8UL;
	context[@"kCFCalendarUnitDay"] = @16UL;
	context[@"kCFCalendarUnitHour"] = @32UL;
	context[@"kCFCalendarUnitMinute"] = @64UL;
	context[@"kCFCalendarUnitSecond"] = @128UL;
	context[@"kCFCalendarUnitWeek"] = @256UL;
	context[@"kCFCalendarUnitWeekday"] = @512UL;
	context[@"kCFCalendarUnitWeekdayOrdinal"] = @1024UL;
	context[@"kCFCalendarUnitQuarter"] = @2048UL;
	context[@"kCFCalendarUnitWeekOfMonth"] = @4096UL;
	context[@"kCFCalendarUnitWeekOfYear"] = @8192UL;
	context[@"kCFCalendarUnitYearForWeekOfYear"] = @16384UL;

	context[@"kCFCalendarComponentsWrap"] = @1UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFCalendar_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
