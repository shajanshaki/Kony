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
	context[@"CFHostGetTypeID"] = ^CFTypeID() {
		return CFHostGetTypeID();
	};
	context[@"CFHostUnscheduleFromRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFHostUnscheduleFromRunLoop(arg0, arg1, arg2);
	};
	context[@"CFHostCreateWithAddress"] = ^id(id arg0, id arg1) {
		return CFHostCreateWithAddress(arg0, arg1);
	};
	context[@"CFHostCreateCopy"] = ^id(id arg0, id arg1) {
		return CFHostCreateCopy(arg0, arg1);
	};
	context[@"CFHostCreateWithName"] = ^id(id arg0, id arg1) {
		return CFHostCreateWithName(arg0, arg1);
	};
	context[@"CFHostCancelInfoResolution"] = ^void(id arg0, CFHostInfoType arg1) {
		CFHostCancelInfoResolution(arg0, arg1);
	};
	context[@"CFHostScheduleWithRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFHostScheduleWithRunLoop(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFHostAddresses"] = @0;
	context[@"kCFHostNames"] = @1;
	context[@"kCFHostReachability"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStreamErrorDomainNetDB;
	if (p != NULL) context[@"kCFStreamErrorDomainNetDB"] = @(kCFStreamErrorDomainNetDB);
	p = (void*) &kCFStreamErrorDomainSystemConfiguration;
	if (p != NULL) context[@"kCFStreamErrorDomainSystemConfiguration"] = @(kCFStreamErrorDomainSystemConfiguration);
}
void load_CFNetwork_CFHost_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
