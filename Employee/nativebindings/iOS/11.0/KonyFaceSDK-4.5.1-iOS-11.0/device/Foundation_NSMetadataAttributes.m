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
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSMetadataUbiquitousItemHasUnresolvedConflictsKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemHasUnresolvedConflictsKey"] = NSMetadataUbiquitousItemHasUnresolvedConflictsKey;
	p = (void*) &NSMetadataUbiquitousItemIsUploadedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsUploadedKey"] = NSMetadataUbiquitousItemIsUploadedKey;
	p = (void*) &NSMetadataUbiquitousItemContainerDisplayNameKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemContainerDisplayNameKey"] = NSMetadataUbiquitousItemContainerDisplayNameKey;
	p = (void*) &NSMetadataUbiquitousItemURLInLocalContainerKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemURLInLocalContainerKey"] = NSMetadataUbiquitousItemURLInLocalContainerKey;
	p = (void*) &NSMetadataItemDisplayNameKey;
	if (p != NULL) context[@"NSMetadataItemDisplayNameKey"] = NSMetadataItemDisplayNameKey;
	p = (void*) &NSMetadataItemFSContentChangeDateKey;
	if (p != NULL) context[@"NSMetadataItemFSContentChangeDateKey"] = NSMetadataItemFSContentChangeDateKey;
	p = (void*) &NSMetadataUbiquitousItemDownloadingStatusKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadingStatusKey"] = NSMetadataUbiquitousItemDownloadingStatusKey;
	p = (void*) &NSMetadataUbiquitousItemDownloadingStatusDownloaded;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadingStatusDownloaded"] = NSMetadataUbiquitousItemDownloadingStatusDownloaded;
	p = (void*) &NSMetadataUbiquitousItemDownloadingErrorKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadingErrorKey"] = NSMetadataUbiquitousItemDownloadingErrorKey;
	p = (void*) &NSMetadataItemURLKey;
	if (p != NULL) context[@"NSMetadataItemURLKey"] = NSMetadataItemURLKey;
	p = (void*) &NSMetadataItemIsUbiquitousKey;
	if (p != NULL) context[@"NSMetadataItemIsUbiquitousKey"] = NSMetadataItemIsUbiquitousKey;
	p = (void*) &NSMetadataItemPathKey;
	if (p != NULL) context[@"NSMetadataItemPathKey"] = NSMetadataItemPathKey;
	p = (void*) &NSMetadataUbiquitousItemIsDownloadingKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsDownloadingKey"] = NSMetadataUbiquitousItemIsDownloadingKey;
	p = (void*) &NSMetadataUbiquitousItemIsDownloadedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsDownloadedKey"] = NSMetadataUbiquitousItemIsDownloadedKey;
	p = (void*) &NSMetadataUbiquitousItemDownloadRequestedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadRequestedKey"] = NSMetadataUbiquitousItemDownloadRequestedKey;
	p = (void*) &NSMetadataItemContentTypeKey;
	if (p != NULL) context[@"NSMetadataItemContentTypeKey"] = NSMetadataItemContentTypeKey;
	p = (void*) &NSMetadataUbiquitousSharedItemMostRecentEditorNameComponentsKey;
	if (p != NULL) context[@"NSMetadataUbiquitousSharedItemMostRecentEditorNameComponentsKey"] = NSMetadataUbiquitousSharedItemMostRecentEditorNameComponentsKey;
	p = (void*) &NSMetadataUbiquitousItemDownloadingStatusCurrent;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadingStatusCurrent"] = NSMetadataUbiquitousItemDownloadingStatusCurrent;
	p = (void*) &NSMetadataItemContentTypeTreeKey;
	if (p != NULL) context[@"NSMetadataItemContentTypeTreeKey"] = NSMetadataItemContentTypeTreeKey;
	p = (void*) &NSMetadataUbiquitousSharedItemRoleParticipant;
	if (p != NULL) context[@"NSMetadataUbiquitousSharedItemRoleParticipant"] = NSMetadataUbiquitousSharedItemRoleParticipant;
	p = (void*) &NSMetadataUbiquitousItemPercentDownloadedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemPercentDownloadedKey"] = NSMetadataUbiquitousItemPercentDownloadedKey;
	p = (void*) &NSMetadataItemFSNameKey;
	if (p != NULL) context[@"NSMetadataItemFSNameKey"] = NSMetadataItemFSNameKey;
	p = (void*) &NSMetadataItemFSSizeKey;
	if (p != NULL) context[@"NSMetadataItemFSSizeKey"] = NSMetadataItemFSSizeKey;
	p = (void*) &NSMetadataUbiquitousSharedItemPermissionsReadWrite;
	if (p != NULL) context[@"NSMetadataUbiquitousSharedItemPermissionsReadWrite"] = NSMetadataUbiquitousSharedItemPermissionsReadWrite;
	p = (void*) &NSMetadataUbiquitousSharedItemCurrentUserPermissionsKey;
	if (p != NULL) context[@"NSMetadataUbiquitousSharedItemCurrentUserPermissionsKey"] = NSMetadataUbiquitousSharedItemCurrentUserPermissionsKey;
	p = (void*) &NSMetadataUbiquitousSharedItemRoleOwner;
	if (p != NULL) context[@"NSMetadataUbiquitousSharedItemRoleOwner"] = NSMetadataUbiquitousSharedItemRoleOwner;
	p = (void*) &NSMetadataUbiquitousItemUploadingErrorKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemUploadingErrorKey"] = NSMetadataUbiquitousItemUploadingErrorKey;
	p = (void*) &NSMetadataUbiquitousSharedItemOwnerNameComponentsKey;
	if (p != NULL) context[@"NSMetadataUbiquitousSharedItemOwnerNameComponentsKey"] = NSMetadataUbiquitousSharedItemOwnerNameComponentsKey;
	p = (void*) &NSMetadataUbiquitousSharedItemPermissionsReadOnly;
	if (p != NULL) context[@"NSMetadataUbiquitousSharedItemPermissionsReadOnly"] = NSMetadataUbiquitousSharedItemPermissionsReadOnly;
	p = (void*) &NSMetadataUbiquitousSharedItemCurrentUserRoleKey;
	if (p != NULL) context[@"NSMetadataUbiquitousSharedItemCurrentUserRoleKey"] = NSMetadataUbiquitousSharedItemCurrentUserRoleKey;
	p = (void*) &NSMetadataUbiquitousItemPercentUploadedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemPercentUploadedKey"] = NSMetadataUbiquitousItemPercentUploadedKey;
	p = (void*) &NSMetadataUbiquitousItemIsSharedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsSharedKey"] = NSMetadataUbiquitousItemIsSharedKey;
	p = (void*) &NSMetadataUbiquitousItemIsUploadingKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsUploadingKey"] = NSMetadataUbiquitousItemIsUploadingKey;
	p = (void*) &NSMetadataItemFSCreationDateKey;
	if (p != NULL) context[@"NSMetadataItemFSCreationDateKey"] = NSMetadataItemFSCreationDateKey;
	p = (void*) &NSMetadataUbiquitousItemDownloadingStatusNotDownloaded;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadingStatusNotDownloaded"] = NSMetadataUbiquitousItemDownloadingStatusNotDownloaded;
	p = (void*) &NSMetadataUbiquitousItemIsExternalDocumentKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsExternalDocumentKey"] = NSMetadataUbiquitousItemIsExternalDocumentKey;
}
void load_Foundation_NSMetadataAttributes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
