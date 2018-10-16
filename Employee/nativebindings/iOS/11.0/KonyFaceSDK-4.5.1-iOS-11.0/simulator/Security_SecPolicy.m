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
	context[@"SecPolicyCopyProperties"] = ^id(id arg0) {
		return SecPolicyCopyProperties(arg0);
	};
	context[@"SecPolicyCreateWithProperties"] = ^id(id arg0, id arg1) {
		return SecPolicyCreateWithProperties(arg0, arg1);
	};
	context[@"SecPolicyCreateBasicX509"] = ^id() {
		return SecPolicyCreateBasicX509();
	};
	context[@"SecPolicyGetTypeID"] = ^CFTypeID() {
		return SecPolicyGetTypeID();
	};
	context[@"SecPolicyCreateSSL"] = ^id(Boolean arg0, id arg1) {
		return SecPolicyCreateSSL(arg0, arg1);
	};
	context[@"SecPolicyCreateRevocation"] = ^id(CFOptionFlags arg0) {
		return SecPolicyCreateRevocation(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kSecRevocationOCSPMethod"] = @1UL;
	context[@"kSecRevocationCRLMethod"] = @2UL;
	context[@"kSecRevocationPreferCRL"] = @4UL;
	context[@"kSecRevocationRequirePositiveResponse"] = @8UL;
	context[@"kSecRevocationNetworkAccessDisabled"] = @16UL;
	context[@"kSecRevocationUseAnyAvailableMethod"] = @3UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kSecPolicyAppleTimeStamping;
	if (p != NULL) context[@"kSecPolicyAppleTimeStamping"] = [JSValue valueWithObject: (__bridge id) kSecPolicyAppleTimeStamping inContext: context];
	p = (void*) &kSecPolicyOid;
	if (p != NULL) context[@"kSecPolicyOid"] = [JSValue valueWithObject: (__bridge id) kSecPolicyOid inContext: context];
	p = (void*) &kSecPolicyName;
	if (p != NULL) context[@"kSecPolicyName"] = [JSValue valueWithObject: (__bridge id) kSecPolicyName inContext: context];
	p = (void*) &kSecPolicyAppleIPsec;
	if (p != NULL) context[@"kSecPolicyAppleIPsec"] = [JSValue valueWithObject: (__bridge id) kSecPolicyAppleIPsec inContext: context];
	p = (void*) &kSecPolicyAppleSMIME;
	if (p != NULL) context[@"kSecPolicyAppleSMIME"] = [JSValue valueWithObject: (__bridge id) kSecPolicyAppleSMIME inContext: context];
	p = (void*) &kSecPolicyAppleEAP;
	if (p != NULL) context[@"kSecPolicyAppleEAP"] = [JSValue valueWithObject: (__bridge id) kSecPolicyAppleEAP inContext: context];
	p = (void*) &kSecPolicyRevocationFlags;
	if (p != NULL) context[@"kSecPolicyRevocationFlags"] = [JSValue valueWithObject: (__bridge id) kSecPolicyRevocationFlags inContext: context];
	p = (void*) &kSecPolicyApplePayIssuerEncryption;
	if (p != NULL) context[@"kSecPolicyApplePayIssuerEncryption"] = [JSValue valueWithObject: (__bridge id) kSecPolicyApplePayIssuerEncryption inContext: context];
	p = (void*) &kSecPolicyAppleX509Basic;
	if (p != NULL) context[@"kSecPolicyAppleX509Basic"] = [JSValue valueWithObject: (__bridge id) kSecPolicyAppleX509Basic inContext: context];
	p = (void*) &kSecPolicyAppleIDValidation;
	if (p != NULL) context[@"kSecPolicyAppleIDValidation"] = [JSValue valueWithObject: (__bridge id) kSecPolicyAppleIDValidation inContext: context];
	p = (void*) &kSecPolicyAppleCodeSigning;
	if (p != NULL) context[@"kSecPolicyAppleCodeSigning"] = [JSValue valueWithObject: (__bridge id) kSecPolicyAppleCodeSigning inContext: context];
	p = (void*) &kSecPolicyMacAppStoreReceipt;
	if (p != NULL) context[@"kSecPolicyMacAppStoreReceipt"] = [JSValue valueWithObject: (__bridge id) kSecPolicyMacAppStoreReceipt inContext: context];
	p = (void*) &kSecPolicyClient;
	if (p != NULL) context[@"kSecPolicyClient"] = [JSValue valueWithObject: (__bridge id) kSecPolicyClient inContext: context];
	p = (void*) &kSecPolicyApplePassbookSigning;
	if (p != NULL) context[@"kSecPolicyApplePassbookSigning"] = [JSValue valueWithObject: (__bridge id) kSecPolicyApplePassbookSigning inContext: context];
	p = (void*) &kSecPolicyAppleRevocation;
	if (p != NULL) context[@"kSecPolicyAppleRevocation"] = [JSValue valueWithObject: (__bridge id) kSecPolicyAppleRevocation inContext: context];
	p = (void*) &kSecPolicyAppleSSL;
	if (p != NULL) context[@"kSecPolicyAppleSSL"] = [JSValue valueWithObject: (__bridge id) kSecPolicyAppleSSL inContext: context];
	p = (void*) &kSecPolicyTeamIdentifier;
	if (p != NULL) context[@"kSecPolicyTeamIdentifier"] = [JSValue valueWithObject: (__bridge id) kSecPolicyTeamIdentifier inContext: context];
}
void load_Security_SecPolicy_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
