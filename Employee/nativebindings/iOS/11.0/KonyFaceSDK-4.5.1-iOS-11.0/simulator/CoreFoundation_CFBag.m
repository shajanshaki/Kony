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
	context[@"CFBagCreateCopy"] = ^id(id arg0, id arg1) {
		return CFBagCreateCopy(arg0, arg1);
	};
	context[@"CFBagCreateMutableCopy"] = ^id(id arg0, CFIndex arg1, id arg2) {
		return CFBagCreateMutableCopy(arg0, arg1, arg2);
	};
	context[@"CFBagGetTypeID"] = ^CFTypeID() {
		return CFBagGetTypeID();
	};
	context[@"CFBagGetCount"] = ^CFIndex(id arg0) {
		return CFBagGetCount(arg0);
	};
	context[@"CFBagRemoveAllValues"] = ^void(id arg0) {
		CFBagRemoveAllValues(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFBag_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
