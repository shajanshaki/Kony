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
	context[@"CFHTTPMessageCreateCopy"] = ^id(id arg0, id arg1) {
		return CFHTTPMessageCreateCopy(arg0, arg1);
	};
	context[@"CFHTTPMessageCreateEmpty"] = ^id(id arg0, Boolean arg1) {
		return CFHTTPMessageCreateEmpty(arg0, arg1);
	};
	context[@"CFHTTPMessageSetHeaderFieldValue"] = ^void(id arg0, id arg1, id arg2) {
		CFHTTPMessageSetHeaderFieldValue(arg0, arg1, arg2);
	};
	context[@"CFHTTPMessageIsRequest"] = ^Boolean(id arg0) {
		return CFHTTPMessageIsRequest(arg0);
	};
	context[@"CFHTTPMessageCopyResponseStatusLine"] = ^id(id arg0) {
		return CFHTTPMessageCopyResponseStatusLine(arg0);
	};
	context[@"CFHTTPMessageIsHeaderComplete"] = ^Boolean(id arg0) {
		return CFHTTPMessageIsHeaderComplete(arg0);
	};
	context[@"CFHTTPMessageGetTypeID"] = ^CFTypeID() {
		return CFHTTPMessageGetTypeID();
	};
	context[@"CFHTTPMessageGetResponseStatusCode"] = ^CFIndex(id arg0) {
		return CFHTTPMessageGetResponseStatusCode(arg0);
	};
	context[@"CFHTTPMessageCopyAllHeaderFields"] = ^id(id arg0) {
		return CFHTTPMessageCopyAllHeaderFields(arg0);
	};
	context[@"CFHTTPMessageCopyRequestURL"] = ^id(id arg0) {
		return CFHTTPMessageCopyRequestURL(arg0);
	};
	context[@"CFHTTPMessageAddAuthentication"] = ^Boolean(id arg0, id arg1, id arg2, id arg3, id arg4, Boolean arg5) {
		return CFHTTPMessageAddAuthentication(arg0, arg1, arg2, arg3, arg4, arg5);
	};
	context[@"CFHTTPMessageCreateRequest"] = ^id(id arg0, id arg1, id arg2, id arg3) {
		return CFHTTPMessageCreateRequest(arg0, arg1, arg2, arg3);
	};
	context[@"CFHTTPMessageCopyBody"] = ^id(id arg0) {
		return CFHTTPMessageCopyBody(arg0);
	};
	context[@"CFHTTPMessageSetBody"] = ^void(id arg0, id arg1) {
		CFHTTPMessageSetBody(arg0, arg1);
	};
	context[@"CFHTTPMessageCopyRequestMethod"] = ^id(id arg0) {
		return CFHTTPMessageCopyRequestMethod(arg0);
	};
	context[@"CFHTTPMessageCreateResponse"] = ^id(id arg0, CFIndex arg1, id arg2, id arg3) {
		return CFHTTPMessageCreateResponse(arg0, arg1, arg2, arg3);
	};
	context[@"CFHTTPMessageCopyVersion"] = ^id(id arg0) {
		return CFHTTPMessageCopyVersion(arg0);
	};
	context[@"CFHTTPMessageCopySerializedMessage"] = ^id(id arg0) {
		return CFHTTPMessageCopySerializedMessage(arg0);
	};
	context[@"CFHTTPMessageCopyHeaderFieldValue"] = ^id(id arg0, id arg1) {
		return CFHTTPMessageCopyHeaderFieldValue(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFHTTPVersion1_0;
	if (p != NULL) context[@"kCFHTTPVersion1_0"] = [JSValue valueWithObject: (__bridge id) kCFHTTPVersion1_0 inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeDigest;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeDigest"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeDigest inContext: context];
	p = (void*) &kCFHTTPVersion1_1;
	if (p != NULL) context[@"kCFHTTPVersion1_1"] = [JSValue valueWithObject: (__bridge id) kCFHTTPVersion1_1 inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeNegotiate;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeNegotiate"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeNegotiate inContext: context];
	p = (void*) &kCFHTTPVersion2_0;
	if (p != NULL) context[@"kCFHTTPVersion2_0"] = [JSValue valueWithObject: (__bridge id) kCFHTTPVersion2_0 inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeNegotiate2;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeNegotiate2"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeNegotiate2 inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeXMobileMeAuthToken;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeXMobileMeAuthToken"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeXMobileMeAuthToken inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeBasic;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeBasic"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeBasic inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeNTLM;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeNTLM"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeNTLM inContext: context];
}
void load_CFNetwork_CFHTTPMessage_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
