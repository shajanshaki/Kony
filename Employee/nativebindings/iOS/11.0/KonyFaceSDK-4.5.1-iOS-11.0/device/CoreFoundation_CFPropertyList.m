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
	context[@"CFPropertyListCreateXMLData"] = ^id(id arg0, id arg1) {
		return CFPropertyListCreateXMLData(arg0, arg1);
	};
	context[@"CFPropertyListCreateDeepCopy"] = ^id(id arg0, id arg1, CFOptionFlags arg2) {
		return CFPropertyListCreateDeepCopy(arg0, arg1, arg2);
	};
	context[@"CFPropertyListIsValid"] = ^Boolean(id arg0, CFPropertyListFormat arg1) {
		return CFPropertyListIsValid(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFPropertyListImmutable"] = @0UL;
	context[@"kCFPropertyListMutableContainers"] = @1UL;
	context[@"kCFPropertyListMutableContainersAndLeaves"] = @2UL;

	context[@"kCFPropertyListOpenStepFormat"] = @1L;
	context[@"kCFPropertyListXMLFormat_v1_0"] = @100L;
	context[@"kCFPropertyListBinaryFormat_v1_0"] = @200L;

	context[@"kCFPropertyListReadCorruptError"] = @3840L;
	context[@"kCFPropertyListReadUnknownVersionError"] = @3841L;
	context[@"kCFPropertyListReadStreamError"] = @3842L;
	context[@"kCFPropertyListWriteStreamError"] = @3851L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFPropertyList_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
