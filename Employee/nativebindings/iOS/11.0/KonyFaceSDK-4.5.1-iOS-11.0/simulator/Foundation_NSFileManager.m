#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSFileProviderService (Exports)
-(void) jsgetFileProviderConnectionWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSXPCConnection * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSXPCConnection * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getFileProviderConnectionWithCompletionHandler: completionHandler_ ];
}
@end
@implementation NSFileManager (Exports)
-(NSArray *) jscontentsOfDirectoryAtPath: (NSString *) path error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSArray * resultVal__;
	resultVal__ = [self contentsOfDirectoryAtPath: path error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(NSDictionary *) jsattributesOfItemAtPath: (NSString *) path error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSDictionary * resultVal__;
	resultVal__ = [self attributesOfItemAtPath: path error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jsremoveItemAtPath: (NSString *) path error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self removeItemAtPath: path error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jscreateDirectoryAtURL: (NSURL *) url withIntermediateDirectories: (BOOL) createIntermediates attributes: (NSDictionary *) attributes error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self createDirectoryAtURL: url withIntermediateDirectories: createIntermediates attributes: attributes error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jscreateSymbolicLinkAtPath: (NSString *) path withDestinationPath: (NSString *) destPath error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self createSymbolicLinkAtPath: path withDestinationPath: destPath error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(NSDirectoryEnumerator *) jsenumeratorAtURL: (NSURL *) url includingPropertiesForKeys: (NSArray *) keys options: (NSDirectoryEnumerationOptions) mask errorHandler: (JSValue *) handler 
{
	BOOL (^ handler_)(NSURL * , NSError * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^BOOL(NSURL * arg0, NSError * arg1) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, handler, self, parameters);
			return [result toBool];
		};
	}
	NSDirectoryEnumerator * resultVal__;
	resultVal__ = [self enumeratorAtURL: url includingPropertiesForKeys: keys options: mask errorHandler: handler_ ];
	return resultVal__;
}
-(NSString *) jsdestinationOfSymbolicLinkAtPath: (NSString *) path error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSString * resultVal__;
	resultVal__ = [self destinationOfSymbolicLinkAtPath: path error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jslinkItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self linkItemAtURL: srcURL toURL: dstURL error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jslinkItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self linkItemAtPath: srcPath toPath: dstPath error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jssetAttributes: (NSDictionary *) attributes ofItemAtPath: (NSString *) path error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setAttributes: attributes ofItemAtPath: path error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jscopyItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self copyItemAtURL: srcURL toURL: dstURL error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jsmoveItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self moveItemAtPath: srcPath toPath: dstPath error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(void) jsgetFileProviderServicesForItemAtURL: (NSURL *) url completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSDictionary * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSDictionary * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getFileProviderServicesForItemAtURL: url completionHandler: completionHandler_ ];
}
-(NSArray *) jscontentsOfDirectoryAtURL: (NSURL *) url includingPropertiesForKeys: (NSArray *) keys options: (NSDirectoryEnumerationOptions) mask error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSArray * resultVal__;
	resultVal__ = [self contentsOfDirectoryAtURL: url includingPropertiesForKeys: keys options: mask error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(NSURL *) jsURLForDirectory: (NSSearchPathDirectory) directory inDomain: (NSSearchPathDomainMask) domain appropriateForURL: (NSURL *) url create: (BOOL) shouldCreate error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSURL * resultVal__;
	resultVal__ = [self URLForDirectory: directory inDomain: domain appropriateForURL: url create: shouldCreate error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jsstartDownloadingUbiquitousItemAtURL: (NSURL *) url error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self startDownloadingUbiquitousItemAtURL: url error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jscopyItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self copyItemAtPath: srcPath toPath: dstPath error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jsevictUbiquitousItemAtURL: (NSURL *) url error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self evictUbiquitousItemAtURL: url error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jsremoveItemAtURL: (NSURL *) URL error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self removeItemAtURL: URL error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jsmoveItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self moveItemAtURL: srcURL toURL: dstURL error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(NSDictionary *) jsattributesOfFileSystemForPath: (NSString *) path error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSDictionary * resultVal__;
	resultVal__ = [self attributesOfFileSystemForPath: path error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jscreateSymbolicLinkAtURL: (NSURL *) url withDestinationURL: (NSURL *) destURL error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self createSymbolicLinkAtURL: url withDestinationURL: destURL error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(NSArray *) jssubpathsOfDirectoryAtPath: (NSString *) path error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSArray * resultVal__;
	resultVal__ = [self subpathsOfDirectoryAtPath: path error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jscreateDirectoryAtPath: (NSString *) path withIntermediateDirectories: (BOOL) createIntermediates attributes: (NSDictionary *) attributes error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self createDirectoryAtPath: path withIntermediateDirectories: createIntermediates attributes: attributes error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jssetUbiquitous: (BOOL) flag itemAtURL: (NSURL *) url destinationURL: (NSURL *) destinationURL error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setUbiquitous: flag itemAtURL: url destinationURL: destinationURL error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSFileProviderService class], @protocol(NSFileProviderServiceInstanceExports));
	class_addProtocol([NSFileProviderService class], @protocol(NSFileProviderServiceClassExports));
	class_addProtocol([NSFileManager class], @protocol(NSFileManagerNSUserInformationCategoryInstanceExports));
	class_addProtocol([NSFileManager class], @protocol(NSFileManagerNSUserInformationCategoryClassExports));
	class_addProtocol([NSFileManager class], @protocol(NSFileManagerInstanceExports));
	class_addProtocol([NSFileManager class], @protocol(NSFileManagerClassExports));
	class_addProtocol([NSDirectoryEnumerator class], @protocol(NSDirectoryEnumeratorInstanceExports));
	class_addProtocol([NSDirectoryEnumerator class], @protocol(NSDirectoryEnumeratorClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSCopyLinkMoveHandlerCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSCopyLinkMoveHandlerCategoryClassExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSFileAttributesCategoryInstanceExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSFileAttributesCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSVolumeEnumerationSkipHiddenVolumes"] = @2UL;
	context[@"NSVolumeEnumerationProduceFileReferenceURLs"] = @4UL;

	context[@"NSDirectoryEnumerationSkipsSubdirectoryDescendants"] = @1UL;
	context[@"NSDirectoryEnumerationSkipsPackageDescendants"] = @2UL;
	context[@"NSDirectoryEnumerationSkipsHiddenFiles"] = @4UL;

	context[@"NSFileManagerItemReplacementUsingNewMetadataOnly"] = @1UL;
	context[@"NSFileManagerItemReplacementWithoutDeletingBackupItem"] = @2UL;

	context[@"NSURLRelationshipContains"] = @0L;
	context[@"NSURLRelationshipSame"] = @1L;
	context[@"NSURLRelationshipOther"] = @2L;


}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSFileTypeSymbolicLink;
	if (p != NULL) context[@"NSFileTypeSymbolicLink"] = NSFileTypeSymbolicLink;
	p = (void*) &NSFileType;
	if (p != NULL) context[@"NSFileType"] = NSFileType;
	p = (void*) &NSFileSystemSize;
	if (p != NULL) context[@"NSFileSystemSize"] = NSFileSystemSize;
	p = (void*) &NSFileTypeUnknown;
	if (p != NULL) context[@"NSFileTypeUnknown"] = NSFileTypeUnknown;
	p = (void*) &NSFileReferenceCount;
	if (p != NULL) context[@"NSFileReferenceCount"] = NSFileReferenceCount;
	p = (void*) &NSFileHFSTypeCode;
	if (p != NULL) context[@"NSFileHFSTypeCode"] = NSFileHFSTypeCode;
	p = (void*) &NSFileOwnerAccountID;
	if (p != NULL) context[@"NSFileOwnerAccountID"] = NSFileOwnerAccountID;
	p = (void*) &NSFileTypeBlockSpecial;
	if (p != NULL) context[@"NSFileTypeBlockSpecial"] = NSFileTypeBlockSpecial;
	p = (void*) &NSFileTypeRegular;
	if (p != NULL) context[@"NSFileTypeRegular"] = NSFileTypeRegular;
	p = (void*) &NSFileModificationDate;
	if (p != NULL) context[@"NSFileModificationDate"] = NSFileModificationDate;
	p = (void*) &NSFilePosixPermissions;
	if (p != NULL) context[@"NSFilePosixPermissions"] = NSFilePosixPermissions;
	p = (void*) &NSFileTypeSocket;
	if (p != NULL) context[@"NSFileTypeSocket"] = NSFileTypeSocket;
	p = (void*) &NSFileProtectionComplete;
	if (p != NULL) context[@"NSFileProtectionComplete"] = NSFileProtectionComplete;
	p = (void*) &NSFileSystemFreeSize;
	if (p != NULL) context[@"NSFileSystemFreeSize"] = NSFileSystemFreeSize;
	p = (void*) &NSFileSystemNumber;
	if (p != NULL) context[@"NSFileSystemNumber"] = NSFileSystemNumber;
	p = (void*) &NSFileProtectionKey;
	if (p != NULL) context[@"NSFileProtectionKey"] = NSFileProtectionKey;
	p = (void*) &NSFileTypeDirectory;
	if (p != NULL) context[@"NSFileTypeDirectory"] = NSFileTypeDirectory;
	p = (void*) &NSFileOwnerAccountName;
	if (p != NULL) context[@"NSFileOwnerAccountName"] = NSFileOwnerAccountName;
	p = (void*) &NSFileBusy;
	if (p != NULL) context[@"NSFileBusy"] = NSFileBusy;
	p = (void*) &NSFileTypeCharacterSpecial;
	if (p != NULL) context[@"NSFileTypeCharacterSpecial"] = NSFileTypeCharacterSpecial;
	p = (void*) &NSFileAppendOnly;
	if (p != NULL) context[@"NSFileAppendOnly"] = NSFileAppendOnly;
	p = (void*) &NSFileSystemNodes;
	if (p != NULL) context[@"NSFileSystemNodes"] = NSFileSystemNodes;
	p = (void*) &NSFileHFSCreatorCode;
	if (p != NULL) context[@"NSFileHFSCreatorCode"] = NSFileHFSCreatorCode;
	p = (void*) &NSFileSystemFreeNodes;
	if (p != NULL) context[@"NSFileSystemFreeNodes"] = NSFileSystemFreeNodes;
	p = (void*) &NSFileGroupOwnerAccountName;
	if (p != NULL) context[@"NSFileGroupOwnerAccountName"] = NSFileGroupOwnerAccountName;
	p = (void*) &NSFileSize;
	if (p != NULL) context[@"NSFileSize"] = NSFileSize;
	p = (void*) &NSUbiquityIdentityDidChangeNotification;
	if (p != NULL) context[@"NSUbiquityIdentityDidChangeNotification"] = NSUbiquityIdentityDidChangeNotification;
	p = (void*) &NSFileGroupOwnerAccountID;
	if (p != NULL) context[@"NSFileGroupOwnerAccountID"] = NSFileGroupOwnerAccountID;
	p = (void*) &NSFileCreationDate;
	if (p != NULL) context[@"NSFileCreationDate"] = NSFileCreationDate;
	p = (void*) &NSFileDeviceIdentifier;
	if (p != NULL) context[@"NSFileDeviceIdentifier"] = NSFileDeviceIdentifier;
	p = (void*) &NSFileProtectionNone;
	if (p != NULL) context[@"NSFileProtectionNone"] = NSFileProtectionNone;
	p = (void*) &NSFileProtectionCompleteUnlessOpen;
	if (p != NULL) context[@"NSFileProtectionCompleteUnlessOpen"] = NSFileProtectionCompleteUnlessOpen;
	p = (void*) &NSFileExtensionHidden;
	if (p != NULL) context[@"NSFileExtensionHidden"] = NSFileExtensionHidden;
	p = (void*) &NSFileProtectionCompleteUntilFirstUserAuthentication;
	if (p != NULL) context[@"NSFileProtectionCompleteUntilFirstUserAuthentication"] = NSFileProtectionCompleteUntilFirstUserAuthentication;
	p = (void*) &NSFileImmutable;
	if (p != NULL) context[@"NSFileImmutable"] = NSFileImmutable;
	p = (void*) &NSFileSystemFileNumber;
	if (p != NULL) context[@"NSFileSystemFileNumber"] = NSFileSystemFileNumber;
}
void Foundation_NSFileManagerProtocols()
{
	(void)@protocol(NSFileManagerDelegate);
}
void load_Foundation_NSFileManager_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
