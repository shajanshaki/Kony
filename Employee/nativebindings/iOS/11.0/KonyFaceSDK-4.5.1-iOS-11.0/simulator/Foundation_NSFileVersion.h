#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFileVersion_symbols(JSContext*);
@protocol NSFileVersionInstanceExports<JSExport>
@property (getter=isResolved) BOOL resolved;
@property (readonly) BOOL hasThumbnail;
@property (readonly,copy) NSPersonNameComponents * originatorNameComponents;
@property (readonly) BOOL hasLocalContents;
@property (readonly,copy) NSURL * URL;
@property (readonly,retain) id persistentIdentifier;
@property (readonly,copy) NSString * localizedName;
@property (readonly,copy) NSString * localizedNameOfSavingComputer;
@property (readonly,copy) NSDate * modificationDate;
@property (getter=isConflict,readonly) BOOL conflict;
JSExportAs(removeAndReturnError,
-(BOOL) jsremoveAndReturnError: (JSValue *) outError );
JSExportAs(replaceItemAtURLOptionsError,
-(NSURL *) jsreplaceItemAtURL: (NSURL *) url options: (NSFileVersionReplacingOptions) options error: (JSValue *) error );
@end
@protocol NSFileVersionClassExports<JSExport>
+(NSArray *) otherVersionsOfItemAtURL: (NSURL *) url ;
+(NSFileVersion *) versionOfItemAtURL: (NSURL *) url forPersistentIdentifier: (id) persistentIdentifier ;
+(NSArray *) unresolvedConflictVersionsOfItemAtURL: (NSURL *) url ;
JSExportAs(getNonlocalVersionsOfItemAtURLCompletionHandler,
+(void) jsgetNonlocalVersionsOfItemAtURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
JSExportAs(removeOtherVersionsOfItemAtURLError,
+(BOOL) jsremoveOtherVersionsOfItemAtURL: (NSURL *) url error: (JSValue *) outError );
+(NSFileVersion *) currentVersionOfItemAtURL: (NSURL *) url ;
@end
#pragma clang diagnostic pop