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
	context[@"CFNetworkCopyProxiesForURL"] = ^id(id arg0, id arg1) {
		return CFNetworkCopyProxiesForURL(arg0, arg1);
	};
	context[@"CFNetworkCopySystemProxySettings"] = ^id() {
		return CFNetworkCopySystemProxySettings();
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFProxyHostNameKey;
	if (p != NULL) context[@"kCFProxyHostNameKey"] = [JSValue valueWithObject: (__bridge id) kCFProxyHostNameKey inContext: context];
	p = (void*) &kCFProxyTypeHTTPS;
	if (p != NULL) context[@"kCFProxyTypeHTTPS"] = [JSValue valueWithObject: (__bridge id) kCFProxyTypeHTTPS inContext: context];
	p = (void*) &kCFProxyAutoConfigurationURLKey;
	if (p != NULL) context[@"kCFProxyAutoConfigurationURLKey"] = [JSValue valueWithObject: (__bridge id) kCFProxyAutoConfigurationURLKey inContext: context];
	p = (void*) &kCFProxyPasswordKey;
	if (p != NULL) context[@"kCFProxyPasswordKey"] = [JSValue valueWithObject: (__bridge id) kCFProxyPasswordKey inContext: context];
	p = (void*) &kCFNetworkProxiesHTTPEnable;
	if (p != NULL) context[@"kCFNetworkProxiesHTTPEnable"] = [JSValue valueWithObject: (__bridge id) kCFNetworkProxiesHTTPEnable inContext: context];
	p = (void*) &kCFProxyTypeAutoConfigurationJavaScript;
	if (p != NULL) context[@"kCFProxyTypeAutoConfigurationJavaScript"] = [JSValue valueWithObject: (__bridge id) kCFProxyTypeAutoConfigurationJavaScript inContext: context];
	p = (void*) &kCFNetworkProxiesProxyAutoConfigEnable;
	if (p != NULL) context[@"kCFNetworkProxiesProxyAutoConfigEnable"] = [JSValue valueWithObject: (__bridge id) kCFNetworkProxiesProxyAutoConfigEnable inContext: context];
	p = (void*) &kCFProxyTypeKey;
	if (p != NULL) context[@"kCFProxyTypeKey"] = [JSValue valueWithObject: (__bridge id) kCFProxyTypeKey inContext: context];
	p = (void*) &kCFProxyUsernameKey;
	if (p != NULL) context[@"kCFProxyUsernameKey"] = [JSValue valueWithObject: (__bridge id) kCFProxyUsernameKey inContext: context];
	p = (void*) &kCFProxyPortNumberKey;
	if (p != NULL) context[@"kCFProxyPortNumberKey"] = [JSValue valueWithObject: (__bridge id) kCFProxyPortNumberKey inContext: context];
	p = (void*) &kCFProxyTypeFTP;
	if (p != NULL) context[@"kCFProxyTypeFTP"] = [JSValue valueWithObject: (__bridge id) kCFProxyTypeFTP inContext: context];
	p = (void*) &kCFProxyTypeSOCKS;
	if (p != NULL) context[@"kCFProxyTypeSOCKS"] = [JSValue valueWithObject: (__bridge id) kCFProxyTypeSOCKS inContext: context];
	p = (void*) &kCFProxyTypeNone;
	if (p != NULL) context[@"kCFProxyTypeNone"] = [JSValue valueWithObject: (__bridge id) kCFProxyTypeNone inContext: context];
	p = (void*) &kCFNetworkProxiesHTTPProxy;
	if (p != NULL) context[@"kCFNetworkProxiesHTTPProxy"] = [JSValue valueWithObject: (__bridge id) kCFNetworkProxiesHTTPProxy inContext: context];
	p = (void*) &kCFProxyAutoConfigurationJavaScriptKey;
	if (p != NULL) context[@"kCFProxyAutoConfigurationJavaScriptKey"] = [JSValue valueWithObject: (__bridge id) kCFProxyAutoConfigurationJavaScriptKey inContext: context];
	p = (void*) &kCFNetworkProxiesProxyAutoConfigURLString;
	if (p != NULL) context[@"kCFNetworkProxiesProxyAutoConfigURLString"] = [JSValue valueWithObject: (__bridge id) kCFNetworkProxiesProxyAutoConfigURLString inContext: context];
	p = (void*) &kCFProxyTypeAutoConfigurationURL;
	if (p != NULL) context[@"kCFProxyTypeAutoConfigurationURL"] = [JSValue valueWithObject: (__bridge id) kCFProxyTypeAutoConfigurationURL inContext: context];
	p = (void*) &kCFProxyTypeHTTP;
	if (p != NULL) context[@"kCFProxyTypeHTTP"] = [JSValue valueWithObject: (__bridge id) kCFProxyTypeHTTP inContext: context];
	p = (void*) &kCFNetworkProxiesHTTPPort;
	if (p != NULL) context[@"kCFNetworkProxiesHTTPPort"] = [JSValue valueWithObject: (__bridge id) kCFNetworkProxiesHTTPPort inContext: context];
}
void load_CFNetwork_CFProxySupport_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
