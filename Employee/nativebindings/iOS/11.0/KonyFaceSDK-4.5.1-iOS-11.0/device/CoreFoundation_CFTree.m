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
	context[@"CFTreeInsertSibling"] = ^void(id arg0, id arg1) {
		CFTreeInsertSibling(arg0, arg1);
	};
	context[@"CFTreeGetParent"] = ^id(id arg0) {
		return CFTreeGetParent(arg0);
	};
	context[@"CFTreeGetFirstChild"] = ^id(id arg0) {
		return CFTreeGetFirstChild(arg0);
	};
	context[@"CFTreeRemove"] = ^void(id arg0) {
		CFTreeRemove(arg0);
	};
	context[@"CFTreePrependChild"] = ^void(id arg0, id arg1) {
		CFTreePrependChild(arg0, arg1);
	};
	context[@"CFTreeRemoveAllChildren"] = ^void(id arg0) {
		CFTreeRemoveAllChildren(arg0);
	};
	context[@"CFTreeGetChildCount"] = ^CFIndex(id arg0) {
		return CFTreeGetChildCount(arg0);
	};
	context[@"CFTreeFindRoot"] = ^id(id arg0) {
		return CFTreeFindRoot(arg0);
	};
	context[@"CFTreeAppendChild"] = ^void(id arg0, id arg1) {
		CFTreeAppendChild(arg0, arg1);
	};
	context[@"CFTreeGetTypeID"] = ^CFTypeID() {
		return CFTreeGetTypeID();
	};
	context[@"CFTreeGetChildAtIndex"] = ^id(id arg0, CFIndex arg1) {
		return CFTreeGetChildAtIndex(arg0, arg1);
	};
	context[@"CFTreeGetNextSibling"] = ^id(id arg0) {
		return CFTreeGetNextSibling(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFTree_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
