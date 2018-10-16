#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFileManager_symbols(JSContext*);
@protocol NSFileProviderServiceInstanceExports<JSExport>
@property (readonly,copy) NSFileProviderServiceName name;
JSExportAs(getFileProviderConnectionWithCompletionHandler,
-(void) jsgetFileProviderConnectionWithCompletionHandler: (JSValue *) completionHandler );
@end
@protocol NSFileProviderServiceClassExports<JSExport>
@end
@protocol NSFileManagerNSUserInformationCategoryInstanceExports<JSExport>
@property (readonly,copy) NSURL * temporaryDirectory;
@end
@protocol NSFileManagerNSUserInformationCategoryClassExports<JSExport>
@end
@protocol NSFileManagerInstanceExports<JSExport>
@property (readonly,copy) id ubiquityIdentityToken;
@property (readonly,copy) NSString * currentDirectoryPath;
@property (assign) id delegate;
JSExportAs(contentsOfDirectoryAtPathError,
-(NSArray *) jscontentsOfDirectoryAtPath: (NSString *) path error: (JSValue *) error );
-(BOOL) isWritableFileAtPath: (NSString *) path ;
JSExportAs(attributesOfItemAtPathError,
-(NSDictionary *) jsattributesOfItemAtPath: (NSString *) path error: (JSValue *) error );
-(NSDictionary *) fileAttributesAtPath: (NSString *) path traverseLink: (BOOL) yorn ;
JSExportAs(removeItemAtPathError,
-(BOOL) jsremoveItemAtPath: (NSString *) path error: (JSValue *) error );
-(NSArray *) URLsForDirectory: (NSSearchPathDirectory) directory inDomains: (NSSearchPathDomainMask) domainMask ;
JSExportAs(createDirectoryAtURLWithIntermediateDirectoriesAttributesError,
-(BOOL) jscreateDirectoryAtURL: (NSURL *) url withIntermediateDirectories: (BOOL) createIntermediates attributes: (NSDictionary *) attributes error: (JSValue *) error );
-(NSArray *) mountedVolumeURLsIncludingResourceValuesForKeys: (NSArray *) propertyKeys options: (NSVolumeEnumerationOptions) options ;
-(NSString *) displayNameAtPath: (NSString *) path ;
JSExportAs(createSymbolicLinkAtPathWithDestinationPathError,
-(BOOL) jscreateSymbolicLinkAtPath: (NSString *) path withDestinationPath: (NSString *) destPath error: (JSValue *) error );
JSExportAs(enumeratorAtURLIncludingPropertiesForKeysOptionsErrorHandler,
-(NSDirectoryEnumerator *) jsenumeratorAtURL: (NSURL *) url includingPropertiesForKeys: (NSArray *) keys options: (NSDirectoryEnumerationOptions) mask errorHandler: (JSValue *) handler );
JSExportAs(destinationOfSymbolicLinkAtPathError,
-(NSString *) jsdestinationOfSymbolicLinkAtPath: (NSString *) path error: (JSValue *) error );
-(NSURL *) containerURLForSecurityApplicationGroupIdentifier: (NSString *) groupIdentifier ;
JSExportAs(linkItemAtURLToURLError,
-(BOOL) jslinkItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL error: (JSValue *) error );
-(NSURL *) URLForUbiquityContainerIdentifier: (NSString *) containerIdentifier ;
JSExportAs(linkItemAtPathToPathError,
-(BOOL) jslinkItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath error: (JSValue *) error );
JSExportAs(setAttributesOfItemAtPathError,
-(BOOL) jssetAttributes: (NSDictionary *) attributes ofItemAtPath: (NSString *) path error: (JSValue *) error );
-(BOOL) isUbiquitousItemAtURL: (NSURL *) url ;
JSExportAs(copyItemAtURLToURLError,
-(BOOL) jscopyItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL error: (JSValue *) error );
-(NSString *) pathContentOfSymbolicLinkAtPath: (NSString *) path ;
JSExportAs(moveItemAtPathToPathError,
-(BOOL) jsmoveItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath error: (JSValue *) error );
-(BOOL) isReadableFileAtPath: (NSString *) path ;
JSExportAs(getFileProviderServicesForItemAtURLCompletionHandler,
-(void) jsgetFileProviderServicesForItemAtURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
JSExportAs(contentsOfDirectoryAtURLIncludingPropertiesForKeysOptionsError,
-(NSArray *) jscontentsOfDirectoryAtURL: (NSURL *) url includingPropertiesForKeys: (NSArray *) keys options: (NSDirectoryEnumerationOptions) mask error: (JSValue *) error );
-(BOOL) changeCurrentDirectoryPath: (NSString *) path ;
-(NSDictionary *) fileSystemAttributesAtPath: (NSString *) path ;
JSExportAs(URLForDirectoryInDomainAppropriateForURLCreateError,
-(NSURL *) jsURLForDirectory: (NSSearchPathDirectory) directory inDomain: (NSSearchPathDomainMask) domain appropriateForURL: (NSURL *) url create: (BOOL) shouldCreate error: (JSValue *) error );
JSExportAs(startDownloadingUbiquitousItemAtURLError,
-(BOOL) jsstartDownloadingUbiquitousItemAtURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(copyItemAtPathToPathError,
-(BOOL) jscopyItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath error: (JSValue *) error );
JSExportAs(evictUbiquitousItemAtURLError,
-(BOOL) jsevictUbiquitousItemAtURL: (NSURL *) url error: (JSValue *) error );
-(NSArray *) subpathsAtPath: (NSString *) path ;
-(BOOL) createSymbolicLinkAtPath: (NSString *) path pathContent: (NSString *) otherpath ;
-(NSArray *) componentsToDisplayForPath: (NSString *) path ;
JSExportAs(setUbiquitousItemAtURLDestinationURLError,
-(BOOL) jssetUbiquitous: (BOOL) flag itemAtURL: (NSURL *) url destinationURL: (NSURL *) destinationURL error: (JSValue *) error );
-(NSDirectoryEnumerator *) enumeratorAtPath: (NSString *) path ;
-(BOOL) isExecutableFileAtPath: (NSString *) path ;
-(BOOL) changeFileAttributes: (NSDictionary *) attributes atPath: (NSString *) path ;
-(BOOL) fileExistsAtPath: (NSString *) path ;
-(BOOL) isDeletableFileAtPath: (NSString *) path ;
-(NSData *) contentsAtPath: (NSString *) path ;
JSExportAs(removeItemAtURLError,
-(BOOL) jsremoveItemAtURL: (NSURL *) URL error: (JSValue *) error );
JSExportAs(moveItemAtURLToURLError,
-(BOOL) jsmoveItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL error: (JSValue *) error );
-(BOOL) createDirectoryAtPath: (NSString *) path attributes: (NSDictionary *) attributes ;
-(NSArray *) directoryContentsAtPath: (NSString *) path ;
JSExportAs(attributesOfFileSystemForPathError,
-(NSDictionary *) jsattributesOfFileSystemForPath: (NSString *) path error: (JSValue *) error );
-(BOOL) createFileAtPath: (NSString *) path contents: (NSData *) data attributes: (NSDictionary *) attr ;
JSExportAs(createSymbolicLinkAtURLWithDestinationURLError,
-(BOOL) jscreateSymbolicLinkAtURL: (NSURL *) url withDestinationURL: (NSURL *) destURL error: (JSValue *) error );
JSExportAs(subpathsOfDirectoryAtPathError,
-(NSArray *) jssubpathsOfDirectoryAtPath: (NSString *) path error: (JSValue *) error );
JSExportAs(createDirectoryAtPathWithIntermediateDirectoriesAttributesError,
-(BOOL) jscreateDirectoryAtPath: (NSString *) path withIntermediateDirectories: (BOOL) createIntermediates attributes: (NSDictionary *) attributes error: (JSValue *) error );
-(BOOL) contentsEqualAtPath: (NSString *) path1 andPath: (NSString *) path2 ;
@end
@protocol NSFileManagerClassExports<JSExport>
+(NSFileManager *) defaultManager;
@end
@protocol NSDirectoryEnumeratorInstanceExports<JSExport>
@property (readonly,copy) NSDictionary * directoryAttributes;
@property (readonly) NSUInteger level;
@property (readonly,copy) NSDictionary * fileAttributes;
-(void) skipDescendents;
-(void) skipDescendants;
@end
@protocol NSDirectoryEnumeratorClassExports<JSExport>
@end
@protocol NSObjectNSCopyLinkMoveHandlerCategoryInstanceExports<JSExport>
-(BOOL) fileManager: (NSFileManager *) fm shouldProceedAfterError: (NSDictionary *) errorInfo ;
-(void) fileManager: (NSFileManager *) fm willProcessPath: (NSString *) path ;
@end
@protocol NSObjectNSCopyLinkMoveHandlerCategoryClassExports<JSExport>
@end
@protocol NSDictionaryNSFileAttributesCategoryInstanceExports<JSExport>
-(OSType) fileHFSCreatorCode;
-(NSDate *) fileCreationDate;
-(NSDate *) fileModificationDate;
-(NSUInteger) filePosixPermissions;
-(BOOL) fileExtensionHidden;
-(NSNumber *) fileGroupOwnerAccountID;
-(BOOL) fileIsAppendOnly;
-(NSString *) fileType;
-(NSString *) fileOwnerAccountName;
-(BOOL) fileIsImmutable;
-(NSInteger) fileSystemNumber;
-(unsigned long long) fileSize;
-(NSUInteger) fileSystemFileNumber;
-(OSType) fileHFSTypeCode;
-(NSString *) fileGroupOwnerAccountName;
-(NSNumber *) fileOwnerAccountID;
@end
@protocol NSDictionaryNSFileAttributesCategoryClassExports<JSExport>
@end
@protocol NSFileManagerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error linkingItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldRemoveItemAtURL: (NSURL *) URL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldCopyItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldRemoveItemAtPath: (NSString *) path ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error movingItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error movingItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldMoveItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldLinkItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error removingItemAtPath: (NSString *) path ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error removingItemAtURL: (NSURL *) URL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldMoveItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error linkingItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldLinkItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldCopyItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error copyingItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error copyingItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
@end
@protocol NSFileManagerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop