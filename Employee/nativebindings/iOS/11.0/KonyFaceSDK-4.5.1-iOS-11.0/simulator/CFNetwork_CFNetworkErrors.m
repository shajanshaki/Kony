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
	context[@"kCFHostErrorHostNotFound"] = @1;
	context[@"kCFHostErrorUnknown"] = @2;
	context[@"kCFSOCKSErrorUnknownClientVersion"] = @100;
	context[@"kCFSOCKSErrorUnsupportedServerVersion"] = @101;
	context[@"kCFSOCKS4ErrorRequestFailed"] = @110;
	context[@"kCFSOCKS4ErrorIdentdFailed"] = @111;
	context[@"kCFSOCKS4ErrorIdConflict"] = @112;
	context[@"kCFSOCKS4ErrorUnknownStatusCode"] = @113;
	context[@"kCFSOCKS5ErrorBadState"] = @120;
	context[@"kCFSOCKS5ErrorBadResponseAddr"] = @121;
	context[@"kCFSOCKS5ErrorBadCredentials"] = @122;
	context[@"kCFSOCKS5ErrorUnsupportedNegotiationMethod"] = @123;
	context[@"kCFSOCKS5ErrorNoAcceptableMethod"] = @124;
	context[@"kCFFTPErrorUnexpectedStatusCode"] = @200;
	context[@"kCFErrorHTTPAuthenticationTypeUnsupported"] = @300;
	context[@"kCFErrorHTTPBadCredentials"] = @301;
	context[@"kCFErrorHTTPConnectionLost"] = @302;
	context[@"kCFErrorHTTPParseFailure"] = @303;
	context[@"kCFErrorHTTPRedirectionLoopDetected"] = @304;
	context[@"kCFErrorHTTPBadURL"] = @305;
	context[@"kCFErrorHTTPProxyConnectionFailure"] = @306;
	context[@"kCFErrorHTTPBadProxyCredentials"] = @307;
	context[@"kCFErrorPACFileError"] = @308;
	context[@"kCFErrorPACFileAuth"] = @309;
	context[@"kCFErrorHTTPSProxyConnectionFailure"] = @310;
	context[@"kCFStreamErrorHTTPSProxyFailureUnexpectedResponseToCONNECTMethod"] = @311;
	context[@"kCFURLErrorBackgroundSessionInUseByAnotherProcess"] = @-996;
	context[@"kCFURLErrorBackgroundSessionWasDisconnected"] = @-997;
	context[@"kCFURLErrorUnknown"] = @-998;
	context[@"kCFURLErrorCancelled"] = @-999;
	context[@"kCFURLErrorBadURL"] = @-1000;
	context[@"kCFURLErrorTimedOut"] = @-1001;
	context[@"kCFURLErrorUnsupportedURL"] = @-1002;
	context[@"kCFURLErrorCannotFindHost"] = @-1003;
	context[@"kCFURLErrorCannotConnectToHost"] = @-1004;
	context[@"kCFURLErrorNetworkConnectionLost"] = @-1005;
	context[@"kCFURLErrorDNSLookupFailed"] = @-1006;
	context[@"kCFURLErrorHTTPTooManyRedirects"] = @-1007;
	context[@"kCFURLErrorResourceUnavailable"] = @-1008;
	context[@"kCFURLErrorNotConnectedToInternet"] = @-1009;
	context[@"kCFURLErrorRedirectToNonExistentLocation"] = @-1010;
	context[@"kCFURLErrorBadServerResponse"] = @-1011;
	context[@"kCFURLErrorUserCancelledAuthentication"] = @-1012;
	context[@"kCFURLErrorUserAuthenticationRequired"] = @-1013;
	context[@"kCFURLErrorZeroByteResource"] = @-1014;
	context[@"kCFURLErrorCannotDecodeRawData"] = @-1015;
	context[@"kCFURLErrorCannotDecodeContentData"] = @-1016;
	context[@"kCFURLErrorCannotParseResponse"] = @-1017;
	context[@"kCFURLErrorInternationalRoamingOff"] = @-1018;
	context[@"kCFURLErrorCallIsActive"] = @-1019;
	context[@"kCFURLErrorDataNotAllowed"] = @-1020;
	context[@"kCFURLErrorRequestBodyStreamExhausted"] = @-1021;
	context[@"kCFURLErrorAppTransportSecurityRequiresSecureConnection"] = @-1022;
	context[@"kCFURLErrorFileDoesNotExist"] = @-1100;
	context[@"kCFURLErrorFileIsDirectory"] = @-1101;
	context[@"kCFURLErrorNoPermissionsToReadFile"] = @-1102;
	context[@"kCFURLErrorDataLengthExceedsMaximum"] = @-1103;
	context[@"kCFURLErrorFileOutsideSafeArea"] = @-1104;
	context[@"kCFURLErrorSecureConnectionFailed"] = @-1200;
	context[@"kCFURLErrorServerCertificateHasBadDate"] = @-1201;
	context[@"kCFURLErrorServerCertificateUntrusted"] = @-1202;
	context[@"kCFURLErrorServerCertificateHasUnknownRoot"] = @-1203;
	context[@"kCFURLErrorServerCertificateNotYetValid"] = @-1204;
	context[@"kCFURLErrorClientCertificateRejected"] = @-1205;
	context[@"kCFURLErrorClientCertificateRequired"] = @-1206;
	context[@"kCFURLErrorCannotLoadFromNetwork"] = @-2000;
	context[@"kCFURLErrorCannotCreateFile"] = @-3000;
	context[@"kCFURLErrorCannotOpenFile"] = @-3001;
	context[@"kCFURLErrorCannotCloseFile"] = @-3002;
	context[@"kCFURLErrorCannotWriteToFile"] = @-3003;
	context[@"kCFURLErrorCannotRemoveFile"] = @-3004;
	context[@"kCFURLErrorCannotMoveFile"] = @-3005;
	context[@"kCFURLErrorDownloadDecodingFailedMidStream"] = @-3006;
	context[@"kCFURLErrorDownloadDecodingFailedToComplete"] = @-3007;
	context[@"kCFHTTPCookieCannotParseCookieFile"] = @-4000;
	context[@"kCFNetServiceErrorUnknown"] = @-72000;
	context[@"kCFNetServiceErrorCollision"] = @-72001;
	context[@"kCFNetServiceErrorNotFound"] = @-72002;
	context[@"kCFNetServiceErrorInProgress"] = @-72003;
	context[@"kCFNetServiceErrorBadArgument"] = @-72004;
	context[@"kCFNetServiceErrorCancel"] = @-72005;
	context[@"kCFNetServiceErrorInvalid"] = @-72006;
	context[@"kCFNetServiceErrorTimeout"] = @-72007;
	context[@"kCFNetServiceErrorDNSServiceFailure"] = @-73000;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFErrorDomainCFNetwork;
	if (p != NULL) context[@"kCFErrorDomainCFNetwork"] = [JSValue valueWithObject: (__bridge id) kCFErrorDomainCFNetwork inContext: context];
	p = (void*) &kCFURLErrorFailingURLErrorKey;
	if (p != NULL) context[@"kCFURLErrorFailingURLErrorKey"] = [JSValue valueWithObject: (__bridge id) kCFURLErrorFailingURLErrorKey inContext: context];
	p = (void*) &kCFFTPStatusCodeKey;
	if (p != NULL) context[@"kCFFTPStatusCodeKey"] = [JSValue valueWithObject: (__bridge id) kCFFTPStatusCodeKey inContext: context];
	p = (void*) &kCFErrorDomainWinSock;
	if (p != NULL) context[@"kCFErrorDomainWinSock"] = [JSValue valueWithObject: (__bridge id) kCFErrorDomainWinSock inContext: context];
	p = (void*) &kCFGetAddrInfoFailureKey;
	if (p != NULL) context[@"kCFGetAddrInfoFailureKey"] = [JSValue valueWithObject: (__bridge id) kCFGetAddrInfoFailureKey inContext: context];
	p = (void*) &kCFSOCKSNegotiationMethodKey;
	if (p != NULL) context[@"kCFSOCKSNegotiationMethodKey"] = [JSValue valueWithObject: (__bridge id) kCFSOCKSNegotiationMethodKey inContext: context];
	p = (void*) &kCFURLErrorFailingURLStringErrorKey;
	if (p != NULL) context[@"kCFURLErrorFailingURLStringErrorKey"] = [JSValue valueWithObject: (__bridge id) kCFURLErrorFailingURLStringErrorKey inContext: context];
	p = (void*) &kCFSOCKSVersionKey;
	if (p != NULL) context[@"kCFSOCKSVersionKey"] = [JSValue valueWithObject: (__bridge id) kCFSOCKSVersionKey inContext: context];
	p = (void*) &kCFDNSServiceFailureKey;
	if (p != NULL) context[@"kCFDNSServiceFailureKey"] = [JSValue valueWithObject: (__bridge id) kCFDNSServiceFailureKey inContext: context];
	p = (void*) &kCFSOCKSStatusCodeKey;
	if (p != NULL) context[@"kCFSOCKSStatusCodeKey"] = [JSValue valueWithObject: (__bridge id) kCFSOCKSStatusCodeKey inContext: context];
}
void load_CFNetwork_CFNetworkErrors_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
