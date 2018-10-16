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
	context[@"NSFileNoSuchFileError"] = @4L;
	context[@"NSFileLockingError"] = @255L;
	context[@"NSFileReadUnknownError"] = @256L;
	context[@"NSFileReadNoPermissionError"] = @257L;
	context[@"NSFileReadInvalidFileNameError"] = @258L;
	context[@"NSFileReadCorruptFileError"] = @259L;
	context[@"NSFileReadNoSuchFileError"] = @260L;
	context[@"NSFileReadInapplicableStringEncodingError"] = @261L;
	context[@"NSFileReadUnsupportedSchemeError"] = @262L;
	context[@"NSFileReadTooLargeError"] = @263L;
	context[@"NSFileReadUnknownStringEncodingError"] = @264L;
	context[@"NSFileWriteUnknownError"] = @512L;
	context[@"NSFileWriteNoPermissionError"] = @513L;
	context[@"NSFileWriteInvalidFileNameError"] = @514L;
	context[@"NSFileWriteFileExistsError"] = @516L;
	context[@"NSFileWriteInapplicableStringEncodingError"] = @517L;
	context[@"NSFileWriteUnsupportedSchemeError"] = @518L;
	context[@"NSFileWriteOutOfSpaceError"] = @640L;
	context[@"NSFileWriteVolumeReadOnlyError"] = @642L;
	context[@"NSKeyValueValidationError"] = @1024L;
	context[@"NSFormattingError"] = @2048L;
	context[@"NSUserCancelledError"] = @3072L;
	context[@"NSFeatureUnsupportedError"] = @3328L;
	context[@"NSExecutableNotLoadableError"] = @3584L;
	context[@"NSExecutableArchitectureMismatchError"] = @3585L;
	context[@"NSExecutableRuntimeMismatchError"] = @3586L;
	context[@"NSExecutableLoadError"] = @3587L;
	context[@"NSExecutableLinkError"] = @3588L;
	context[@"NSFileErrorMinimum"] = @0L;
	context[@"NSFileErrorMaximum"] = @1023L;
	context[@"NSValidationErrorMinimum"] = @1024L;
	context[@"NSValidationErrorMaximum"] = @2047L;
	context[@"NSExecutableErrorMinimum"] = @3584L;
	context[@"NSExecutableErrorMaximum"] = @3839L;
	context[@"NSFormattingErrorMinimum"] = @2048L;
	context[@"NSFormattingErrorMaximum"] = @2559L;
	context[@"NSPropertyListReadCorruptError"] = @3840L;
	context[@"NSPropertyListReadUnknownVersionError"] = @3841L;
	context[@"NSPropertyListReadStreamError"] = @3842L;
	context[@"NSPropertyListWriteStreamError"] = @3851L;
	context[@"NSPropertyListWriteInvalidError"] = @3852L;
	context[@"NSPropertyListErrorMinimum"] = @3840L;
	context[@"NSPropertyListErrorMaximum"] = @4095L;
	context[@"NSXPCConnectionInterrupted"] = @4097L;
	context[@"NSXPCConnectionInvalid"] = @4099L;
	context[@"NSXPCConnectionReplyInvalid"] = @4101L;
	context[@"NSXPCConnectionErrorMinimum"] = @4096L;
	context[@"NSXPCConnectionErrorMaximum"] = @4224L;
	context[@"NSUbiquitousFileUnavailableError"] = @4353L;
	context[@"NSUbiquitousFileNotUploadedDueToQuotaError"] = @4354L;
	context[@"NSUbiquitousFileUbiquityServerNotAvailable"] = @4355L;
	context[@"NSUbiquitousFileErrorMinimum"] = @4352L;
	context[@"NSUbiquitousFileErrorMaximum"] = @4607L;
	context[@"NSUserActivityHandoffFailedError"] = @4608L;
	context[@"NSUserActivityConnectionUnavailableError"] = @4609L;
	context[@"NSUserActivityRemoteApplicationTimedOutError"] = @4610L;
	context[@"NSUserActivityHandoffUserInfoTooLargeError"] = @4611L;
	context[@"NSUserActivityErrorMinimum"] = @4608L;
	context[@"NSUserActivityErrorMaximum"] = @4863L;
	context[@"NSCoderReadCorruptError"] = @4864L;
	context[@"NSCoderValueNotFoundError"] = @4865L;
	context[@"NSCoderInvalidValueError"] = @4866L;
	context[@"NSCoderErrorMinimum"] = @4864L;
	context[@"NSCoderErrorMaximum"] = @4991L;
	context[@"NSBundleErrorMinimum"] = @4992L;
	context[@"NSBundleErrorMaximum"] = @5119L;
	context[@"NSBundleOnDemandResourceOutOfSpaceError"] = @4992L;
	context[@"NSBundleOnDemandResourceExceededMaximumSizeError"] = @4993L;
	context[@"NSBundleOnDemandResourceInvalidTagError"] = @4994L;
	context[@"NSCloudSharingNetworkFailureError"] = @5120L;
	context[@"NSCloudSharingQuotaExceededError"] = @5121L;
	context[@"NSCloudSharingTooManyParticipantsError"] = @5122L;
	context[@"NSCloudSharingConflictError"] = @5123L;
	context[@"NSCloudSharingNoPermissionError"] = @5124L;
	context[@"NSCloudSharingOtherError"] = @5375L;
	context[@"NSCloudSharingErrorMinimum"] = @5120L;
	context[@"NSCloudSharingErrorMaximum"] = @5375L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_FoundationErrors_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
