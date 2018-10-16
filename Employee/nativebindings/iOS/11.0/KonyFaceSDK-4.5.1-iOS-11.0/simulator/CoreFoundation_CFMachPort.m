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
	context[@"CFMachPortInvalidate"] = ^void(id arg0) {
		CFMachPortInvalidate(arg0);
	};
	context[@"CFMachPortCreateRunLoopSource"] = ^id(id arg0, id arg1, CFIndex arg2) {
		return CFMachPortCreateRunLoopSource(arg0, arg1, arg2);
	};
	context[@"CFMachPortGetPort"] = ^mach_port_t(id arg0) {
		return CFMachPortGetPort(arg0);
	};
	context[@"CFMachPortGetTypeID"] = ^CFTypeID() {
		return CFMachPortGetTypeID();
	};
	context[@"CFMachPortIsValid"] = ^Boolean(id arg0) {
		return CFMachPortIsValid(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFMachPort_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
