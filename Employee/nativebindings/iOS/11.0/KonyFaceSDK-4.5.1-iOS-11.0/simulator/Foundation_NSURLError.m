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
	context[@"NSURLErrorCancelledReasonUserForceQuitApplication"] = @0L;
	context[@"NSURLErrorCancelledReasonBackgroundUpdatesDisabled"] = @1L;
	context[@"NSURLErrorCancelledReasonInsufficientSystemResources"] = @2L;

	context[@"NSURLErrorUnknown"] = @-1L;
	context[@"NSURLErrorCancelled"] = @-999L;
	context[@"NSURLErrorBadURL"] = @-1000L;
	context[@"NSURLErrorTimedOut"] = @-1001L;
	context[@"NSURLErrorUnsupportedURL"] = @-1002L;
	context[@"NSURLErrorCannotFindHost"] = @-1003L;
	context[@"NSURLErrorCannotConnectToHost"] = @-1004L;
	context[@"NSURLErrorNetworkConnectionLost"] = @-1005L;
	context[@"NSURLErrorDNSLookupFailed"] = @-1006L;
	context[@"NSURLErrorHTTPTooManyRedirects"] = @-1007L;
	context[@"NSURLErrorResourceUnavailable"] = @-1008L;
	context[@"NSURLErrorNotConnectedToInternet"] = @-1009L;
	context[@"NSURLErrorRedirectToNonExistentLocation"] = @-1010L;
	context[@"NSURLErrorBadServerResponse"] = @-1011L;
	context[@"NSURLErrorUserCancelledAuthentication"] = @-1012L;
	context[@"NSURLErrorUserAuthenticationRequired"] = @-1013L;
	context[@"NSURLErrorZeroByteResource"] = @-1014L;
	context[@"NSURLErrorCannotDecodeRawData"] = @-1015L;
	context[@"NSURLErrorCannotDecodeContentData"] = @-1016L;
	context[@"NSURLErrorCannotParseResponse"] = @-1017L;
	context[@"NSURLErrorAppTransportSecurityRequiresSecureConnection"] = @-1022L;
	context[@"NSURLErrorFileDoesNotExist"] = @-1100L;
	context[@"NSURLErrorFileIsDirectory"] = @-1101L;
	context[@"NSURLErrorNoPermissionsToReadFile"] = @-1102L;
	context[@"NSURLErrorDataLengthExceedsMaximum"] = @-1103L;
	context[@"NSURLErrorFileOutsideSafeArea"] = @-1104L;
	context[@"NSURLErrorSecureConnectionFailed"] = @-1200L;
	context[@"NSURLErrorServerCertificateHasBadDate"] = @-1201L;
	context[@"NSURLErrorServerCertificateUntrusted"] = @-1202L;
	context[@"NSURLErrorServerCertificateHasUnknownRoot"] = @-1203L;
	context[@"NSURLErrorServerCertificateNotYetValid"] = @-1204L;
	context[@"NSURLErrorClientCertificateRejected"] = @-1205L;
	context[@"NSURLErrorClientCertificateRequired"] = @-1206L;
	context[@"NSURLErrorCannotLoadFromNetwork"] = @-2000L;
	context[@"NSURLErrorCannotCreateFile"] = @-3000L;
	context[@"NSURLErrorCannotOpenFile"] = @-3001L;
	context[@"NSURLErrorCannotCloseFile"] = @-3002L;
	context[@"NSURLErrorCannotWriteToFile"] = @-3003L;
	context[@"NSURLErrorCannotRemoveFile"] = @-3004L;
	context[@"NSURLErrorCannotMoveFile"] = @-3005L;
	context[@"NSURLErrorDownloadDecodingFailedMidStream"] = @-3006L;
	context[@"NSURLErrorDownloadDecodingFailedToComplete"] = @-3007L;
	context[@"NSURLErrorInternationalRoamingOff"] = @-1018L;
	context[@"NSURLErrorCallIsActive"] = @-1019L;
	context[@"NSURLErrorDataNotAllowed"] = @-1020L;
	context[@"NSURLErrorRequestBodyStreamExhausted"] = @-1021L;
	context[@"NSURLErrorBackgroundSessionRequiresSharedContainer"] = @-995L;
	context[@"NSURLErrorBackgroundSessionInUseByAnotherProcess"] = @-996L;
	context[@"NSURLErrorBackgroundSessionWasDisconnected"] = @-997L;

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
