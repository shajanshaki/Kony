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
	context[@"CFNumberIsFloatType"] = ^Boolean(id arg0) {
		return CFNumberIsFloatType(arg0);
	};
	context[@"CFNumberGetType"] = ^CFNumberType(id arg0) {
		return CFNumberGetType(arg0);
	};
	context[@"CFBooleanGetValue"] = ^Boolean(id arg0) {
		return CFBooleanGetValue(arg0);
	};
	context[@"CFNumberGetByteSize"] = ^CFIndex(id arg0) {
		return CFNumberGetByteSize(arg0);
	};
	context[@"CFBooleanGetTypeID"] = ^CFTypeID() {
		return CFBooleanGetTypeID();
	};
	context[@"CFNumberGetTypeID"] = ^CFTypeID() {
		return CFNumberGetTypeID();
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFNumberSInt8Type"] = @1L;
	context[@"kCFNumberSInt16Type"] = @2L;
	context[@"kCFNumberSInt32Type"] = @3L;
	context[@"kCFNumberSInt64Type"] = @4L;
	context[@"kCFNumberFloat32Type"] = @5L;
	context[@"kCFNumberFloat64Type"] = @6L;
	context[@"kCFNumberCharType"] = @7L;
	context[@"kCFNumberShortType"] = @8L;
	context[@"kCFNumberIntType"] = @9L;
	context[@"kCFNumberLongType"] = @10L;
	context[@"kCFNumberLongLongType"] = @11L;
	context[@"kCFNumberFloatType"] = @12L;
	context[@"kCFNumberDoubleType"] = @13L;
	context[@"kCFNumberCFIndexType"] = @14L;
	context[@"kCFNumberNSIntegerType"] = @15L;
	context[@"kCFNumberCGFloatType"] = @16L;
	context[@"kCFNumberMaxType"] = @16L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFBooleanFalse;
	if (p != NULL) context[@"kCFBooleanFalse"] = [JSValue valueWithObject: (__bridge id) kCFBooleanFalse inContext: context];
	p = (void*) &kCFNumberNegativeInfinity;
	if (p != NULL) context[@"kCFNumberNegativeInfinity"] = [JSValue valueWithObject: (__bridge id) kCFNumberNegativeInfinity inContext: context];
	p = (void*) &kCFNumberNaN;
	if (p != NULL) context[@"kCFNumberNaN"] = [JSValue valueWithObject: (__bridge id) kCFNumberNaN inContext: context];
	p = (void*) &kCFNumberPositiveInfinity;
	if (p != NULL) context[@"kCFNumberPositiveInfinity"] = [JSValue valueWithObject: (__bridge id) kCFNumberPositiveInfinity inContext: context];
	p = (void*) &kCFBooleanTrue;
	if (p != NULL) context[@"kCFBooleanTrue"] = [JSValue valueWithObject: (__bridge id) kCFBooleanTrue inContext: context];
}
void load_CoreFoundation_CFNumber_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
