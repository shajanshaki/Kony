#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLProtectionSpace (Exports)
-(id) jsinitWithProxyHost: (NSString *) host port: (NSInteger) port type: (NSString *) type realm: (NSString *) realm authenticationMethod: (NSString *) authenticationMethod 
{
	id resultVal__;
	resultVal__ = [[self initWithProxyHost: host port: port type: type realm: realm authenticationMethod: authenticationMethod ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithHost: (NSString *) host port: (NSInteger) port protocol: (NSString *) protocol realm: (NSString *) realm authenticationMethod: (NSString *) authenticationMethod 
{
	id resultVal__;
	resultVal__ = [[self initWithHost: host port: port protocol: protocol realm: realm authenticationMethod: authenticationMethod ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSURLProtectionSpace class], @protocol(NSURLProtectionSpaceNSClientCertificateSpaceCategoryInstanceExports));
	class_addProtocol([NSURLProtectionSpace class], @protocol(NSURLProtectionSpaceNSClientCertificateSpaceCategoryClassExports));
	class_addProtocol([NSURLProtectionSpace class], @protocol(NSURLProtectionSpaceInstanceExports));
	class_addProtocol([NSURLProtectionSpace class], @protocol(NSURLProtectionSpaceClassExports));
	class_addProtocol([NSURLProtectionSpace class], @protocol(NSURLProtectionSpaceNSServerTrustValidationSpaceCategoryInstanceExports));
	class_addProtocol([NSURLProtectionSpace class], @protocol(NSURLProtectionSpaceNSServerTrustValidationSpaceCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSURLProtectionSpaceFTPProxy;
	if (p != NULL) context[@"NSURLProtectionSpaceFTPProxy"] = NSURLProtectionSpaceFTPProxy;
	p = (void*) &NSURLProtectionSpaceFTP;
	if (p != NULL) context[@"NSURLProtectionSpaceFTP"] = NSURLProtectionSpaceFTP;
	p = (void*) &NSURLAuthenticationMethodHTTPDigest;
	if (p != NULL) context[@"NSURLAuthenticationMethodHTTPDigest"] = NSURLAuthenticationMethodHTTPDigest;
	p = (void*) &NSURLAuthenticationMethodHTTPBasic;
	if (p != NULL) context[@"NSURLAuthenticationMethodHTTPBasic"] = NSURLAuthenticationMethodHTTPBasic;
	p = (void*) &NSURLProtectionSpaceHTTPS;
	if (p != NULL) context[@"NSURLProtectionSpaceHTTPS"] = NSURLProtectionSpaceHTTPS;
	p = (void*) &NSURLAuthenticationMethodServerTrust;
	if (p != NULL) context[@"NSURLAuthenticationMethodServerTrust"] = NSURLAuthenticationMethodServerTrust;
	p = (void*) &NSURLProtectionSpaceSOCKSProxy;
	if (p != NULL) context[@"NSURLProtectionSpaceSOCKSProxy"] = NSURLProtectionSpaceSOCKSProxy;
	p = (void*) &NSURLProtectionSpaceHTTPSProxy;
	if (p != NULL) context[@"NSURLProtectionSpaceHTTPSProxy"] = NSURLProtectionSpaceHTTPSProxy;
	p = (void*) &NSURLAuthenticationMethodNegotiate;
	if (p != NULL) context[@"NSURLAuthenticationMethodNegotiate"] = NSURLAuthenticationMethodNegotiate;
	p = (void*) &NSURLAuthenticationMethodClientCertificate;
	if (p != NULL) context[@"NSURLAuthenticationMethodClientCertificate"] = NSURLAuthenticationMethodClientCertificate;
	p = (void*) &NSURLAuthenticationMethodHTMLForm;
	if (p != NULL) context[@"NSURLAuthenticationMethodHTMLForm"] = NSURLAuthenticationMethodHTMLForm;
	p = (void*) &NSURLAuthenticationMethodDefault;
	if (p != NULL) context[@"NSURLAuthenticationMethodDefault"] = NSURLAuthenticationMethodDefault;
	p = (void*) &NSURLProtectionSpaceHTTP;
	if (p != NULL) context[@"NSURLProtectionSpaceHTTP"] = NSURLProtectionSpaceHTTP;
	p = (void*) &NSURLAuthenticationMethodNTLM;
	if (p != NULL) context[@"NSURLAuthenticationMethodNTLM"] = NSURLAuthenticationMethodNTLM;
	p = (void*) &NSURLProtectionSpaceHTTPProxy;
	if (p != NULL) context[@"NSURLProtectionSpaceHTTPProxy"] = NSURLProtectionSpaceHTTPProxy;
}
void load_Foundation_NSURLProtectionSpace_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
