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
	context[@"CFBinaryHeapGetCount"] = ^CFIndex(id arg0) {
		return CFBinaryHeapGetCount(arg0);
	};
	context[@"CFBinaryHeapRemoveMinimumValue"] = ^void(id arg0) {
		CFBinaryHeapRemoveMinimumValue(arg0);
	};
	context[@"CFBinaryHeapRemoveAllValues"] = ^void(id arg0) {
		CFBinaryHeapRemoveAllValues(arg0);
	};
	context[@"CFBinaryHeapCreateCopy"] = ^id(id arg0, CFIndex arg1, id arg2) {
		return CFBinaryHeapCreateCopy(arg0, arg1, arg2);
	};
	context[@"CFBinaryHeapGetTypeID"] = ^CFTypeID() {
		return CFBinaryHeapGetTypeID();
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFBinaryHeap_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
