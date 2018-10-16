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
	context[@"CFDataGetLength"] = ^CFIndex(id arg0) {
		return CFDataGetLength(arg0);
	};
	context[@"CFDataCreateMutableCopy"] = ^id(id arg0, CFIndex arg1, id arg2) {
		return CFDataCreateMutableCopy(arg0, arg1, arg2);
	};
	context[@"CFDataIncreaseLength"] = ^void(id arg0, CFIndex arg1) {
		CFDataIncreaseLength(arg0, arg1);
	};
	context[@"CFDataFind"] = ^CFRange(id arg0, id arg1, CFRange arg2, CFDataSearchFlags arg3) {
		return CFDataFind(arg0, arg1, arg2, arg3);
	};
	context[@"CFDataCreateMutable"] = ^id(id arg0, CFIndex arg1) {
		return CFDataCreateMutable(arg0, arg1);
	};
	context[@"CFDataCreateCopy"] = ^id(id arg0, id arg1) {
		return CFDataCreateCopy(arg0, arg1);
	};
	context[@"CFDataSetLength"] = ^void(id arg0, CFIndex arg1) {
		CFDataSetLength(arg0, arg1);
	};
	context[@"CFDataGetTypeID"] = ^CFTypeID() {
		return CFDataGetTypeID();
	};
	context[@"CFDataDeleteBytes"] = ^void(id arg0, CFRange arg1) {
		CFDataDeleteBytes(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFDataSearchBackwards"] = @1UL;
	context[@"kCFDataSearchAnchored"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFData_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
