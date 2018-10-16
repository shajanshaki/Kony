#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURL (NSURLNSPromisedItemsCategoryExports)
-(BOOL) jscheckPromisedItemIsReachableAndReturnError: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self checkPromisedItemIsReachableAndReturnError: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(NSDictionary *) jspromisedItemResourceValuesForKeys: (NSArray *) keys error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSDictionary * resultVal__;
	resultVal__ = [self promisedItemResourceValuesForKeys: keys error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
@implementation NSURLQueryItem (Exports)
-(id) jsinitWithName: (NSString *) name value: (NSString *) value 
{
	id resultVal__;
	resultVal__ = [[self initWithName: name value: value ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSURL (NSURLNSItemProviderCategoryExports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(NSProgress *) jsloadDataWithTypeIdentifier: (NSString *) typeIdentifier forItemProviderCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSData * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSProgress * resultVal__;
	resultVal__ = [self loadDataWithTypeIdentifier: typeIdentifier forItemProviderCompletionHandler: completionHandler_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
+(id) jsobjectWithItemProviderData: (NSData *) data typeIdentifier: (NSString *) typeIdentifier error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self objectWithItemProviderData: data typeIdentifier: typeIdentifier error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation NSURL (Exports)
-(id) jsinitFileURLWithPath: (NSString *) path isDirectory: (BOOL) isDir 
{
	id resultVal__;
	resultVal__ = [[self initFileURLWithPath: path isDirectory: isDir ] autorelease];
	return resultVal__;
}
-(id) jsinitFileURLWithPath: (NSString *) path isDirectory: (BOOL) isDir relativeToURL: (NSURL *) baseURL 
{
	id resultVal__;
	resultVal__ = [[self initFileURLWithPath: path isDirectory: isDir relativeToURL: baseURL ] autorelease];
	return resultVal__;
}
-(id) jsinitFileURLWithPath: (NSString *) path 
{
	id resultVal__;
	resultVal__ = [[self initFileURLWithPath: path ] autorelease];
	return resultVal__;
}
-(BOOL) jscheckResourceIsReachableAndReturnError: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self checkResourceIsReachableAndReturnError: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(id) jsinitFileURLWithPath: (NSString *) path relativeToURL: (NSURL *) baseURL 
{
	id resultVal__;
	resultVal__ = [[self initFileURLWithPath: path relativeToURL: baseURL ] autorelease];
	return resultVal__;
}
-(id) jsinitAbsoluteURLWithDataRepresentation: (NSData *) data relativeToURL: (NSURL *) baseURL 
{
	id resultVal__;
	resultVal__ = [[self initAbsoluteURLWithDataRepresentation: data relativeToURL: baseURL ] autorelease];
	return resultVal__;
}
-(id) jsinitWithScheme: (NSString *) scheme host: (NSString *) host path: (NSString *) path 
{
	id resultVal__;
	resultVal__ = [[self initWithScheme: scheme host: host path: path ] autorelease];
	return resultVal__;
}
-(BOOL) jssetResourceValues: (NSDictionary *) keyedValues error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setResourceValues: keyedValues error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(NSDictionary *) jsresourceValuesForKeys: (NSArray *) keys error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSDictionary * resultVal__;
	resultVal__ = [self resourceValuesForKeys: keys error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(NSData *) jsbookmarkDataWithOptions: (NSURLBookmarkCreationOptions) options includingResourceValuesForKeys: (NSArray *) keys relativeToURL: (NSURL *) relativeURL error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSData * resultVal__;
	resultVal__ = [self bookmarkDataWithOptions: options includingResourceValuesForKeys: keys relativeToURL: relativeURL error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithString: (NSString *) URLString relativeToURL: (NSURL *) baseURL 
{
	id resultVal__;
	resultVal__ = [[self initWithString: URLString relativeToURL: baseURL ] autorelease];
	return resultVal__;
}
-(id) jsinitWithString: (NSString *) URLString 
{
	id resultVal__;
	resultVal__ = [[self initWithString: URLString ] autorelease];
	return resultVal__;
}
-(BOOL) jssetResourceValue: (id) value forKey: (NSURLResourceKey) key error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setResourceValue: value forKey: key error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithDataRepresentation: (NSData *) data relativeToURL: (NSURL *) baseURL 
{
	id resultVal__;
	resultVal__ = [[self initWithDataRepresentation: data relativeToURL: baseURL ] autorelease];
	return resultVal__;
}
+(NSData *) jsbookmarkDataWithContentsOfURL: (NSURL *) bookmarkFileURL error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSData * resultVal__;
	resultVal__ = [self bookmarkDataWithContentsOfURL: bookmarkFileURL error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(id) jsURLByResolvingAliasFileAtURL: (NSURL *) url options: (NSURLBookmarkResolutionOptions) options error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self URLByResolvingAliasFileAtURL: url options: options error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(BOOL) jswriteBookmarkData: (NSData *) bookmarkData toURL: (NSURL *) bookmarkFileURL options: (NSURLBookmarkFileCreationOptions) options error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self writeBookmarkData: bookmarkData toURL: bookmarkFileURL options: options error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
@implementation NSFileSecurity (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSURLComponents (Exports)
-(id) jsinitWithString: (NSString *) URLString 
{
	id resultVal__;
	resultVal__ = [[self initWithString: URLString ] autorelease];
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithURL: (NSURL *) url resolvingAgainstBaseURL: (BOOL) resolve 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: url resolvingAgainstBaseURL: resolve ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSURL class], @protocol(NSURLNSURLPathUtilitiesCategoryInstanceExports));
	class_addProtocol([NSURL class], @protocol(NSURLNSURLPathUtilitiesCategoryClassExports));
	class_addProtocol([NSCharacterSet class], @protocol(NSCharacterSetNSURLUtilitiesCategoryInstanceExports));
	class_addProtocol([NSCharacterSet class], @protocol(NSCharacterSetNSURLUtilitiesCategoryClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSURLUtilitiesCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSURLUtilitiesCategoryClassExports));
	class_addProtocol([NSURL class], @protocol(NSURLNSPromisedItemsCategoryInstanceExports));
	class_addProtocol([NSURL class], @protocol(NSURLNSPromisedItemsCategoryClassExports));
	class_addProtocol([NSURLQueryItem class], @protocol(NSURLQueryItemInstanceExports));
	class_addProtocol([NSURLQueryItem class], @protocol(NSURLQueryItemClassExports));
	class_addProtocol([NSURL class], @protocol(NSURLNSItemProviderCategoryInstanceExports));
	class_addProtocol([NSURL class], @protocol(NSURLNSItemProviderCategoryClassExports));
	class_addProtocol([NSURL class], @protocol(NSURLInstanceExports));
	class_addProtocol([NSURL class], @protocol(NSURLClassExports));
	class_addProtocol([NSFileSecurity class], @protocol(NSFileSecurityInstanceExports));
	class_addProtocol([NSFileSecurity class], @protocol(NSFileSecurityClassExports));
	class_addProtocol([NSURLComponents class], @protocol(NSURLComponentsInstanceExports));
	class_addProtocol([NSURLComponents class], @protocol(NSURLComponentsClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSURLBookmarkCreationPreferFileIDResolution"] = @256U;
	context[@"NSURLBookmarkCreationMinimalBookmark"] = @512U;
	context[@"NSURLBookmarkCreationSuitableForBookmarkFile"] = @1024U;

	context[@"NSURLBookmarkResolutionWithoutUI"] = @256U;
	context[@"NSURLBookmarkResolutionWithoutMounting"] = @512U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSURLFileAllocatedSizeKey;
	if (p != NULL) context[@"NSURLFileAllocatedSizeKey"] = NSURLFileAllocatedSizeKey;
	p = (void*) &NSURLVolumeSupportsSparseFilesKey;
	if (p != NULL) context[@"NSURLVolumeSupportsSparseFilesKey"] = NSURLVolumeSupportsSparseFilesKey;
	p = (void*) &NSURLContentModificationDateKey;
	if (p != NULL) context[@"NSURLContentModificationDateKey"] = NSURLContentModificationDateKey;
	p = (void*) &NSURLVolumeIsInternalKey;
	if (p != NULL) context[@"NSURLVolumeIsInternalKey"] = NSURLVolumeIsInternalKey;
	p = (void*) &NSURLVolumeAvailableCapacityKey;
	if (p != NULL) context[@"NSURLVolumeAvailableCapacityKey"] = NSURLVolumeAvailableCapacityKey;
	p = (void*) &NSURLIsAliasFileKey;
	if (p != NULL) context[@"NSURLIsAliasFileKey"] = NSURLIsAliasFileKey;
	p = (void*) &NSURLVolumeTotalCapacityKey;
	if (p != NULL) context[@"NSURLVolumeTotalCapacityKey"] = NSURLVolumeTotalCapacityKey;
	p = (void*) &NSURLFileResourceTypeRegular;
	if (p != NULL) context[@"NSURLFileResourceTypeRegular"] = NSURLFileResourceTypeRegular;
	p = (void*) &NSURLUbiquitousItemDownloadingStatusDownloaded;
	if (p != NULL) context[@"NSURLUbiquitousItemDownloadingStatusDownloaded"] = NSURLUbiquitousItemDownloadingStatusDownloaded;
	p = (void*) &NSURLVolumeIsEjectableKey;
	if (p != NULL) context[@"NSURLVolumeIsEjectableKey"] = NSURLVolumeIsEjectableKey;
	p = (void*) &NSURLUbiquitousSharedItemOwnerNameComponentsKey;
	if (p != NULL) context[@"NSURLUbiquitousSharedItemOwnerNameComponentsKey"] = NSURLUbiquitousSharedItemOwnerNameComponentsKey;
	p = (void*) &NSURLVolumeSupportsExtendedSecurityKey;
	if (p != NULL) context[@"NSURLVolumeSupportsExtendedSecurityKey"] = NSURLVolumeSupportsExtendedSecurityKey;
	p = (void*) &NSURLTotalFileSizeKey;
	if (p != NULL) context[@"NSURLTotalFileSizeKey"] = NSURLTotalFileSizeKey;
	p = (void*) &NSURLUbiquitousItemUploadingErrorKey;
	if (p != NULL) context[@"NSURLUbiquitousItemUploadingErrorKey"] = NSURLUbiquitousItemUploadingErrorKey;
	p = (void*) &NSURLUbiquitousItemContainerDisplayNameKey;
	if (p != NULL) context[@"NSURLUbiquitousItemContainerDisplayNameKey"] = NSURLUbiquitousItemContainerDisplayNameKey;
	p = (void*) &NSURLAttributeModificationDateKey;
	if (p != NULL) context[@"NSURLAttributeModificationDateKey"] = NSURLAttributeModificationDateKey;
	p = (void*) &NSURLUbiquitousItemDownloadingStatusCurrent;
	if (p != NULL) context[@"NSURLUbiquitousItemDownloadingStatusCurrent"] = NSURLUbiquitousItemDownloadingStatusCurrent;
	p = (void*) &NSURLUbiquitousItemDownloadingStatusKey;
	if (p != NULL) context[@"NSURLUbiquitousItemDownloadingStatusKey"] = NSURLUbiquitousItemDownloadingStatusKey;
	p = (void*) &NSURLUbiquitousItemIsUploadingKey;
	if (p != NULL) context[@"NSURLUbiquitousItemIsUploadingKey"] = NSURLUbiquitousItemIsUploadingKey;
	p = (void*) &NSURLVolumeSupportsVolumeSizesKey;
	if (p != NULL) context[@"NSURLVolumeSupportsVolumeSizesKey"] = NSURLVolumeSupportsVolumeSizesKey;
	p = (void*) &NSURLUbiquitousItemIsUploadedKey;
	if (p != NULL) context[@"NSURLUbiquitousItemIsUploadedKey"] = NSURLUbiquitousItemIsUploadedKey;
	p = (void*) &NSURLLocalizedTypeDescriptionKey;
	if (p != NULL) context[@"NSURLLocalizedTypeDescriptionKey"] = NSURLLocalizedTypeDescriptionKey;
	p = (void*) &NSURLVolumeIsRemovableKey;
	if (p != NULL) context[@"NSURLVolumeIsRemovableKey"] = NSURLVolumeIsRemovableKey;
	p = (void*) &NSURLLocalizedNameKey;
	if (p != NULL) context[@"NSURLLocalizedNameKey"] = NSURLLocalizedNameKey;
	p = (void*) &NSURLIsExecutableKey;
	if (p != NULL) context[@"NSURLIsExecutableKey"] = NSURLIsExecutableKey;
	p = (void*) &NSURLVolumeSupportsJournalingKey;
	if (p != NULL) context[@"NSURLVolumeSupportsJournalingKey"] = NSURLVolumeSupportsJournalingKey;
	p = (void*) &NSURLTotalFileAllocatedSizeKey;
	if (p != NULL) context[@"NSURLTotalFileAllocatedSizeKey"] = NSURLTotalFileAllocatedSizeKey;
	p = (void*) &NSURLUbiquitousItemDownloadingStatusNotDownloaded;
	if (p != NULL) context[@"NSURLUbiquitousItemDownloadingStatusNotDownloaded"] = NSURLUbiquitousItemDownloadingStatusNotDownloaded;
	p = (void*) &NSURLUbiquitousSharedItemMostRecentEditorNameComponentsKey;
	if (p != NULL) context[@"NSURLUbiquitousSharedItemMostRecentEditorNameComponentsKey"] = NSURLUbiquitousSharedItemMostRecentEditorNameComponentsKey;
	p = (void*) &NSURLIsPackageKey;
	if (p != NULL) context[@"NSURLIsPackageKey"] = NSURLIsPackageKey;
	p = (void*) &NSURLHasHiddenExtensionKey;
	if (p != NULL) context[@"NSURLHasHiddenExtensionKey"] = NSURLHasHiddenExtensionKey;
	p = (void*) &NSURLVolumeSupportsCompressionKey;
	if (p != NULL) context[@"NSURLVolumeSupportsCompressionKey"] = NSURLVolumeSupportsCompressionKey;
	p = (void*) &NSURLVolumeSupportsCasePreservedNamesKey;
	if (p != NULL) context[@"NSURLVolumeSupportsCasePreservedNamesKey"] = NSURLVolumeSupportsCasePreservedNamesKey;
	p = (void*) &NSURLUbiquitousItemIsSharedKey;
	if (p != NULL) context[@"NSURLUbiquitousItemIsSharedKey"] = NSURLUbiquitousItemIsSharedKey;
	p = (void*) &NSURLLabelNumberKey;
	if (p != NULL) context[@"NSURLLabelNumberKey"] = NSURLLabelNumberKey;
	p = (void*) &NSURLVolumeSupportsAccessPermissionsKey;
	if (p != NULL) context[@"NSURLVolumeSupportsAccessPermissionsKey"] = NSURLVolumeSupportsAccessPermissionsKey;
	p = (void*) &NSURLVolumeAvailableCapacityForImportantUsageKey;
	if (p != NULL) context[@"NSURLVolumeAvailableCapacityForImportantUsageKey"] = NSURLVolumeAvailableCapacityForImportantUsageKey;
	p = (void*) &NSURLUbiquitousSharedItemRoleParticipant;
	if (p != NULL) context[@"NSURLUbiquitousSharedItemRoleParticipant"] = NSURLUbiquitousSharedItemRoleParticipant;
	p = (void*) &NSURLVolumeSupportsFileCloningKey;
	if (p != NULL) context[@"NSURLVolumeSupportsFileCloningKey"] = NSURLVolumeSupportsFileCloningKey;
	p = (void*) &NSURLDocumentIdentifierKey;
	if (p != NULL) context[@"NSURLDocumentIdentifierKey"] = NSURLDocumentIdentifierKey;
	p = (void*) &NSURLVolumeURLForRemountingKey;
	if (p != NULL) context[@"NSURLVolumeURLForRemountingKey"] = NSURLVolumeURLForRemountingKey;
	p = (void*) &NSURLVolumeIsAutomountedKey;
	if (p != NULL) context[@"NSURLVolumeIsAutomountedKey"] = NSURLVolumeIsAutomountedKey;
	p = (void*) &NSURLVolumeNameKey;
	if (p != NULL) context[@"NSURLVolumeNameKey"] = NSURLVolumeNameKey;
	p = (void*) &NSURLLocalizedLabelKey;
	if (p != NULL) context[@"NSURLLocalizedLabelKey"] = NSURLLocalizedLabelKey;
	p = (void*) &NSURLIsUserImmutableKey;
	if (p != NULL) context[@"NSURLIsUserImmutableKey"] = NSURLIsUserImmutableKey;
	p = (void*) &NSURLVolumeResourceCountKey;
	if (p != NULL) context[@"NSURLVolumeResourceCountKey"] = NSURLVolumeResourceCountKey;
	p = (void*) &NSURLFileSecurityKey;
	if (p != NULL) context[@"NSURLFileSecurityKey"] = NSURLFileSecurityKey;
	p = (void*) &NSURLVolumeSupportsRenamingKey;
	if (p != NULL) context[@"NSURLVolumeSupportsRenamingKey"] = NSURLVolumeSupportsRenamingKey;
	p = (void*) &NSURLUbiquitousItemIsDownloadedKey;
	if (p != NULL) context[@"NSURLUbiquitousItemIsDownloadedKey"] = NSURLUbiquitousItemIsDownloadedKey;
	p = (void*) &NSURLVolumeSupportsRootDirectoryDatesKey;
	if (p != NULL) context[@"NSURLVolumeSupportsRootDirectoryDatesKey"] = NSURLVolumeSupportsRootDirectoryDatesKey;
	p = (void*) &NSURLLinkCountKey;
	if (p != NULL) context[@"NSURLLinkCountKey"] = NSURLLinkCountKey;
	p = (void*) &NSURLFileProtectionComplete;
	if (p != NULL) context[@"NSURLFileProtectionComplete"] = NSURLFileProtectionComplete;
	p = (void*) &NSURLUbiquitousSharedItemCurrentUserRoleKey;
	if (p != NULL) context[@"NSURLUbiquitousSharedItemCurrentUserRoleKey"] = NSURLUbiquitousSharedItemCurrentUserRoleKey;
	p = (void*) &NSURLContentAccessDateKey;
	if (p != NULL) context[@"NSURLContentAccessDateKey"] = NSURLContentAccessDateKey;
	p = (void*) &NSURLVolumeIsReadOnlyKey;
	if (p != NULL) context[@"NSURLVolumeIsReadOnlyKey"] = NSURLVolumeIsReadOnlyKey;
	p = (void*) &NSURLVolumeLocalizedNameKey;
	if (p != NULL) context[@"NSURLVolumeLocalizedNameKey"] = NSURLVolumeLocalizedNameKey;
	p = (void*) &NSURLUbiquitousItemIsDownloadingKey;
	if (p != NULL) context[@"NSURLUbiquitousItemIsDownloadingKey"] = NSURLUbiquitousItemIsDownloadingKey;
	p = (void*) &NSURLFileProtectionKey;
	if (p != NULL) context[@"NSURLFileProtectionKey"] = NSURLFileProtectionKey;
	p = (void*) &NSURLVolumeURLKey;
	if (p != NULL) context[@"NSURLVolumeURLKey"] = NSURLVolumeURLKey;
	p = (void*) &NSURLUbiquitousSharedItemPermissionsReadWrite;
	if (p != NULL) context[@"NSURLUbiquitousSharedItemPermissionsReadWrite"] = NSURLUbiquitousSharedItemPermissionsReadWrite;
	p = (void*) &NSURLIsApplicationKey;
	if (p != NULL) context[@"NSURLIsApplicationKey"] = NSURLIsApplicationKey;
	p = (void*) &NSURLFileResourceTypeBlockSpecial;
	if (p != NULL) context[@"NSURLFileResourceTypeBlockSpecial"] = NSURLFileResourceTypeBlockSpecial;
	p = (void*) &NSURLFileResourceTypeKey;
	if (p != NULL) context[@"NSURLFileResourceTypeKey"] = NSURLFileResourceTypeKey;
	p = (void*) &NSURLVolumeSupportsZeroRunsKey;
	if (p != NULL) context[@"NSURLVolumeSupportsZeroRunsKey"] = NSURLVolumeSupportsZeroRunsKey;
	p = (void*) &NSURLVolumeSupportsPersistentIDsKey;
	if (p != NULL) context[@"NSURLVolumeSupportsPersistentIDsKey"] = NSURLVolumeSupportsPersistentIDsKey;
	p = (void*) &NSThumbnail1024x1024SizeKey;
	if (p != NULL) context[@"NSThumbnail1024x1024SizeKey"] = NSThumbnail1024x1024SizeKey;
	p = (void*) &NSURLVolumeIsLocalKey;
	if (p != NULL) context[@"NSURLVolumeIsLocalKey"] = NSURLVolumeIsLocalKey;
	p = (void*) &NSURLIsUbiquitousItemKey;
	if (p != NULL) context[@"NSURLIsUbiquitousItemKey"] = NSURLIsUbiquitousItemKey;
	p = (void*) &NSURLFileSizeKey;
	if (p != NULL) context[@"NSURLFileSizeKey"] = NSURLFileSizeKey;
	p = (void*) &NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
	if (p != NULL) context[@"NSURLVolumeAvailableCapacityForOpportunisticUsageKey"] = NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
	p = (void*) &NSURLNameKey;
	if (p != NULL) context[@"NSURLNameKey"] = NSURLNameKey;
	p = (void*) &NSURLTypeIdentifierKey;
	if (p != NULL) context[@"NSURLTypeIdentifierKey"] = NSURLTypeIdentifierKey;
	p = (void*) &NSURLCanonicalPathKey;
	if (p != NULL) context[@"NSURLCanonicalPathKey"] = NSURLCanonicalPathKey;
	p = (void*) &NSURLIsWritableKey;
	if (p != NULL) context[@"NSURLIsWritableKey"] = NSURLIsWritableKey;
	p = (void*) &NSURLFileResourceTypeNamedPipe;
	if (p != NULL) context[@"NSURLFileResourceTypeNamedPipe"] = NSURLFileResourceTypeNamedPipe;
	p = (void*) &NSURLVolumeSupportsHardLinksKey;
	if (p != NULL) context[@"NSURLVolumeSupportsHardLinksKey"] = NSURLVolumeSupportsHardLinksKey;
	p = (void*) &NSURLUbiquitousItemDownloadingErrorKey;
	if (p != NULL) context[@"NSURLUbiquitousItemDownloadingErrorKey"] = NSURLUbiquitousItemDownloadingErrorKey;
	p = (void*) &NSURLUbiquitousItemPercentDownloadedKey;
	if (p != NULL) context[@"NSURLUbiquitousItemPercentDownloadedKey"] = NSURLUbiquitousItemPercentDownloadedKey;
	p = (void*) &NSURLUbiquitousSharedItemCurrentUserPermissionsKey;
	if (p != NULL) context[@"NSURLUbiquitousSharedItemCurrentUserPermissionsKey"] = NSURLUbiquitousSharedItemCurrentUserPermissionsKey;
	p = (void*) &NSURLLabelColorKey;
	if (p != NULL) context[@"NSURLLabelColorKey"] = NSURLLabelColorKey;
	p = (void*) &NSURLVolumeLocalizedFormatDescriptionKey;
	if (p != NULL) context[@"NSURLVolumeLocalizedFormatDescriptionKey"] = NSURLVolumeLocalizedFormatDescriptionKey;
	p = (void*) &NSURLVolumeIsJournalingKey;
	if (p != NULL) context[@"NSURLVolumeIsJournalingKey"] = NSURLVolumeIsJournalingKey;
	p = (void*) &NSURLUbiquitousSharedItemRoleOwner;
	if (p != NULL) context[@"NSURLUbiquitousSharedItemRoleOwner"] = NSURLUbiquitousSharedItemRoleOwner;
	p = (void*) &NSURLIsVolumeKey;
	if (p != NULL) context[@"NSURLIsVolumeKey"] = NSURLIsVolumeKey;
	p = (void*) &NSURLVolumeUUIDStringKey;
	if (p != NULL) context[@"NSURLVolumeUUIDStringKey"] = NSURLVolumeUUIDStringKey;
	p = (void*) &NSURLIsRegularFileKey;
	if (p != NULL) context[@"NSURLIsRegularFileKey"] = NSURLIsRegularFileKey;
	p = (void*) &NSURLFileResourceTypeDirectory;
	if (p != NULL) context[@"NSURLFileResourceTypeDirectory"] = NSURLFileResourceTypeDirectory;
	p = (void*) &NSURLUbiquitousItemHasUnresolvedConflictsKey;
	if (p != NULL) context[@"NSURLUbiquitousItemHasUnresolvedConflictsKey"] = NSURLUbiquitousItemHasUnresolvedConflictsKey;
	p = (void*) &NSURLIsHiddenKey;
	if (p != NULL) context[@"NSURLIsHiddenKey"] = NSURLIsHiddenKey;
	p = (void*) &NSURLThumbnailDictionaryKey;
	if (p != NULL) context[@"NSURLThumbnailDictionaryKey"] = NSURLThumbnailDictionaryKey;
	p = (void*) &NSURLVolumeSupportsSymbolicLinksKey;
	if (p != NULL) context[@"NSURLVolumeSupportsSymbolicLinksKey"] = NSURLVolumeSupportsSymbolicLinksKey;
	p = (void*) &NSURLFileProtectionNone;
	if (p != NULL) context[@"NSURLFileProtectionNone"] = NSURLFileProtectionNone;
	p = (void*) &NSURLIsDirectoryKey;
	if (p != NULL) context[@"NSURLIsDirectoryKey"] = NSURLIsDirectoryKey;
	p = (void*) &NSURLFileScheme;
	if (p != NULL) context[@"NSURLFileScheme"] = NSURLFileScheme;
	p = (void*) &NSURLEffectiveIconKey;
	if (p != NULL) context[@"NSURLEffectiveIconKey"] = NSURLEffectiveIconKey;
	p = (void*) &NSURLCreationDateKey;
	if (p != NULL) context[@"NSURLCreationDateKey"] = NSURLCreationDateKey;
	p = (void*) &NSURLFileResourceIdentifierKey;
	if (p != NULL) context[@"NSURLFileResourceIdentifierKey"] = NSURLFileResourceIdentifierKey;
	p = (void*) &NSURLFileResourceTypeUnknown;
	if (p != NULL) context[@"NSURLFileResourceTypeUnknown"] = NSURLFileResourceTypeUnknown;
	p = (void*) &NSURLCustomIconKey;
	if (p != NULL) context[@"NSURLCustomIconKey"] = NSURLCustomIconKey;
	p = (void*) &NSURLIsSystemImmutableKey;
	if (p != NULL) context[@"NSURLIsSystemImmutableKey"] = NSURLIsSystemImmutableKey;
	p = (void*) &NSURLUbiquitousItemDownloadRequestedKey;
	if (p != NULL) context[@"NSURLUbiquitousItemDownloadRequestedKey"] = NSURLUbiquitousItemDownloadRequestedKey;
	p = (void*) &NSURLFileResourceTypeCharacterSpecial;
	if (p != NULL) context[@"NSURLFileResourceTypeCharacterSpecial"] = NSURLFileResourceTypeCharacterSpecial;
	p = (void*) &NSURLVolumeCreationDateKey;
	if (p != NULL) context[@"NSURLVolumeCreationDateKey"] = NSURLVolumeCreationDateKey;
	p = (void*) &NSURLFileResourceTypeSocket;
	if (p != NULL) context[@"NSURLFileResourceTypeSocket"] = NSURLFileResourceTypeSocket;
	p = (void*) &NSURLAddedToDirectoryDateKey;
	if (p != NULL) context[@"NSURLAddedToDirectoryDateKey"] = NSURLAddedToDirectoryDateKey;
	p = (void*) &NSURLVolumeSupportsCaseSensitiveNamesKey;
	if (p != NULL) context[@"NSURLVolumeSupportsCaseSensitiveNamesKey"] = NSURLVolumeSupportsCaseSensitiveNamesKey;
	p = (void*) &NSURLVolumeIsEncryptedKey;
	if (p != NULL) context[@"NSURLVolumeIsEncryptedKey"] = NSURLVolumeIsEncryptedKey;
	p = (void*) &NSURLVolumeIdentifierKey;
	if (p != NULL) context[@"NSURLVolumeIdentifierKey"] = NSURLVolumeIdentifierKey;
	p = (void*) &NSURLVolumeSupportsExclusiveRenamingKey;
	if (p != NULL) context[@"NSURLVolumeSupportsExclusiveRenamingKey"] = NSURLVolumeSupportsExclusiveRenamingKey;
	p = (void*) &NSURLUbiquitousItemPercentUploadedKey;
	if (p != NULL) context[@"NSURLUbiquitousItemPercentUploadedKey"] = NSURLUbiquitousItemPercentUploadedKey;
	p = (void*) &NSURLFileProtectionCompleteUnlessOpen;
	if (p != NULL) context[@"NSURLFileProtectionCompleteUnlessOpen"] = NSURLFileProtectionCompleteUnlessOpen;
	p = (void*) &NSURLIsSymbolicLinkKey;
	if (p != NULL) context[@"NSURLIsSymbolicLinkKey"] = NSURLIsSymbolicLinkKey;
	p = (void*) &NSURLPreferredIOBlockSizeKey;
	if (p != NULL) context[@"NSURLPreferredIOBlockSizeKey"] = NSURLPreferredIOBlockSizeKey;
	p = (void*) &NSURLUbiquitousSharedItemPermissionsReadOnly;
	if (p != NULL) context[@"NSURLUbiquitousSharedItemPermissionsReadOnly"] = NSURLUbiquitousSharedItemPermissionsReadOnly;
	p = (void*) &NSURLKeysOfUnsetValuesKey;
	if (p != NULL) context[@"NSURLKeysOfUnsetValuesKey"] = NSURLKeysOfUnsetValuesKey;
	p = (void*) &NSURLIsExcludedFromBackupKey;
	if (p != NULL) context[@"NSURLIsExcludedFromBackupKey"] = NSURLIsExcludedFromBackupKey;
	p = (void*) &NSURLGenerationIdentifierKey;
	if (p != NULL) context[@"NSURLGenerationIdentifierKey"] = NSURLGenerationIdentifierKey;
	p = (void*) &NSURLFileProtectionCompleteUntilFirstUserAuthentication;
	if (p != NULL) context[@"NSURLFileProtectionCompleteUntilFirstUserAuthentication"] = NSURLFileProtectionCompleteUntilFirstUserAuthentication;
	p = (void*) &NSURLVolumeMaximumFileSizeKey;
	if (p != NULL) context[@"NSURLVolumeMaximumFileSizeKey"] = NSURLVolumeMaximumFileSizeKey;
	p = (void*) &NSURLIsMountTriggerKey;
	if (p != NULL) context[@"NSURLIsMountTriggerKey"] = NSURLIsMountTriggerKey;
	p = (void*) &NSURLVolumeSupportsImmutableFilesKey;
	if (p != NULL) context[@"NSURLVolumeSupportsImmutableFilesKey"] = NSURLVolumeSupportsImmutableFilesKey;
	p = (void*) &NSURLVolumeSupportsAdvisoryFileLockingKey;
	if (p != NULL) context[@"NSURLVolumeSupportsAdvisoryFileLockingKey"] = NSURLVolumeSupportsAdvisoryFileLockingKey;
	p = (void*) &NSURLPathKey;
	if (p != NULL) context[@"NSURLPathKey"] = NSURLPathKey;
	p = (void*) &NSURLVolumeSupportsSwapRenamingKey;
	if (p != NULL) context[@"NSURLVolumeSupportsSwapRenamingKey"] = NSURLVolumeSupportsSwapRenamingKey;
	p = (void*) &NSURLFileResourceTypeSymbolicLink;
	if (p != NULL) context[@"NSURLFileResourceTypeSymbolicLink"] = NSURLFileResourceTypeSymbolicLink;
	p = (void*) &NSURLParentDirectoryURLKey;
	if (p != NULL) context[@"NSURLParentDirectoryURLKey"] = NSURLParentDirectoryURLKey;
	p = (void*) &NSURLVolumeIsRootFileSystemKey;
	if (p != NULL) context[@"NSURLVolumeIsRootFileSystemKey"] = NSURLVolumeIsRootFileSystemKey;
	p = (void*) &NSURLVolumeIsBrowsableKey;
	if (p != NULL) context[@"NSURLVolumeIsBrowsableKey"] = NSURLVolumeIsBrowsableKey;
	p = (void*) &NSURLIsReadableKey;
	if (p != NULL) context[@"NSURLIsReadableKey"] = NSURLIsReadableKey;
}
void load_Foundation_NSURL_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
