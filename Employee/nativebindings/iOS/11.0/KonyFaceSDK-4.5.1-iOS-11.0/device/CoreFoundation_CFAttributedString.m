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
	context[@"CFAttributedStringEndEditing"] = ^void(id arg0) {
		CFAttributedStringEndEditing(arg0);
	};
	context[@"CFAttributedStringReplaceString"] = ^void(id arg0, CFRange arg1, id arg2) {
		CFAttributedStringReplaceString(arg0, arg1, arg2);
	};
	context[@"CFAttributedStringGetLength"] = ^CFIndex(id arg0) {
		return CFAttributedStringGetLength(arg0);
	};
	context[@"CFAttributedStringCreateWithSubstring"] = ^id(id arg0, id arg1, CFRange arg2) {
		return CFAttributedStringCreateWithSubstring(arg0, arg1, arg2);
	};
	context[@"CFAttributedStringGetTypeID"] = ^CFTypeID() {
		return CFAttributedStringGetTypeID();
	};
	context[@"CFAttributedStringCreateMutableCopy"] = ^id(id arg0, CFIndex arg1, id arg2) {
		return CFAttributedStringCreateMutableCopy(arg0, arg1, arg2);
	};
	context[@"CFAttributedStringReplaceAttributedString"] = ^void(id arg0, CFRange arg1, id arg2) {
		CFAttributedStringReplaceAttributedString(arg0, arg1, arg2);
	};
	context[@"CFAttributedStringRemoveAttribute"] = ^void(id arg0, CFRange arg1, id arg2) {
		CFAttributedStringRemoveAttribute(arg0, arg1, arg2);
	};
	context[@"CFAttributedStringSetAttributes"] = ^void(id arg0, CFRange arg1, id arg2, Boolean arg3) {
		CFAttributedStringSetAttributes(arg0, arg1, arg2, arg3);
	};
	context[@"CFAttributedStringCreateMutable"] = ^id(id arg0, CFIndex arg1) {
		return CFAttributedStringCreateMutable(arg0, arg1);
	};
	context[@"CFAttributedStringGetString"] = ^id(id arg0) {
		return CFAttributedStringGetString(arg0);
	};
	context[@"CFAttributedStringCreate"] = ^id(id arg0, id arg1, id arg2) {
		return CFAttributedStringCreate(arg0, arg1, arg2);
	};
	context[@"CFAttributedStringSetAttribute"] = ^void(id arg0, CFRange arg1, id arg2, id arg3) {
		CFAttributedStringSetAttribute(arg0, arg1, arg2, arg3);
	};
	context[@"CFAttributedStringCreateCopy"] = ^id(id arg0, id arg1) {
		return CFAttributedStringCreateCopy(arg0, arg1);
	};
	context[@"CFAttributedStringBeginEditing"] = ^void(id arg0) {
		CFAttributedStringBeginEditing(arg0);
	};
	context[@"CFAttributedStringGetMutableString"] = ^id(id arg0) {
		return CFAttributedStringGetMutableString(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFAttributedString_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
