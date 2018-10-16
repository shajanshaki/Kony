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
	context[@"CFTimeZoneCopyDefault"] = ^id() {
		return CFTimeZoneCopyDefault();
	};
	context[@"CFTimeZoneCreateWithName"] = ^id(id arg0, id arg1, Boolean arg2) {
		return CFTimeZoneCreateWithName(arg0, arg1, arg2);
	};
	context[@"CFTimeZoneSetDefault"] = ^void(id arg0) {
		CFTimeZoneSetDefault(arg0);
	};
	context[@"CFTimeZoneGetNextDaylightSavingTimeTransition"] = ^CFAbsoluteTime(id arg0, CFAbsoluteTime arg1) {
		return CFTimeZoneGetNextDaylightSavingTimeTransition(arg0, arg1);
	};
	context[@"CFTimeZoneCopyKnownNames"] = ^id() {
		return CFTimeZoneCopyKnownNames();
	};
	context[@"CFTimeZoneIsDaylightSavingTime"] = ^Boolean(id arg0, CFAbsoluteTime arg1) {
		return CFTimeZoneIsDaylightSavingTime(arg0, arg1);
	};
	context[@"CFTimeZoneCreate"] = ^id(id arg0, id arg1, id arg2) {
		return CFTimeZoneCreate(arg0, arg1, arg2);
	};
	context[@"CFTimeZoneCreateWithTimeIntervalFromGMT"] = ^id(id arg0, CFTimeInterval arg1) {
		return CFTimeZoneCreateWithTimeIntervalFromGMT(arg0, arg1);
	};
	context[@"CFTimeZoneSetAbbreviationDictionary"] = ^void(id arg0) {
		CFTimeZoneSetAbbreviationDictionary(arg0);
	};
	context[@"CFTimeZoneCopySystem"] = ^id() {
		return CFTimeZoneCopySystem();
	};
	context[@"CFTimeZoneCopyAbbreviationDictionary"] = ^id() {
		return CFTimeZoneCopyAbbreviationDictionary();
	};
	context[@"CFTimeZoneCopyAbbreviation"] = ^id(id arg0, CFAbsoluteTime arg1) {
		return CFTimeZoneCopyAbbreviation(arg0, arg1);
	};
	context[@"CFTimeZoneGetTypeID"] = ^CFTypeID() {
		return CFTimeZoneGetTypeID();
	};
	context[@"CFTimeZoneResetSystem"] = ^void() {
		CFTimeZoneResetSystem();
	};
	context[@"CFTimeZoneGetSecondsFromGMT"] = ^CFTimeInterval(id arg0, CFAbsoluteTime arg1) {
		return CFTimeZoneGetSecondsFromGMT(arg0, arg1);
	};
	context[@"CFTimeZoneGetData"] = ^id(id arg0) {
		return CFTimeZoneGetData(arg0);
	};
	context[@"CFTimeZoneGetDaylightSavingTimeOffset"] = ^CFTimeInterval(id arg0, CFAbsoluteTime arg1) {
		return CFTimeZoneGetDaylightSavingTimeOffset(arg0, arg1);
	};
	context[@"CFTimeZoneGetName"] = ^id(id arg0) {
		return CFTimeZoneGetName(arg0);
	};
	context[@"CFTimeZoneCopyLocalizedName"] = ^id(id arg0, CFTimeZoneNameStyle arg1, id arg2) {
		return CFTimeZoneCopyLocalizedName(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFTimeZoneNameStyleStandard"] = @0L;
	context[@"kCFTimeZoneNameStyleShortStandard"] = @1L;
	context[@"kCFTimeZoneNameStyleDaylightSaving"] = @2L;
	context[@"kCFTimeZoneNameStyleShortDaylightSaving"] = @3L;
	context[@"kCFTimeZoneNameStyleGeneric"] = @4L;
	context[@"kCFTimeZoneNameStyleShortGeneric"] = @5L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFTimeZoneSystemTimeZoneDidChangeNotification;
	if (p != NULL) context[@"kCFTimeZoneSystemTimeZoneDidChangeNotification"] = [JSValue valueWithObject: (__bridge id) kCFTimeZoneSystemTimeZoneDidChangeNotification inContext: context];
}
void load_CoreFoundation_CFTimeZone_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
