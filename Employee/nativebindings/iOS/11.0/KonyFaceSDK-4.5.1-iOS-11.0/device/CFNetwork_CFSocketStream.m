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
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFStreamErrorSOCKSSubDomainNone"] = @0;
	context[@"kCFStreamErrorSOCKSSubDomainVersionCode"] = @1;
	context[@"kCFStreamErrorSOCKS4SubDomainResponse"] = @2;
	context[@"kCFStreamErrorSOCKS5SubDomainUserPass"] = @3;
	context[@"kCFStreamErrorSOCKS5SubDomainMethod"] = @4;
	context[@"kCFStreamErrorSOCKS5SubDomainResponse"] = @5;

	context[@"kCFStreamErrorSOCKS5BadResponseAddr"] = @1;
	context[@"kCFStreamErrorSOCKS5BadState"] = @2;
	context[@"kCFStreamErrorSOCKSUnknownClientVersion"] = @3;

	context[@"kCFStreamErrorSOCKS4RequestFailed"] = @91;
	context[@"kCFStreamErrorSOCKS4IdentdFailed"] = @92;
	context[@"kCFStreamErrorSOCKS4IdConflict"] = @93;

	context[@"kSOCKS5NoAcceptableMethod"] = @255;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStreamSocketSecurityLevelTLSv1;
	if (p != NULL) context[@"kCFStreamSocketSecurityLevelTLSv1"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSecurityLevelTLSv1 inContext: context];
	p = (void*) &kCFStreamPropertySOCKSProxyPort;
	if (p != NULL) context[@"kCFStreamPropertySOCKSProxyPort"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSProxyPort inContext: context];
	p = (void*) &kCFStreamPropertyNoCellular;
	if (p != NULL) context[@"kCFStreamPropertyNoCellular"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyNoCellular inContext: context];
	p = (void*) &kCFStreamPropertySOCKSUser;
	if (p != NULL) context[@"kCFStreamPropertySOCKSUser"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSUser inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeVoIP;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeVoIP"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeVoIP inContext: context];
	p = (void*) &kCFStreamPropertySocketExtendedBackgroundIdleMode;
	if (p != NULL) context[@"kCFStreamPropertySocketExtendedBackgroundIdleMode"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketExtendedBackgroundIdleMode inContext: context];
	p = (void*) &kCFStreamSocketSecurityLevelNegotiatedSSL;
	if (p != NULL) context[@"kCFStreamSocketSecurityLevelNegotiatedSSL"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSecurityLevelNegotiatedSSL inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeVoice;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeVoice"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeVoice inContext: context];
	p = (void*) &kCFStreamPropertyConnectionIsCellular;
	if (p != NULL) context[@"kCFStreamPropertyConnectionIsCellular"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyConnectionIsCellular inContext: context];
	p = (void*) &kCFStreamPropertySocketRemoteNetService;
	if (p != NULL) context[@"kCFStreamPropertySocketRemoteNetService"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketRemoteNetService inContext: context];
	p = (void*) &kCFStreamPropertySOCKSProxyHost;
	if (p != NULL) context[@"kCFStreamPropertySOCKSProxyHost"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSProxyHost inContext: context];
	p = (void*) &kCFStreamNetworkServiceType;
	if (p != NULL) context[@"kCFStreamNetworkServiceType"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceType inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeBackground;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeBackground"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeBackground inContext: context];
	p = (void*) &kCFStreamSocketSecurityLevelNone;
	if (p != NULL) context[@"kCFStreamSocketSecurityLevelNone"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSecurityLevelNone inContext: context];
	p = (void*) &kCFStreamPropertyShouldCloseNativeSocket;
	if (p != NULL) context[@"kCFStreamPropertyShouldCloseNativeSocket"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyShouldCloseNativeSocket inContext: context];
	p = (void*) &kCFStreamPropertySOCKSProxy;
	if (p != NULL) context[@"kCFStreamPropertySOCKSProxy"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSProxy inContext: context];
	p = (void*) &kCFStreamPropertySSLContext;
	if (p != NULL) context[@"kCFStreamPropertySSLContext"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySSLContext inContext: context];
	p = (void*) &kCFStreamSSLCertificates;
	if (p != NULL) context[@"kCFStreamSSLCertificates"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLCertificates inContext: context];
	p = (void*) &kCFStreamPropertySSLSettings;
	if (p != NULL) context[@"kCFStreamPropertySSLSettings"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySSLSettings inContext: context];
	p = (void*) &kCFStreamPropertySSLPeerTrust;
	if (p != NULL) context[@"kCFStreamPropertySSLPeerTrust"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySSLPeerTrust inContext: context];
	p = (void*) &kCFStreamSSLValidatesCertificateChain;
	if (p != NULL) context[@"kCFStreamSSLValidatesCertificateChain"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLValidatesCertificateChain inContext: context];
	p = (void*) &kCFStreamSSLPeerName;
	if (p != NULL) context[@"kCFStreamSSLPeerName"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLPeerName inContext: context];
	p = (void*) &kCFStreamSSLIsServer;
	if (p != NULL) context[@"kCFStreamSSLIsServer"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLIsServer inContext: context];
	p = (void*) &kCFStreamSSLAllowsAnyRoot;
	if (p != NULL) context[@"kCFStreamSSLAllowsAnyRoot"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLAllowsAnyRoot inContext: context];
	p = (void*) &kCFStreamPropertySOCKSVersion;
	if (p != NULL) context[@"kCFStreamPropertySOCKSVersion"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSVersion inContext: context];
	p = (void*) &kCFStreamSSLLevel;
	if (p != NULL) context[@"kCFStreamSSLLevel"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLLevel inContext: context];
	p = (void*) &kCFStreamSocketSecurityLevelSSLv3;
	if (p != NULL) context[@"kCFStreamSocketSecurityLevelSSLv3"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSecurityLevelSSLv3 inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeVideo;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeVideo"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeVideo inContext: context];
	p = (void*) &kCFStreamPropertySocketRemoteHost;
	if (p != NULL) context[@"kCFStreamPropertySocketRemoteHost"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketRemoteHost inContext: context];
	p = (void*) &kCFStreamSSLAllowsExpiredRoots;
	if (p != NULL) context[@"kCFStreamSSLAllowsExpiredRoots"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLAllowsExpiredRoots inContext: context];
	p = (void*) &kCFStreamSocketSecurityLevelSSLv2;
	if (p != NULL) context[@"kCFStreamSocketSecurityLevelSSLv2"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSecurityLevelSSLv2 inContext: context];
	p = (void*) &kCFStreamSSLAllowsExpiredCertificates;
	if (p != NULL) context[@"kCFStreamSSLAllowsExpiredCertificates"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLAllowsExpiredCertificates inContext: context];
	p = (void*) &kCFStreamErrorDomainWinSock;
	if (p != NULL) context[@"kCFStreamErrorDomainWinSock"] = @(kCFStreamErrorDomainWinSock);
	p = (void*) &kCFStreamSocketSOCKSVersion5;
	if (p != NULL) context[@"kCFStreamSocketSOCKSVersion5"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSOCKSVersion5 inContext: context];
	p = (void*) &kCFStreamErrorDomainSOCKS;
	if (p != NULL) context[@"kCFStreamErrorDomainSOCKS"] = @(kCFStreamErrorDomainSOCKS);
	p = (void*) &kCFStreamPropertySocketSecurityLevel;
	if (p != NULL) context[@"kCFStreamPropertySocketSecurityLevel"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketSecurityLevel inContext: context];
	p = (void*) &kCFStreamPropertySSLPeerCertificates;
	if (p != NULL) context[@"kCFStreamPropertySSLPeerCertificates"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySSLPeerCertificates inContext: context];
	p = (void*) &kCFStreamSocketSOCKSVersion4;
	if (p != NULL) context[@"kCFStreamSocketSOCKSVersion4"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSOCKSVersion4 inContext: context];
	p = (void*) &kCFStreamPropertyProxyLocalBypass;
	if (p != NULL) context[@"kCFStreamPropertyProxyLocalBypass"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyProxyLocalBypass inContext: context];
	p = (void*) &kCFStreamErrorDomainSSL;
	if (p != NULL) context[@"kCFStreamErrorDomainSSL"] = @(kCFStreamErrorDomainSSL);
	p = (void*) &kCFStreamNetworkServiceTypeCallSignaling;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeCallSignaling"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeCallSignaling inContext: context];
	p = (void*) &kCFStreamPropertySOCKSPassword;
	if (p != NULL) context[@"kCFStreamPropertySOCKSPassword"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSPassword inContext: context];
}
void load_CFNetwork_CFSocketStream_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
