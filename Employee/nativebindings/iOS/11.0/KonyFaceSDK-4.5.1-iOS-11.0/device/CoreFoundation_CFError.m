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
	context[@"CFErrorGetCode"] = ^CFIndex(id arg0) {
		return CFErrorGetCode(arg0);
	};
	context[@"CFErrorCopyFailureReason"] = ^id(id arg0) {
		return CFErrorCopyFailureReason(arg0);
	};
	context[@"CFErrorCreate"] = ^id(id arg0, id arg1, CFIndex arg2, id arg3) {
		return CFErrorCreate(arg0, arg1, arg2, arg3);
	};
	context[@"CFErrorGetDomain"] = ^id(id arg0) {
		return CFErrorGetDomain(arg0);
	};
	context[@"CFErrorCopyDescription"] = ^id(id arg0) {
		return CFErrorCopyDescription(arg0);
	};
	context[@"CFErrorCopyRecoverySuggestion"] = ^id(id arg0) {
		return CFErrorCopyRecoverySuggestion(arg0);
	};
	context[@"CFErrorCopyUserInfo"] = ^id(id arg0) {
		return CFErrorCopyUserInfo(arg0);
	};
	context[@"CFErrorGetTypeID"] = ^CFTypeID() {
		return CFErrorGetTypeID();
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFErrorDescriptionKey;
	if (p != NULL) context[@"kCFErrorDescriptionKey"] = [JSValue valueWithObject: (__bridge id) kCFErrorDescriptionKey inContext: context];
	p = (void*) &kCFErrorLocalizedDescriptionKey;
	if (p != NULL) context[@"kCFErrorLocalizedDescriptionKey"] = [JSValue valueWithObject: (__bridge id) kCFErrorLocalizedDescriptionKey inContext: context];
	p = (void*) &kCFErrorLocalizedFailureReasonKey;
	if (p != NULL) context[@"kCFErrorLocalizedFailureReasonKey"] = [JSValue valueWithObject: (__bridge id) kCFErrorLocalizedFailureReasonKey inContext: context];
	p = (void*) &kCFErrorDomainOSStatus;
	if (p != NULL) context[@"kCFErrorDomainOSStatus"] = [JSValue valueWithObject: (__bridge id) kCFErrorDomainOSStatus inContext: context];
	p = (void*) &kCFErrorUnderlyingErrorKey;
	if (p != NULL) context[@"kCFErrorUnderlyingErrorKey"] = [JSValue valueWithObject: (__bridge id) kCFErrorUnderlyingErrorKey inContext: context];
	p = (void*) &kCFErrorFilePathKey;
	if (p != NULL) context[@"kCFErrorFilePathKey"] = [JSValue valueWithObject: (__bridge id) kCFErrorFilePathKey inContext: context];
	p = (void*) &kCFErrorDomainMach;
	if (p != NULL) context[@"kCFErrorDomainMach"] = [JSValue valueWithObject: (__bridge id) kCFErrorDomainMach inContext: context];
	p = (void*) &kCFErrorDomainCocoa;
	if (p != NULL) context[@"kCFErrorDomainCocoa"] = [JSValue valueWithObject: (__bridge id) kCFErrorDomainCocoa inContext: context];
	p = (void*) &kCFErrorLocalizedFailureKey;
	if (p != NULL) context[@"kCFErrorLocalizedFailureKey"] = [JSValue valueWithObject: (__bridge id) kCFErrorLocalizedFailureKey inContext: context];
	p = (void*) &kCFErrorDomainPOSIX;
	if (p != NULL) context[@"kCFErrorDomainPOSIX"] = [JSValue valueWithObject: (__bridge id) kCFErrorDomainPOSIX inContext: context];
	p = (void*) &kCFErrorLocalizedRecoverySuggestionKey;
	if (p != NULL) context[@"kCFErrorLocalizedRecoverySuggestionKey"] = [JSValue valueWithObject: (__bridge id) kCFErrorLocalizedRecoverySuggestionKey inContext: context];
	p = (void*) &kCFErrorURLKey;
	if (p != NULL) context[@"kCFErrorURLKey"] = [JSValue valueWithObject: (__bridge id) kCFErrorURLKey inContext: context];
}
void load_CoreFoundation_CFError_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
