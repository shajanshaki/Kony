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
	context[@"CFSetGetTypeID"] = ^CFTypeID() {
		return CFSetGetTypeID();
	};
	context[@"CFSetRemoveAllValues"] = ^void(id arg0) {
		CFSetRemoveAllValues(arg0);
	};
	context[@"CFSetGetCount"] = ^CFIndex(id arg0) {
		return CFSetGetCount(arg0);
	};
	context[@"CFSetCreateCopy"] = ^id(id arg0, id arg1) {
		return CFSetCreateCopy(arg0, arg1);
	};
	context[@"CFSetCreateMutableCopy"] = ^id(id arg0, CFIndex arg1, id arg2) {
		return CFSetCreateMutableCopy(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFSet_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
