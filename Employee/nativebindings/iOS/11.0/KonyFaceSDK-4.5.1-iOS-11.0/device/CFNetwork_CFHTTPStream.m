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
	context[@"CFReadStreamCreateForHTTPRequest"] = ^id(id arg0, id arg1) {
		return CFReadStreamCreateForHTTPRequest(arg0, arg1);
	};
	context[@"CFReadStreamCreateForStreamedHTTPRequest"] = ^id(id arg0, id arg1, id arg2) {
		return CFReadStreamCreateForStreamedHTTPRequest(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFStreamErrorHTTPParseFailure"] = @-1;
	context[@"kCFStreamErrorHTTPRedirectionLoop"] = @-2;
	context[@"kCFStreamErrorHTTPBadURL"] = @-3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStreamErrorDomainHTTP;
	if (p != NULL) context[@"kCFStreamErrorDomainHTTP"] = @(kCFStreamErrorDomainHTTP);
	p = (void*) &kCFStreamPropertyHTTPFinalRequest;
	if (p != NULL) context[@"kCFStreamPropertyHTTPFinalRequest"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPFinalRequest inContext: context];
	p = (void*) &kCFStreamPropertyHTTPShouldAutoredirect;
	if (p != NULL) context[@"kCFStreamPropertyHTTPShouldAutoredirect"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPShouldAutoredirect inContext: context];
	p = (void*) &kCFStreamPropertyHTTPProxy;
	if (p != NULL) context[@"kCFStreamPropertyHTTPProxy"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPProxy inContext: context];
	p = (void*) &kCFStreamPropertyHTTPAttemptPersistentConnection;
	if (p != NULL) context[@"kCFStreamPropertyHTTPAttemptPersistentConnection"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPAttemptPersistentConnection inContext: context];
	p = (void*) &kCFStreamPropertyHTTPRequestBytesWrittenCount;
	if (p != NULL) context[@"kCFStreamPropertyHTTPRequestBytesWrittenCount"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPRequestBytesWrittenCount inContext: context];
	p = (void*) &kCFStreamPropertyHTTPFinalURL;
	if (p != NULL) context[@"kCFStreamPropertyHTTPFinalURL"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPFinalURL inContext: context];
	p = (void*) &kCFStreamPropertyHTTPProxyHost;
	if (p != NULL) context[@"kCFStreamPropertyHTTPProxyHost"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPProxyHost inContext: context];
	p = (void*) &kCFStreamPropertyHTTPProxyPort;
	if (p != NULL) context[@"kCFStreamPropertyHTTPProxyPort"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPProxyPort inContext: context];
	p = (void*) &kCFStreamPropertyHTTPResponseHeader;
	if (p != NULL) context[@"kCFStreamPropertyHTTPResponseHeader"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPResponseHeader inContext: context];
	p = (void*) &kCFStreamPropertyHTTPSProxyPort;
	if (p != NULL) context[@"kCFStreamPropertyHTTPSProxyPort"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPSProxyPort inContext: context];
	p = (void*) &kCFStreamPropertyHTTPSProxyHost;
	if (p != NULL) context[@"kCFStreamPropertyHTTPSProxyHost"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyHTTPSProxyHost inContext: context];
}
void load_CFNetwork_CFHTTPStream_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
