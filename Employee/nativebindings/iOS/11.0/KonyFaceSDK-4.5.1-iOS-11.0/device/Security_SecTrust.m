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
	context[@"SecTrustSetPolicies"] = ^OSStatus(id arg0, id arg1) {
		return SecTrustSetPolicies(arg0, arg1);
	};
	context[@"SecTrustSetExceptions"] = ^_Bool(id arg0, id arg1) {
		return SecTrustSetExceptions(arg0, arg1);
	};
	context[@"SecTrustSetNetworkFetchAllowed"] = ^OSStatus(id arg0, Boolean arg1) {
		return SecTrustSetNetworkFetchAllowed(arg0, arg1);
	};
	context[@"SecTrustGetCertificateCount"] = ^CFIndex(id arg0) {
		return SecTrustGetCertificateCount(arg0);
	};
	context[@"SecTrustSetVerifyDate"] = ^OSStatus(id arg0, id arg1) {
		return SecTrustSetVerifyDate(arg0, arg1);
	};
	context[@"SecTrustSetOCSPResponse"] = ^OSStatus(id arg0, id arg1) {
		return SecTrustSetOCSPResponse(arg0, arg1);
	};
	context[@"SecTrustCopyPublicKey"] = ^id(id arg0) {
		return SecTrustCopyPublicKey(arg0);
	};
	context[@"SecTrustGetTypeID"] = ^CFTypeID() {
		return SecTrustGetTypeID();
	};
	context[@"SecTrustCopyExceptions"] = ^id(id arg0) {
		return SecTrustCopyExceptions(arg0);
	};
	context[@"SecTrustCopyProperties"] = ^id(id arg0) {
		return SecTrustCopyProperties(arg0);
	};
	context[@"SecTrustGetCertificateAtIndex"] = ^id(id arg0, CFIndex arg1) {
		return SecTrustGetCertificateAtIndex(arg0, arg1);
	};
	context[@"SecTrustCopyResult"] = ^id(id arg0) {
		return SecTrustCopyResult(arg0);
	};
	context[@"SecTrustSetAnchorCertificatesOnly"] = ^OSStatus(id arg0, Boolean arg1) {
		return SecTrustSetAnchorCertificatesOnly(arg0, arg1);
	};
	context[@"SecTrustGetVerifyTime"] = ^CFAbsoluteTime(id arg0) {
		return SecTrustGetVerifyTime(arg0);
	};
	context[@"SecTrustSetAnchorCertificates"] = ^OSStatus(id arg0, id arg1) {
		return SecTrustSetAnchorCertificates(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kSecTrustResultInvalid"] = @0U;
	context[@"kSecTrustResultProceed"] = @1U;
	context[@"kSecTrustResultConfirm"] = @2U;
	context[@"kSecTrustResultDeny"] = @3U;
	context[@"kSecTrustResultUnspecified"] = @4U;
	context[@"kSecTrustResultRecoverableTrustFailure"] = @5U;
	context[@"kSecTrustResultFatalTrustFailure"] = @6U;
	context[@"kSecTrustResultOtherError"] = @7U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kSecTrustRevocationValidUntilDate;
	if (p != NULL) context[@"kSecTrustRevocationValidUntilDate"] = [JSValue valueWithObject: (__bridge id) kSecTrustRevocationValidUntilDate inContext: context];
	p = (void*) &kSecTrustCertificateTransparencyWhiteList;
	if (p != NULL) context[@"kSecTrustCertificateTransparencyWhiteList"] = [JSValue valueWithObject: (__bridge id) kSecTrustCertificateTransparencyWhiteList inContext: context];
	p = (void*) &kSecTrustResultValue;
	if (p != NULL) context[@"kSecTrustResultValue"] = [JSValue valueWithObject: (__bridge id) kSecTrustResultValue inContext: context];
	p = (void*) &kSecPropertyTypeTitle;
	if (p != NULL) context[@"kSecPropertyTypeTitle"] = [JSValue valueWithObject: (__bridge id) kSecPropertyTypeTitle inContext: context];
	p = (void*) &kSecPropertyTypeError;
	if (p != NULL) context[@"kSecPropertyTypeError"] = [JSValue valueWithObject: (__bridge id) kSecPropertyTypeError inContext: context];
	p = (void*) &kSecTrustRevocationChecked;
	if (p != NULL) context[@"kSecTrustRevocationChecked"] = [JSValue valueWithObject: (__bridge id) kSecTrustRevocationChecked inContext: context];
	p = (void*) &kSecTrustCertificateTransparency;
	if (p != NULL) context[@"kSecTrustCertificateTransparency"] = [JSValue valueWithObject: (__bridge id) kSecTrustCertificateTransparency inContext: context];
	p = (void*) &kSecTrustOrganizationName;
	if (p != NULL) context[@"kSecTrustOrganizationName"] = [JSValue valueWithObject: (__bridge id) kSecTrustOrganizationName inContext: context];
	p = (void*) &kSecTrustEvaluationDate;
	if (p != NULL) context[@"kSecTrustEvaluationDate"] = [JSValue valueWithObject: (__bridge id) kSecTrustEvaluationDate inContext: context];
	p = (void*) &kSecTrustExtendedValidation;
	if (p != NULL) context[@"kSecTrustExtendedValidation"] = [JSValue valueWithObject: (__bridge id) kSecTrustExtendedValidation inContext: context];
}
void load_Security_SecTrust_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
