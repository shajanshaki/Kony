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
	context[@"CFURLCreateCopyAppendingPathComponent"] = ^id(id arg0, id arg1, id arg2, Boolean arg3) {
		return CFURLCreateCopyAppendingPathComponent(arg0, arg1, arg2, arg3);
	};
	context[@"CFURLCopyResourceSpecifier"] = ^id(id arg0) {
		return CFURLCopyResourceSpecifier(arg0);
	};
	context[@"CFURLCopyFileSystemPath"] = ^id(id arg0, CFURLPathStyle arg1) {
		return CFURLCopyFileSystemPath(arg0, arg1);
	};
	context[@"CFURLClearResourcePropertyCacheForKey"] = ^void(id arg0, id arg1) {
		CFURLClearResourcePropertyCacheForKey(arg0, arg1);
	};
	context[@"CFURLCreateWithFileSystemPathRelativeToBase"] = ^id(id arg0, id arg1, CFURLPathStyle arg2, Boolean arg3, id arg4) {
		return CFURLCreateWithFileSystemPathRelativeToBase(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CFURLGetString"] = ^id(id arg0) {
		return CFURLGetString(arg0);
	};
	context[@"CFURLCreateWithFileSystemPath"] = ^id(id arg0, id arg1, CFURLPathStyle arg2, Boolean arg3) {
		return CFURLCreateWithFileSystemPath(arg0, arg1, arg2, arg3);
	};
	context[@"CFURLCanBeDecomposed"] = ^Boolean(id arg0) {
		return CFURLCanBeDecomposed(arg0);
	};
	context[@"CFURLGetTypeID"] = ^CFTypeID() {
		return CFURLGetTypeID();
	};
	context[@"CFURLGetPortNumber"] = ^SInt32(id arg0) {
		return CFURLGetPortNumber(arg0);
	};
	context[@"CFURLIsFileReferenceURL"] = ^Boolean(id arg0) {
		return CFURLIsFileReferenceURL(arg0);
	};
	context[@"CFURLCreateResourcePropertyForKeyFromBookmarkData"] = ^id(id arg0, id arg1, id arg2) {
		return CFURLCreateResourcePropertyForKeyFromBookmarkData(arg0, arg1, arg2);
	};
	context[@"CFURLCopyPassword"] = ^id(id arg0) {
		return CFURLCopyPassword(arg0);
	};
	context[@"CFURLCreateData"] = ^id(id arg0, id arg1, CFStringEncoding arg2, Boolean arg3) {
		return CFURLCreateData(arg0, arg1, arg2, arg3);
	};
	context[@"CFURLCopyQueryString"] = ^id(id arg0, id arg1) {
		return CFURLCopyQueryString(arg0, arg1);
	};
	context[@"CFURLCopyUserName"] = ^id(id arg0) {
		return CFURLCopyUserName(arg0);
	};
	context[@"CFURLGetBaseURL"] = ^id(id arg0) {
		return CFURLGetBaseURL(arg0);
	};
	context[@"CFURLCopyNetLocation"] = ^id(id arg0) {
		return CFURLCopyNetLocation(arg0);
	};
	context[@"CFURLStopAccessingSecurityScopedResource"] = ^void(id arg0) {
		CFURLStopAccessingSecurityScopedResource(arg0);
	};
	context[@"CFURLCreateCopyDeletingLastPathComponent"] = ^id(id arg0, id arg1) {
		return CFURLCreateCopyDeletingLastPathComponent(arg0, arg1);
	};
	context[@"CFURLSetTemporaryResourcePropertyForKey"] = ^void(id arg0, id arg1, id arg2) {
		CFURLSetTemporaryResourcePropertyForKey(arg0, arg1, arg2);
	};
	context[@"CFURLCopyAbsoluteURL"] = ^id(id arg0) {
		return CFURLCopyAbsoluteURL(arg0);
	};
	context[@"CFURLHasDirectoryPath"] = ^Boolean(id arg0) {
		return CFURLHasDirectoryPath(arg0);
	};
	context[@"CFURLCreateCopyAppendingPathExtension"] = ^id(id arg0, id arg1, id arg2) {
		return CFURLCreateCopyAppendingPathExtension(arg0, arg1, arg2);
	};
	context[@"CFURLCopyScheme"] = ^id(id arg0) {
		return CFURLCopyScheme(arg0);
	};
	context[@"CFURLCreateStringByReplacingPercentEscapes"] = ^id(id arg0, id arg1, id arg2) {
		return CFURLCreateStringByReplacingPercentEscapes(arg0, arg1, arg2);
	};
	context[@"CFURLCreateStringByAddingPercentEscapes"] = ^id(id arg0, id arg1, id arg2, id arg3, CFStringEncoding arg4) {
		return CFURLCreateStringByAddingPercentEscapes(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CFURLClearResourcePropertyCache"] = ^void(id arg0) {
		CFURLClearResourcePropertyCache(arg0);
	};
	context[@"CFURLCopyFragment"] = ^id(id arg0, id arg1) {
		return CFURLCopyFragment(arg0, arg1);
	};
	context[@"CFURLStartAccessingSecurityScopedResource"] = ^Boolean(id arg0) {
		return CFURLStartAccessingSecurityScopedResource(arg0);
	};
	context[@"CFURLCreateCopyDeletingPathExtension"] = ^id(id arg0, id arg1) {
		return CFURLCreateCopyDeletingPathExtension(arg0, arg1);
	};
	context[@"CFURLCopyHostName"] = ^id(id arg0) {
		return CFURLCopyHostName(arg0);
	};
	context[@"CFURLCreateStringByReplacingPercentEscapesUsingEncoding"] = ^id(id arg0, id arg1, id arg2, CFStringEncoding arg3) {
		return CFURLCreateStringByReplacingPercentEscapesUsingEncoding(arg0, arg1, arg2, arg3);
	};
	context[@"CFURLCreateWithString"] = ^id(id arg0, id arg1, id arg2) {
		return CFURLCreateWithString(arg0, arg1, arg2);
	};
	context[@"CFURLCopyPathExtension"] = ^id(id arg0) {
		return CFURLCopyPathExtension(arg0);
	};
	context[@"CFURLCopyPath"] = ^id(id arg0) {
		return CFURLCopyPath(arg0);
	};
	context[@"CFURLCopyLastPathComponent"] = ^id(id arg0) {
		return CFURLCopyLastPathComponent(arg0);
	};
	context[@"CFURLCopyParameterString"] = ^id(id arg0, id arg1) {
		return CFURLCopyParameterString(arg0, arg1);
	};
	context[@"CFURLCreateResourcePropertiesForKeysFromBookmarkData"] = ^id(id arg0, id arg1, id arg2) {
		return CFURLCreateResourcePropertiesForKeysFromBookmarkData(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFURLPOSIXPathStyle"] = @0L;
	context[@"kCFURLHFSPathStyle"] = @1L;
	context[@"kCFURLWindowsPathStyle"] = @2L;

	context[@"kCFURLComponentScheme"] = @1L;
	context[@"kCFURLComponentNetLocation"] = @2L;
	context[@"kCFURLComponentPath"] = @3L;
	context[@"kCFURLComponentResourceSpecifier"] = @4L;
	context[@"kCFURLComponentUser"] = @5L;
	context[@"kCFURLComponentPassword"] = @6L;
	context[@"kCFURLComponentUserInfo"] = @7L;
	context[@"kCFURLComponentHost"] = @8L;
	context[@"kCFURLComponentPort"] = @9L;
	context[@"kCFURLComponentParameterString"] = @10L;
	context[@"kCFURLComponentQuery"] = @11L;
	context[@"kCFURLComponentFragment"] = @12L;

	context[@"kCFURLBookmarkCreationMinimalBookmarkMask"] = @512UL;
	context[@"kCFURLBookmarkCreationSuitableForBookmarkFile"] = @1024UL;
	context[@"kCFURLBookmarkCreationPreferFileIDResolutionMask"] = @256UL;

	context[@"kCFURLBookmarkResolutionWithoutUIMask"] = @256UL;
	context[@"kCFURLBookmarkResolutionWithoutMountingMask"] = @512UL;
	context[@"kCFBookmarkResolutionWithoutUIMask"] = @256UL;
	context[@"kCFBookmarkResolutionWithoutMountingMask"] = @512UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFURLVolumeSupportsAccessPermissionsKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsAccessPermissionsKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsAccessPermissionsKey inContext: context];
	p = (void*) &kCFURLFileResourceTypeNamedPipe;
	if (p != NULL) context[@"kCFURLFileResourceTypeNamedPipe"] = [JSValue valueWithObject: (__bridge id) kCFURLFileResourceTypeNamedPipe inContext: context];
	p = (void*) &kCFURLContentAccessDateKey;
	if (p != NULL) context[@"kCFURLContentAccessDateKey"] = [JSValue valueWithObject: (__bridge id) kCFURLContentAccessDateKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsJournalingKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsJournalingKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsJournalingKey inContext: context];
	p = (void*) &kCFURLIsApplicationKey;
	if (p != NULL) context[@"kCFURLIsApplicationKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsApplicationKey inContext: context];
	p = (void*) &kCFURLIsUserImmutableKey;
	if (p != NULL) context[@"kCFURLIsUserImmutableKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsUserImmutableKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemIsUploadingKey;
	if (p != NULL) context[@"kCFURLUbiquitousItemIsUploadingKey"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemIsUploadingKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemPercentUploadedKey;
	if (p != NULL) context[@"kCFURLUbiquitousItemPercentUploadedKey"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemPercentUploadedKey inContext: context];
	p = (void*) &kCFURLGenerationIdentifierKey;
	if (p != NULL) context[@"kCFURLGenerationIdentifierKey"] = [JSValue valueWithObject: (__bridge id) kCFURLGenerationIdentifierKey inContext: context];
	p = (void*) &kCFURLVolumeAvailableCapacityForImportantUsageKey;
	if (p != NULL) context[@"kCFURLVolumeAvailableCapacityForImportantUsageKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeAvailableCapacityForImportantUsageKey inContext: context];
	p = (void*) &kCFURLIsRegularFileKey;
	if (p != NULL) context[@"kCFURLIsRegularFileKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsRegularFileKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsAdvisoryFileLockingKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsAdvisoryFileLockingKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsAdvisoryFileLockingKey inContext: context];
	p = (void*) &kCFURLFileResourceTypeCharacterSpecial;
	if (p != NULL) context[@"kCFURLFileResourceTypeCharacterSpecial"] = [JSValue valueWithObject: (__bridge id) kCFURLFileResourceTypeCharacterSpecial inContext: context];
	p = (void*) &kCFURLIsWritableKey;
	if (p != NULL) context[@"kCFURLIsWritableKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsWritableKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsPersistentIDsKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsPersistentIDsKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsPersistentIDsKey inContext: context];
	p = (void*) &kCFURLFileProtectionCompleteUnlessOpen;
	if (p != NULL) context[@"kCFURLFileProtectionCompleteUnlessOpen"] = [JSValue valueWithObject: (__bridge id) kCFURLFileProtectionCompleteUnlessOpen inContext: context];
	p = (void*) &kCFURLContentModificationDateKey;
	if (p != NULL) context[@"kCFURLContentModificationDateKey"] = [JSValue valueWithObject: (__bridge id) kCFURLContentModificationDateKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsCasePreservedNamesKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsCasePreservedNamesKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsCasePreservedNamesKey inContext: context];
	p = (void*) &kCFURLFileProtectionKey;
	if (p != NULL) context[@"kCFURLFileProtectionKey"] = [JSValue valueWithObject: (__bridge id) kCFURLFileProtectionKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsSymbolicLinksKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsSymbolicLinksKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsSymbolicLinksKey inContext: context];
	p = (void*) &kCFURLLocalizedNameKey;
	if (p != NULL) context[@"kCFURLLocalizedNameKey"] = [JSValue valueWithObject: (__bridge id) kCFURLLocalizedNameKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsSwapRenamingKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsSwapRenamingKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsSwapRenamingKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemDownloadingStatusNotDownloaded;
	if (p != NULL) context[@"kCFURLUbiquitousItemDownloadingStatusNotDownloaded"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemDownloadingStatusNotDownloaded inContext: context];
	p = (void*) &kCFURLFileResourceTypeKey;
	if (p != NULL) context[@"kCFURLFileResourceTypeKey"] = [JSValue valueWithObject: (__bridge id) kCFURLFileResourceTypeKey inContext: context];
	p = (void*) &kCFURLVolumeIsJournalingKey;
	if (p != NULL) context[@"kCFURLVolumeIsJournalingKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIsJournalingKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemDownloadingStatusKey;
	if (p != NULL) context[@"kCFURLUbiquitousItemDownloadingStatusKey"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemDownloadingStatusKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsCompressionKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsCompressionKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsCompressionKey inContext: context];
	p = (void*) &kCFURLVolumeAvailableCapacityForOpportunisticUsageKey;
	if (p != NULL) context[@"kCFURLVolumeAvailableCapacityForOpportunisticUsageKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeAvailableCapacityForOpportunisticUsageKey inContext: context];
	p = (void*) &kCFURLKeysOfUnsetValuesKey;
	if (p != NULL) context[@"kCFURLKeysOfUnsetValuesKey"] = [JSValue valueWithObject: (__bridge id) kCFURLKeysOfUnsetValuesKey inContext: context];
	p = (void*) &kCFURLIsVolumeKey;
	if (p != NULL) context[@"kCFURLIsVolumeKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsVolumeKey inContext: context];
	p = (void*) &kCFURLHasHiddenExtensionKey;
	if (p != NULL) context[@"kCFURLHasHiddenExtensionKey"] = [JSValue valueWithObject: (__bridge id) kCFURLHasHiddenExtensionKey inContext: context];
	p = (void*) &kCFURLIsUbiquitousItemKey;
	if (p != NULL) context[@"kCFURLIsUbiquitousItemKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsUbiquitousItemKey inContext: context];
	p = (void*) &kCFURLCanonicalPathKey;
	if (p != NULL) context[@"kCFURLCanonicalPathKey"] = [JSValue valueWithObject: (__bridge id) kCFURLCanonicalPathKey inContext: context];
	p = (void*) &kCFURLIsHiddenKey;
	if (p != NULL) context[@"kCFURLIsHiddenKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsHiddenKey inContext: context];
	p = (void*) &kCFURLFileProtectionNone;
	if (p != NULL) context[@"kCFURLFileProtectionNone"] = [JSValue valueWithObject: (__bridge id) kCFURLFileProtectionNone inContext: context];
	p = (void*) &kCFURLVolumeResourceCountKey;
	if (p != NULL) context[@"kCFURLVolumeResourceCountKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeResourceCountKey inContext: context];
	p = (void*) &kCFURLCreationDateKey;
	if (p != NULL) context[@"kCFURLCreationDateKey"] = [JSValue valueWithObject: (__bridge id) kCFURLCreationDateKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemHasUnresolvedConflictsKey;
	if (p != NULL) context[@"kCFURLUbiquitousItemHasUnresolvedConflictsKey"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemHasUnresolvedConflictsKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemIsDownloadingKey;
	if (p != NULL) context[@"kCFURLUbiquitousItemIsDownloadingKey"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemIsDownloadingKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsExclusiveRenamingKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsExclusiveRenamingKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsExclusiveRenamingKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemIsUploadedKey;
	if (p != NULL) context[@"kCFURLUbiquitousItemIsUploadedKey"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemIsUploadedKey inContext: context];
	p = (void*) &kCFURLVolumeMaximumFileSizeKey;
	if (p != NULL) context[@"kCFURLVolumeMaximumFileSizeKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeMaximumFileSizeKey inContext: context];
	p = (void*) &kCFURLVolumeIsRemovableKey;
	if (p != NULL) context[@"kCFURLVolumeIsRemovableKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIsRemovableKey inContext: context];
	p = (void*) &kCFURLVolumeLocalizedFormatDescriptionKey;
	if (p != NULL) context[@"kCFURLVolumeLocalizedFormatDescriptionKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeLocalizedFormatDescriptionKey inContext: context];
	p = (void*) &kCFURLVolumeIsEncryptedKey;
	if (p != NULL) context[@"kCFURLVolumeIsEncryptedKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIsEncryptedKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsZeroRunsKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsZeroRunsKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsZeroRunsKey inContext: context];
	p = (void*) &kCFURLPreferredIOBlockSizeKey;
	if (p != NULL) context[@"kCFURLPreferredIOBlockSizeKey"] = [JSValue valueWithObject: (__bridge id) kCFURLPreferredIOBlockSizeKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemIsDownloadedKey;
	if (p != NULL) context[@"kCFURLUbiquitousItemIsDownloadedKey"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemIsDownloadedKey inContext: context];
	p = (void*) &kCFURLParentDirectoryURLKey;
	if (p != NULL) context[@"kCFURLParentDirectoryURLKey"] = [JSValue valueWithObject: (__bridge id) kCFURLParentDirectoryURLKey inContext: context];
	p = (void*) &kCFURLAddedToDirectoryDateKey;
	if (p != NULL) context[@"kCFURLAddedToDirectoryDateKey"] = [JSValue valueWithObject: (__bridge id) kCFURLAddedToDirectoryDateKey inContext: context];
	p = (void*) &kCFURLFileAllocatedSizeKey;
	if (p != NULL) context[@"kCFURLFileAllocatedSizeKey"] = [JSValue valueWithObject: (__bridge id) kCFURLFileAllocatedSizeKey inContext: context];
	p = (void*) &kCFURLDocumentIdentifierKey;
	if (p != NULL) context[@"kCFURLDocumentIdentifierKey"] = [JSValue valueWithObject: (__bridge id) kCFURLDocumentIdentifierKey inContext: context];
	p = (void*) &kCFURLVolumeURLForRemountingKey;
	if (p != NULL) context[@"kCFURLVolumeURLForRemountingKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeURLForRemountingKey inContext: context];
	p = (void*) &kCFURLFileProtectionCompleteUntilFirstUserAuthentication;
	if (p != NULL) context[@"kCFURLFileProtectionCompleteUntilFirstUserAuthentication"] = [JSValue valueWithObject: (__bridge id) kCFURLFileProtectionCompleteUntilFirstUserAuthentication inContext: context];
	p = (void*) &kCFURLUbiquitousItemDownloadingStatusCurrent;
	if (p != NULL) context[@"kCFURLUbiquitousItemDownloadingStatusCurrent"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemDownloadingStatusCurrent inContext: context];
	p = (void*) &kCFURLVolumeSupportsFileCloningKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsFileCloningKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsFileCloningKey inContext: context];
	p = (void*) &kCFURLLabelNumberKey;
	if (p != NULL) context[@"kCFURLLabelNumberKey"] = [JSValue valueWithObject: (__bridge id) kCFURLLabelNumberKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemDownloadingErrorKey;
	if (p != NULL) context[@"kCFURLUbiquitousItemDownloadingErrorKey"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemDownloadingErrorKey inContext: context];
	p = (void*) &kCFURLFileResourceIdentifierKey;
	if (p != NULL) context[@"kCFURLFileResourceIdentifierKey"] = [JSValue valueWithObject: (__bridge id) kCFURLFileResourceIdentifierKey inContext: context];
	p = (void*) &kCFURLVolumeIsInternalKey;
	if (p != NULL) context[@"kCFURLVolumeIsInternalKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIsInternalKey inContext: context];
	p = (void*) &kCFURLPathKey;
	if (p != NULL) context[@"kCFURLPathKey"] = [JSValue valueWithObject: (__bridge id) kCFURLPathKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemUploadingErrorKey;
	if (p != NULL) context[@"kCFURLUbiquitousItemUploadingErrorKey"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemUploadingErrorKey inContext: context];
	p = (void*) &kCFURLIsDirectoryKey;
	if (p != NULL) context[@"kCFURLIsDirectoryKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsDirectoryKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsVolumeSizesKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsVolumeSizesKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsVolumeSizesKey inContext: context];
	p = (void*) &kCFURLFileResourceTypeDirectory;
	if (p != NULL) context[@"kCFURLFileResourceTypeDirectory"] = [JSValue valueWithObject: (__bridge id) kCFURLFileResourceTypeDirectory inContext: context];
	p = (void*) &kCFURLFileResourceTypeSocket;
	if (p != NULL) context[@"kCFURLFileResourceTypeSocket"] = [JSValue valueWithObject: (__bridge id) kCFURLFileResourceTypeSocket inContext: context];
	p = (void*) &kCFURLIsMountTriggerKey;
	if (p != NULL) context[@"kCFURLIsMountTriggerKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsMountTriggerKey inContext: context];
	p = (void*) &kCFURLIsAliasFileKey;
	if (p != NULL) context[@"kCFURLIsAliasFileKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsAliasFileKey inContext: context];
	p = (void*) &kCFURLVolumeTotalCapacityKey;
	if (p != NULL) context[@"kCFURLVolumeTotalCapacityKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeTotalCapacityKey inContext: context];
	p = (void*) &kCFURLVolumeURLKey;
	if (p != NULL) context[@"kCFURLVolumeURLKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeURLKey inContext: context];
	p = (void*) &kCFURLAttributeModificationDateKey;
	if (p != NULL) context[@"kCFURLAttributeModificationDateKey"] = [JSValue valueWithObject: (__bridge id) kCFURLAttributeModificationDateKey inContext: context];
	p = (void*) &kCFURLVolumeUUIDStringKey;
	if (p != NULL) context[@"kCFURLVolumeUUIDStringKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeUUIDStringKey inContext: context];
	p = (void*) &kCFURLLinkCountKey;
	if (p != NULL) context[@"kCFURLLinkCountKey"] = [JSValue valueWithObject: (__bridge id) kCFURLLinkCountKey inContext: context];
	p = (void*) &kCFURLVolumeNameKey;
	if (p != NULL) context[@"kCFURLVolumeNameKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeNameKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsExtendedSecurityKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsExtendedSecurityKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsExtendedSecurityKey inContext: context];
	p = (void*) &kCFURLVolumeLocalizedNameKey;
	if (p != NULL) context[@"kCFURLVolumeLocalizedNameKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeLocalizedNameKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsRootDirectoryDatesKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsRootDirectoryDatesKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsRootDirectoryDatesKey inContext: context];
	p = (void*) &kCFURLFileSizeKey;
	if (p != NULL) context[@"kCFURLFileSizeKey"] = [JSValue valueWithObject: (__bridge id) kCFURLFileSizeKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsImmutableFilesKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsImmutableFilesKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsImmutableFilesKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsSparseFilesKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsSparseFilesKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsSparseFilesKey inContext: context];
	p = (void*) &kCFURLIsPackageKey;
	if (p != NULL) context[@"kCFURLIsPackageKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsPackageKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsHardLinksKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsHardLinksKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsHardLinksKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsCaseSensitiveNamesKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsCaseSensitiveNamesKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsCaseSensitiveNamesKey inContext: context];
	p = (void*) &kCFURLFileSecurityKey;
	if (p != NULL) context[@"kCFURLFileSecurityKey"] = [JSValue valueWithObject: (__bridge id) kCFURLFileSecurityKey inContext: context];
	p = (void*) &kCFURLIsReadableKey;
	if (p != NULL) context[@"kCFURLIsReadableKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsReadableKey inContext: context];
	p = (void*) &kCFURLFileResourceTypeSymbolicLink;
	if (p != NULL) context[@"kCFURLFileResourceTypeSymbolicLink"] = [JSValue valueWithObject: (__bridge id) kCFURLFileResourceTypeSymbolicLink inContext: context];
	p = (void*) &kCFURLIsExecutableKey;
	if (p != NULL) context[@"kCFURLIsExecutableKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsExecutableKey inContext: context];
	p = (void*) &kCFURLTypeIdentifierKey;
	if (p != NULL) context[@"kCFURLTypeIdentifierKey"] = [JSValue valueWithObject: (__bridge id) kCFURLTypeIdentifierKey inContext: context];
	p = (void*) &kCFURLFileResourceTypeRegular;
	if (p != NULL) context[@"kCFURLFileResourceTypeRegular"] = [JSValue valueWithObject: (__bridge id) kCFURLFileResourceTypeRegular inContext: context];
	p = (void*) &kCFURLIsExcludedFromBackupKey;
	if (p != NULL) context[@"kCFURLIsExcludedFromBackupKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsExcludedFromBackupKey inContext: context];
	p = (void*) &kCFURLIsSymbolicLinkKey;
	if (p != NULL) context[@"kCFURLIsSymbolicLinkKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsSymbolicLinkKey inContext: context];
	p = (void*) &kCFURLVolumeIdentifierKey;
	if (p != NULL) context[@"kCFURLVolumeIdentifierKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIdentifierKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemPercentDownloadedKey;
	if (p != NULL) context[@"kCFURLUbiquitousItemPercentDownloadedKey"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemPercentDownloadedKey inContext: context];
	p = (void*) &kCFURLTotalFileAllocatedSizeKey;
	if (p != NULL) context[@"kCFURLTotalFileAllocatedSizeKey"] = [JSValue valueWithObject: (__bridge id) kCFURLTotalFileAllocatedSizeKey inContext: context];
	p = (void*) &kCFURLTotalFileSizeKey;
	if (p != NULL) context[@"kCFURLTotalFileSizeKey"] = [JSValue valueWithObject: (__bridge id) kCFURLTotalFileSizeKey inContext: context];
	p = (void*) &kCFURLVolumeAvailableCapacityKey;
	if (p != NULL) context[@"kCFURLVolumeAvailableCapacityKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeAvailableCapacityKey inContext: context];
	p = (void*) &kCFURLVolumeCreationDateKey;
	if (p != NULL) context[@"kCFURLVolumeCreationDateKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeCreationDateKey inContext: context];
	p = (void*) &kCFURLVolumeIsAutomountedKey;
	if (p != NULL) context[@"kCFURLVolumeIsAutomountedKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIsAutomountedKey inContext: context];
	p = (void*) &kCFURLIsSystemImmutableKey;
	if (p != NULL) context[@"kCFURLIsSystemImmutableKey"] = [JSValue valueWithObject: (__bridge id) kCFURLIsSystemImmutableKey inContext: context];
	p = (void*) &kCFURLVolumeSupportsRenamingKey;
	if (p != NULL) context[@"kCFURLVolumeSupportsRenamingKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeSupportsRenamingKey inContext: context];
	p = (void*) &kCFURLVolumeIsRootFileSystemKey;
	if (p != NULL) context[@"kCFURLVolumeIsRootFileSystemKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIsRootFileSystemKey inContext: context];
	p = (void*) &kCFURLEffectiveIconKey;
	if (p != NULL) context[@"kCFURLEffectiveIconKey"] = [JSValue valueWithObject: (__bridge id) kCFURLEffectiveIconKey inContext: context];
	p = (void*) &kCFURLNameKey;
	if (p != NULL) context[@"kCFURLNameKey"] = [JSValue valueWithObject: (__bridge id) kCFURLNameKey inContext: context];
	p = (void*) &kCFURLFileResourceTypeBlockSpecial;
	if (p != NULL) context[@"kCFURLFileResourceTypeBlockSpecial"] = [JSValue valueWithObject: (__bridge id) kCFURLFileResourceTypeBlockSpecial inContext: context];
	p = (void*) &kCFURLVolumeIsReadOnlyKey;
	if (p != NULL) context[@"kCFURLVolumeIsReadOnlyKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIsReadOnlyKey inContext: context];
	p = (void*) &kCFURLUbiquitousItemDownloadingStatusDownloaded;
	if (p != NULL) context[@"kCFURLUbiquitousItemDownloadingStatusDownloaded"] = [JSValue valueWithObject: (__bridge id) kCFURLUbiquitousItemDownloadingStatusDownloaded inContext: context];
	p = (void*) &kCFURLVolumeIsLocalKey;
	if (p != NULL) context[@"kCFURLVolumeIsLocalKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIsLocalKey inContext: context];
	p = (void*) &kCFURLFileResourceTypeUnknown;
	if (p != NULL) context[@"kCFURLFileResourceTypeUnknown"] = [JSValue valueWithObject: (__bridge id) kCFURLFileResourceTypeUnknown inContext: context];
	p = (void*) &kCFURLCustomIconKey;
	if (p != NULL) context[@"kCFURLCustomIconKey"] = [JSValue valueWithObject: (__bridge id) kCFURLCustomIconKey inContext: context];
	p = (void*) &kCFURLVolumeIsEjectableKey;
	if (p != NULL) context[@"kCFURLVolumeIsEjectableKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIsEjectableKey inContext: context];
	p = (void*) &kCFURLLocalizedTypeDescriptionKey;
	if (p != NULL) context[@"kCFURLLocalizedTypeDescriptionKey"] = [JSValue valueWithObject: (__bridge id) kCFURLLocalizedTypeDescriptionKey inContext: context];
	p = (void*) &kCFURLLabelColorKey;
	if (p != NULL) context[@"kCFURLLabelColorKey"] = [JSValue valueWithObject: (__bridge id) kCFURLLabelColorKey inContext: context];
	p = (void*) &kCFURLVolumeIsBrowsableKey;
	if (p != NULL) context[@"kCFURLVolumeIsBrowsableKey"] = [JSValue valueWithObject: (__bridge id) kCFURLVolumeIsBrowsableKey inContext: context];
	p = (void*) &kCFURLFileProtectionComplete;
	if (p != NULL) context[@"kCFURLFileProtectionComplete"] = [JSValue valueWithObject: (__bridge id) kCFURLFileProtectionComplete inContext: context];
	p = (void*) &kCFURLLocalizedLabelKey;
	if (p != NULL) context[@"kCFURLLocalizedLabelKey"] = [JSValue valueWithObject: (__bridge id) kCFURLLocalizedLabelKey inContext: context];
}
void load_CoreFoundation_CFURL_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
