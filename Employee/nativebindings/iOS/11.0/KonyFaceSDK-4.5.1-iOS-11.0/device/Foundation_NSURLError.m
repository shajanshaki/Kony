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
	context[@"NSURLErrorCancelledReasonUserForceQuitApplication"] = @0;
	context[@"NSURLErrorCancelledReasonBackgroundUpdatesDisabled"] = @1;
	context[@"NSURLErrorCancelledReasonInsufficientSystemResources"] = @2;

	context[@"NSURLErrorUnknown"] = @-1;
	context[@"NSURLErrorCancelled"] = @-999;
	context[@"NSURLErrorBadURL"] = @-1000;
	context[@"NSURLErrorTimedOut"] = @-1001;
	context[@"NSURLErrorUnsupportedURL"] = @-1002;
	context[@"NSURLErrorCannotFindHost"] = @-1003;
	context[@"NSURLErrorCannotConnectToHost"] = @-1004;
	context[@"NSURLErrorNetworkConnectionLost"] = @-1005;
	context[@"NSURLErrorDNSLookupFailed"] = @-1006;
	context[@"NSURLErrorHTTPTooManyRedirects"] = @-1007;
	context[@"NSURLErrorResourceUnavailable"] = @-1008;
	context[@"NSURLErrorNotConnectedToInternet"] = @-1009;
	context[@"NSURLErrorRedirectToNonExistentLocation"] = @-1010;
	context[@"NSURLErrorBadServerResponse"] = @-1011;
	context[@"NSURLErrorUserCancelledAuthentication"] = @-1012;
	context[@"NSURLErrorUserAuthenticationRequired"] = @-1013;
	context[@"NSURLErrorZeroByteResource"] = @-1014;
	context[@"NSURLErrorCannotDecodeRawData"] = @-1015;
	context[@"NSURLErrorCannotDecodeContentData"] = @-1016;
	context[@"NSURLErrorCannotParseResponse"] = @-1017;
	context[@"NSURLErrorAppTransportSecurityRequiresSecureConnection"] = @-1022;
	context[@"NSURLErrorFileDoesNotExist"] = @-1100;
	context[@"NSURLErrorFileIsDirectory"] = @-1101;
	context[@"NSURLErrorNoPermissionsToReadFile"] = @-1102;
	context[@"NSURLErrorDataLengthExceedsMaximum"] = @-1103;
	context[@"NSURLErrorFileOutsideSafeArea"] = @-1104;
	context[@"NSURLErrorSecureConnectionFailed"] = @-1200;
	context[@"NSURLErrorServerCertificateHasBadDate"] = @-1201;
	context[@"NSURLErrorServerCertificateUntrusted"] = @-1202;
	context[@"NSURLErrorServerCertificateHasUnknownRoot"] = @-1203;
	context[@"NSURLErrorServerCertificateNotYetValid"] = @-1204;
	context[@"NSURLErrorClientCertificateRejected"] = @-1205;
	context[@"NSURLErrorClientCertificateRequired"] = @-1206;
	context[@"NSURLErrorCannotLoadFromNetwork"] = @-2000;
	context[@"NSURLErrorCannotCreateFile"] = @-3000;
	context[@"NSURLErrorCannotOpenFile"] = @-3001;
	context[@"NSURLErrorCannotCloseFile"] = @-3002;
	context[@"NSURLErrorCannotWriteToFile"] = @-3003;
	context[@"NSURLErrorCannotRemoveFile"] = @-3004;
	context[@"NSURLErrorCannotMoveFile"] = @-3005;
	context[@"NSURLErrorDownloadDecodingFailedMidStream"] = @-3006;
	context[@"NSURLErrorDownloadDecodingFailedToComplete"] = @-3007;
	context[@"NSURLErrorInternationalRoamingOff"] = @-1018;
	context[@"NSURLErrorCallIsActive"] = @-1019;
	context[@"NSURLErrorDataNotAllowed"] = @-1020;
	context[@"NSURLErrorRequestBodyStreamExhausted"] = @-1021;
	context[@"NSURLErrorBackgroundSessionRequiresSharedContainer"] = @-995;
	context[@"NSURLErrorBackgroundSessionInUseByAnotherProcess"] = @-996;
	context[@"NSURLErrorBackgroundSessionWasDisconnected"] = @-997;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSErrorFailingURLStringKey;
	if (p != NULL) context[@"NSErrorFailingURLStringKey"] = NSErrorFailingURLStringKey;
	p = (void*) &NSURLErrorFailingURLErrorKey;
	if (p != NULL) context[@"NSURLErrorFailingURLErrorKey"] = NSURLErrorFailingURLErrorKey;
	p = (void*) &NSURLErrorDomain;
	if (p != NULL) context[@"NSURLErrorDomain"] = NSURLErrorDomain;
	p = (void*) &NSURLErrorFailingURLPeerTrustErrorKey;
	if (p != NULL) context[@"NSURLErrorFailingURLPeerTrustErrorKey"] = NSURLErrorFailingURLPeerTrustErrorKey;
	p = (void*) &NSURLErrorFailingURLStringErrorKey;
	if (p != NULL) context[@"NSURLErrorFailingURLStringErrorKey"] = NSURLErrorFailingURLStringErrorKey;
}
void load_Foundation_NSURLError_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
