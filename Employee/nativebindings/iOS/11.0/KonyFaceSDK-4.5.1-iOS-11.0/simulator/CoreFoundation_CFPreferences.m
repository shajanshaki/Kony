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
	context[@"CFPreferencesCopyValue"] = ^id(id arg0, id arg1, id arg2, id arg3) {
		return CFPreferencesCopyValue(arg0, arg1, arg2, arg3);
	};
	context[@"CFPreferencesRemoveSuitePreferencesFromApp"] = ^void(id arg0, id arg1) {
		CFPreferencesRemoveSuitePreferencesFromApp(arg0, arg1);
	};
	context[@"CFPreferencesSynchronize"] = ^Boolean(id arg0, id arg1, id arg2) {
		return CFPreferencesSynchronize(arg0, arg1, arg2);
	};
	context[@"CFPreferencesSetAppValue"] = ^void(id arg0, id arg1, id arg2) {
		CFPreferencesSetAppValue(arg0, arg1, arg2);
	};
	context[@"CFPreferencesAppValueIsForced"] = ^Boolean(id arg0, id arg1) {
		return CFPreferencesAppValueIsForced(arg0, arg1);
	};
	context[@"CFPreferencesAppSynchronize"] = ^Boolean(id arg0) {
		return CFPreferencesAppSynchronize(arg0);
	};
	context[@"CFPreferencesSetValue"] = ^void(id arg0, id arg1, id arg2, id arg3, id arg4) {
		CFPreferencesSetValue(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CFPreferencesAddSuitePreferencesToApp"] = ^void(id arg0, id arg1) {
		CFPreferencesAddSuitePreferencesToApp(arg0, arg1);
	};
	context[@"CFPreferencesSetMultiple"] = ^void(id arg0, id arg1, id arg2, id arg3, id arg4) {
		CFPreferencesSetMultiple(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CFPreferencesCopyMultiple"] = ^id(id arg0, id arg1, id arg2, id arg3) {
		return CFPreferencesCopyMultiple(arg0, arg1, arg2, arg3);
	};
	context[@"CFPreferencesCopyKeyList"] = ^id(id arg0, id arg1, id arg2) {
		return CFPreferencesCopyKeyList(arg0, arg1, arg2);
	};
	context[@"CFPreferencesCopyApplicationList"] = ^id(id arg0, id arg1) {
		return CFPreferencesCopyApplicationList(arg0, arg1);
	};
	context[@"CFPreferencesCopyAppValue"] = ^id(id arg0, id arg1) {
		return CFPreferencesCopyAppValue(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFPreferencesCurrentHost;
	if (p != NULL) context[@"kCFPreferencesCurrentHost"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesCurrentHost inContext: context];
	p = (void*) &kCFPreferencesAnyUser;
	if (p != NULL) context[@"kCFPreferencesAnyUser"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesAnyUser inContext: context];
	p = (void*) &kCFPreferencesCurrentApplication;
	if (p != NULL) context[@"kCFPreferencesCurrentApplication"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesCurrentApplication inContext: context];
	p = (void*) &kCFPreferencesAnyApplication;
	if (p != NULL) context[@"kCFPreferencesAnyApplication"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesAnyApplication inContext: context];
	p = (void*) &kCFPreferencesAnyHost;
	if (p != NULL) context[@"kCFPreferencesAnyHost"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesAnyHost inContext: context];
	p = (void*) &kCFPreferencesCurrentUser;
	if (p != NULL) context[@"kCFPreferencesCurrentUser"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesCurrentUser inContext: context];
}
void load_CoreFoundation_CFPreferences_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
