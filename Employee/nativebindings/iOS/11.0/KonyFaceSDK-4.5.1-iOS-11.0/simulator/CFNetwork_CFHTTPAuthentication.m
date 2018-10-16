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
	context[@"CFHTTPAuthenticationCopyRealm"] = ^id(id arg0) {
		return CFHTTPAuthenticationCopyRealm(arg0);
	};
	context[@"CFHTTPAuthenticationGetTypeID"] = ^CFTypeID() {
		return CFHTTPAuthenticationGetTypeID();
	};
	context[@"CFHTTPAuthenticationRequiresOrderedRequests"] = ^Boolean(id arg0) {
		return CFHTTPAuthenticationRequiresOrderedRequests(arg0);
	};
	context[@"CFHTTPAuthenticationAppliesToRequest"] = ^Boolean(id arg0, id arg1) {
		return CFHTTPAuthenticationAppliesToRequest(arg0, arg1);
	};
	context[@"CFHTTPAuthenticationCopyMethod"] = ^id(id arg0) {
		return CFHTTPAuthenticationCopyMethod(arg0);
	};
	context[@"CFHTTPAuthenticationRequiresUserNameAndPassword"] = ^Boolean(id arg0) {
		return CFHTTPAuthenticationRequiresUserNameAndPassword(arg0);
	};
	context[@"CFHTTPAuthenticationCopyDomains"] = ^id(id arg0) {
		return CFHTTPAuthenticationCopyDomains(arg0);
	};
	context[@"CFHTTPAuthenticationCreateFromResponse"] = ^id(id arg0, id arg1) {
		return CFHTTPAuthenticationCreateFromResponse(arg0, arg1);
	};
	context[@"CFHTTPAuthenticationRequiresAccountDomain"] = ^Boolean(id arg0) {
		return CFHTTPAuthenticationRequiresAccountDomain(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFStreamErrorHTTPAuthenticationTypeUnsupported"] = @-1000;
	context[@"kCFStreamErrorHTTPAuthenticationBadUserName"] = @-1001;
	context[@"kCFStreamErrorHTTPAuthenticationBadPassword"] = @-1002;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFHTTPAuthenticationAccountDomain;
	if (p != NULL) context[@"kCFHTTPAuthenticationAccountDomain"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationAccountDomain inContext: context];
	p = (void*) &kCFHTTPAuthenticationUsername;
	if (p != NULL) context[@"kCFHTTPAuthenticationUsername"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationUsername inContext: context];
	p = (void*) &kCFHTTPAuthenticationPassword;
	if (p != NULL) context[@"kCFHTTPAuthenticationPassword"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationPassword inContext: context];
}
void load_CFNetwork_CFHTTPAuthentication_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
