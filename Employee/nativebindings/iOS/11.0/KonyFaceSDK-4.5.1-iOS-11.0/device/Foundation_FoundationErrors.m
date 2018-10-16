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
	context[@"NSFileNoSuchFileError"] = @4;
	context[@"NSFileLockingError"] = @255;
	context[@"NSFileReadUnknownError"] = @256;
	context[@"NSFileReadNoPermissionError"] = @257;
	context[@"NSFileReadInvalidFileNameError"] = @258;
	context[@"NSFileReadCorruptFileError"] = @259;
	context[@"NSFileReadNoSuchFileError"] = @260;
	context[@"NSFileReadInapplicableStringEncodingError"] = @261;
	context[@"NSFileReadUnsupportedSchemeError"] = @262;
	context[@"NSFileReadTooLargeError"] = @263;
	context[@"NSFileReadUnknownStringEncodingError"] = @264;
	context[@"NSFileWriteUnknownError"] = @512;
	context[@"NSFileWriteNoPermissionError"] = @513;
	context[@"NSFileWriteInvalidFileNameError"] = @514;
	context[@"NSFileWriteFileExistsError"] = @516;
	context[@"NSFileWriteInapplicableStringEncodingError"] = @517;
	context[@"NSFileWriteUnsupportedSchemeError"] = @518;
	context[@"NSFileWriteOutOfSpaceError"] = @640;
	context[@"NSFileWriteVolumeReadOnlyError"] = @642;
	context[@"NSKeyValueValidationError"] = @1024;
	context[@"NSFormattingError"] = @2048;
	context[@"NSUserCancelledError"] = @3072;
	context[@"NSFeatureUnsupportedError"] = @3328;
	context[@"NSExecutableNotLoadableError"] = @3584;
	context[@"NSExecutableArchitectureMismatchError"] = @3585;
	context[@"NSExecutableRuntimeMismatchError"] = @3586;
	context[@"NSExecutableLoadError"] = @3587;
	context[@"NSExecutableLinkError"] = @3588;
	context[@"NSFileErrorMinimum"] = @0;
	context[@"NSFileErrorMaximum"] = @1023;
	context[@"NSValidationErrorMinimum"] = @1024;
	context[@"NSValidationErrorMaximum"] = @2047;
	context[@"NSExecutableErrorMinimum"] = @3584;
	context[@"NSExecutableErrorMaximum"] = @3839;
	context[@"NSFormattingErrorMinimum"] = @2048;
	context[@"NSFormattingErrorMaximum"] = @2559;
	context[@"NSPropertyListReadCorruptError"] = @3840;
	context[@"NSPropertyListReadUnknownVersionError"] = @3841;
	context[@"NSPropertyListReadStreamError"] = @3842;
	context[@"NSPropertyListWriteStreamError"] = @3851;
	context[@"NSPropertyListWriteInvalidError"] = @3852;
	context[@"NSPropertyListErrorMinimum"] = @3840;
	context[@"NSPropertyListErrorMaximum"] = @4095;
	context[@"NSXPCConnectionInterrupted"] = @4097;
	context[@"NSXPCConnectionInvalid"] = @4099;
	context[@"NSXPCConnectionReplyInvalid"] = @4101;
	context[@"NSXPCConnectionErrorMinimum"] = @4096;
	context[@"NSXPCConnectionErrorMaximum"] = @4224;
	context[@"NSUbiquitousFileUnavailableError"] = @4353;
	context[@"NSUbiquitousFileNotUploadedDueToQuotaError"] = @4354;
	context[@"NSUbiquitousFileUbiquityServerNotAvailable"] = @4355;
	context[@"NSUbiquitousFileErrorMinimum"] = @4352;
	context[@"NSUbiquitousFileErrorMaximum"] = @4607;
	context[@"NSUserActivityHandoffFailedError"] = @4608;
	context[@"NSUserActivityConnectionUnavailableError"] = @4609;
	context[@"NSUserActivityRemoteApplicationTimedOutError"] = @4610;
	context[@"NSUserActivityHandoffUserInfoTooLargeError"] = @4611;
	context[@"NSUserActivityErrorMinimum"] = @4608;
	context[@"NSUserActivityErrorMaximum"] = @4863;
	context[@"NSCoderReadCorruptError"] = @4864;
	context[@"NSCoderValueNotFoundError"] = @4865;
	context[@"NSCoderInvalidValueError"] = @4866;
	context[@"NSCoderErrorMinimum"] = @4864;
	context[@"NSCoderErrorMaximum"] = @4991;
	context[@"NSBundleErrorMinimum"] = @4992;
	context[@"NSBundleErrorMaximum"] = @5119;
	context[@"NSBundleOnDemandResourceOutOfSpaceError"] = @4992;
	context[@"NSBundleOnDemandResourceExceededMaximumSizeError"] = @4993;
	context[@"NSBundleOnDemandResourceInvalidTagError"] = @4994;
	context[@"NSCloudSharingNetworkFailureError"] = @5120;
	context[@"NSCloudSharingQuotaExceededError"] = @5121;
	context[@"NSCloudSharingTooManyParticipantsError"] = @5122;
	context[@"NSCloudSharingConflictError"] = @5123;
	context[@"NSCloudSharingNoPermissionError"] = @5124;
	context[@"NSCloudSharingOtherError"] = @5375;
	context[@"NSCloudSharingErrorMinimum"] = @5120;
	context[@"NSCloudSharingErrorMaximum"] = @5375;

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
