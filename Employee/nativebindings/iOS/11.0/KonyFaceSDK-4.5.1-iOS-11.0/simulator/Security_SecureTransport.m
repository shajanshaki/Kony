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
	context[@"SSLSetEncryptionCertificate"] = ^OSStatus(id arg0, id arg1) {
		return SSLSetEncryptionCertificate(arg0, arg1);
	};
	context[@"SSLSetSessionTicketsEnabled"] = ^OSStatus(id arg0, Boolean arg1) {
		return SSLSetSessionTicketsEnabled(arg0, arg1);
	};
	context[@"SSLSetSessionOption"] = ^OSStatus(id arg0, SSLSessionOption arg1, Boolean arg2) {
		return SSLSetSessionOption(arg0, arg1, arg2);
	};
	context[@"SSLHandshake"] = ^OSStatus(id arg0) {
		return SSLHandshake(arg0);
	};
	context[@"SSLSetSessionConfig"] = ^OSStatus(id arg0, id arg1) {
		return SSLSetSessionConfig(arg0, arg1);
	};
	context[@"SSLReHandshake"] = ^OSStatus(id arg0) {
		return SSLReHandshake(arg0);
	};
	context[@"SSLSetClientSideAuthenticate"] = ^OSStatus(id arg0, SSLAuthenticate arg1) {
		return SSLSetClientSideAuthenticate(arg0, arg1);
	};
	context[@"SSLSetConnection"] = ^OSStatus(id arg0, id arg1) {
		return SSLSetConnection(arg0, arg1);
	};
	context[@"SSLSetProtocolVersionMax"] = ^OSStatus(id arg0, SSLProtocol arg1) {
		return SSLSetProtocolVersionMax(arg0, arg1);
	};
	context[@"SSLCreateContext"] = ^id(id arg0, SSLProtocolSide arg1, SSLConnectionType arg2) {
		return SSLCreateContext(arg0, arg1, arg2);
	};
	context[@"SSLSetMaxDatagramRecordSize"] = ^OSStatus(id arg0, size_t arg1) {
		return SSLSetMaxDatagramRecordSize(arg0, arg1);
	};
	context[@"SSLSetALPNProtocols"] = ^OSStatus(id arg0, id arg1) {
		return SSLSetALPNProtocols(arg0, arg1);
	};
	context[@"SSLContextGetTypeID"] = ^CFTypeID() {
		return SSLContextGetTypeID();
	};
	context[@"SSLSetOCSPResponse"] = ^OSStatus(id arg0, id arg1) {
		return SSLSetOCSPResponse(arg0, arg1);
	};
	context[@"SSLSetProtocolVersionMin"] = ^OSStatus(id arg0, SSLProtocol arg1) {
		return SSLSetProtocolVersionMin(arg0, arg1);
	};
	context[@"SSLClose"] = ^OSStatus(id arg0) {
		return SSLClose(arg0);
	};
	context[@"SSLSetCertificate"] = ^OSStatus(id arg0, id arg1) {
		return SSLSetCertificate(arg0, arg1);
	};
	context[@"SSLSetError"] = ^OSStatus(id arg0, OSStatus arg1) {
		return SSLSetError(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kSSLProtocolUnknown"] = @0;
	context[@"kSSLProtocol3"] = @2;
	context[@"kTLSProtocol1"] = @4;
	context[@"kTLSProtocol11"] = @7;
	context[@"kTLSProtocol12"] = @8;
	context[@"kDTLSProtocol1"] = @9;
	context[@"kTLSProtocol13"] = @10;
	context[@"kTLSProtocolMaxSupported"] = @999;
	context[@"kSSLProtocol2"] = @1;
	context[@"kSSLProtocol3Only"] = @3;
	context[@"kTLSProtocol1Only"] = @5;
	context[@"kSSLProtocolAll"] = @6;

	context[@"kSSLSessionOptionBreakOnServerAuth"] = @0;
	context[@"kSSLSessionOptionBreakOnCertRequested"] = @1;
	context[@"kSSLSessionOptionBreakOnClientAuth"] = @2;
	context[@"kSSLSessionOptionFalseStart"] = @3;
	context[@"kSSLSessionOptionSendOneByteRecord"] = @4;
	context[@"kSSLSessionOptionAllowServerIdentityChange"] = @5;
	context[@"kSSLSessionOptionFallback"] = @6;
	context[@"kSSLSessionOptionBreakOnClientHello"] = @7;
	context[@"kSSLSessionOptionAllowRenegotiation"] = @8;
	context[@"kSSLSessionOptionEnableSessionTickets"] = @9;

	context[@"kSSLIdle"] = @0;
	context[@"kSSLHandshake"] = @1;
	context[@"kSSLConnected"] = @2;
	context[@"kSSLClosed"] = @3;
	context[@"kSSLAborted"] = @4;

	context[@"kSSLClientCertNone"] = @0;
	context[@"kSSLClientCertRequested"] = @1;
	context[@"kSSLClientCertSent"] = @2;
	context[@"kSSLClientCertRejected"] = @3;

	context[@"errSSLProtocol"] = @-9800;
	context[@"errSSLNegotiation"] = @-9801;
	context[@"errSSLFatalAlert"] = @-9802;
	context[@"errSSLWouldBlock"] = @-9803;
	context[@"errSSLSessionNotFound"] = @-9804;
	context[@"errSSLClosedGraceful"] = @-9805;
	context[@"errSSLClosedAbort"] = @-9806;
	context[@"errSSLXCertChainInvalid"] = @-9807;
	context[@"errSSLBadCert"] = @-9808;
	context[@"errSSLCrypto"] = @-9809;
	context[@"errSSLInternal"] = @-9810;
	context[@"errSSLModuleAttach"] = @-9811;
	context[@"errSSLUnknownRootCert"] = @-9812;
	context[@"errSSLNoRootCert"] = @-9813;
	context[@"errSSLCertExpired"] = @-9814;
	context[@"errSSLCertNotYetValid"] = @-9815;
	context[@"errSSLClosedNoNotify"] = @-9816;
	context[@"errSSLBufferOverflow"] = @-9817;
	context[@"errSSLBadCipherSuite"] = @-9818;
	context[@"errSSLPeerUnexpectedMsg"] = @-9819;
	context[@"errSSLPeerBadRecordMac"] = @-9820;
	context[@"errSSLPeerDecryptionFail"] = @-9821;
	context[@"errSSLPeerRecordOverflow"] = @-9822;
	context[@"errSSLPeerDecompressFail"] = @-9823;
	context[@"errSSLPeerHandshakeFail"] = @-9824;
	context[@"errSSLPeerBadCert"] = @-9825;
	context[@"errSSLPeerUnsupportedCert"] = @-9826;
	context[@"errSSLPeerCertRevoked"] = @-9827;
	context[@"errSSLPeerCertExpired"] = @-9828;
	context[@"errSSLPeerCertUnknown"] = @-9829;
	context[@"errSSLIllegalParam"] = @-9830;
	context[@"errSSLPeerUnknownCA"] = @-9831;
	context[@"errSSLPeerAccessDenied"] = @-9832;
	context[@"errSSLPeerDecodeError"] = @-9833;
	context[@"errSSLPeerDecryptError"] = @-9834;
	context[@"errSSLPeerExportRestriction"] = @-9835;
	context[@"errSSLPeerProtocolVersion"] = @-9836;
	context[@"errSSLPeerInsufficientSecurity"] = @-9837;
	context[@"errSSLPeerInternalError"] = @-9838;
	context[@"errSSLPeerUserCancelled"] = @-9839;
	context[@"errSSLPeerNoRenegotiation"] = @-9840;
	context[@"errSSLPeerAuthCompleted"] = @-9841;
	context[@"errSSLClientCertRequested"] = @-9842;
	context[@"errSSLHostNameMismatch"] = @-9843;
	context[@"errSSLConnectionRefused"] = @-9844;
	context[@"errSSLDecryptionFail"] = @-9845;
	context[@"errSSLBadRecordMac"] = @-9846;
	context[@"errSSLRecordOverflow"] = @-9847;
	context[@"errSSLBadConfiguration"] = @-9848;
	context[@"errSSLUnexpectedRecord"] = @-9849;
	context[@"errSSLWeakPeerEphemeralDHKey"] = @-9850;
	context[@"errSSLClientHelloReceived"] = @-9851;

	context[@"kSSLServerSide"] = @0;
	context[@"kSSLClientSide"] = @1;

	context[@"kSSLStreamType"] = @0;
	context[@"kSSLDatagramType"] = @1;

	context[@"kNeverAuthenticate"] = @0;
	context[@"kAlwaysAuthenticate"] = @1;
	context[@"kTryAuthenticate"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kSSLSessionConfig_default;
	if (p != NULL) context[@"kSSLSessionConfig_default"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_default inContext: context];
	p = (void*) &kSSLSessionConfig_anonymous;
	if (p != NULL) context[@"kSSLSessionConfig_anonymous"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_anonymous inContext: context];
	p = (void*) &kSSLSessionConfig_RC4_fallback;
	if (p != NULL) context[@"kSSLSessionConfig_RC4_fallback"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_RC4_fallback inContext: context];
	p = (void*) &kSSLSessionConfig_TLSv1_3DES_fallback;
	if (p != NULL) context[@"kSSLSessionConfig_TLSv1_3DES_fallback"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_TLSv1_3DES_fallback inContext: context];
	p = (void*) &kSSLSessionConfig_legacy;
	if (p != NULL) context[@"kSSLSessionConfig_legacy"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_legacy inContext: context];
	p = (void*) &kSSLSessionConfig_TLSv1_RC4_fallback;
	if (p != NULL) context[@"kSSLSessionConfig_TLSv1_RC4_fallback"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_TLSv1_RC4_fallback inContext: context];
	p = (void*) &kSSLSessionConfig_ATSv1_noPFS;
	if (p != NULL) context[@"kSSLSessionConfig_ATSv1_noPFS"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_ATSv1_noPFS inContext: context];
	p = (void*) &kSSLSessionConfig_TLSv1_fallback;
	if (p != NULL) context[@"kSSLSessionConfig_TLSv1_fallback"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_TLSv1_fallback inContext: context];
	p = (void*) &kSSLSessionConfig_legacy_DHE;
	if (p != NULL) context[@"kSSLSessionConfig_legacy_DHE"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_legacy_DHE inContext: context];
	p = (void*) &kSSLSessionConfig_standard;
	if (p != NULL) context[@"kSSLSessionConfig_standard"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_standard inContext: context];
	p = (void*) &kSSLSessionConfig_3DES_fallback;
	if (p != NULL) context[@"kSSLSessionConfig_3DES_fallback"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_3DES_fallback inContext: context];
	p = (void*) &kSSLSessionConfig_ATSv1;
	if (p != NULL) context[@"kSSLSessionConfig_ATSv1"] = [JSValue valueWithObject: (__bridge id) kSSLSessionConfig_ATSv1 inContext: context];
}
void load_Security_SecureTransport_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
