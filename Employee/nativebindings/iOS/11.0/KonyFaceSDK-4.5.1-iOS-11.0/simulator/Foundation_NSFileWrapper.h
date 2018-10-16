#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFileWrapper_symbols(JSContext*);
@protocol NSFileWrapperInstanceExports<JSExport, NSCodingInstanceExports_>
@property (readonly,copy) NSData * serializedRepresentation;
@property (readonly,copy) NSData * regularFileContents;
@property (getter=isRegularFile,readonly) BOOL regularFile;
@property (readonly,copy) NSDictionary * fileWrappers;
@property (copy) NSString * filename;
@property (getter=isSymbolicLink,readonly) BOOL symbolicLink;
@property (getter=isDirectory,readonly) BOOL directory;
@property (copy) NSString * preferredFilename;
@property (readonly,copy) NSURL * symbolicLinkDestinationURL;
@property (copy) NSDictionary * fileAttributes;
JSExportAs(initRegularFileWithContents,
-(id) jsinitRegularFileWithContents: (NSData *) contents );
JSExportAs(initDirectoryWithFileWrappers,
-(id) jsinitDirectoryWithFileWrappers: (NSDictionary *) childrenByPreferredName );
-(NSString *) addRegularFileWithContents: (NSData *) data preferredFilename: (NSString *) fileName ;
JSExportAs(initWithURLOptionsError,
-(id) jsinitWithURL: (NSURL *) url options: (NSFileWrapperReadingOptions) options error: (JSValue *) outError );
JSExportAs(initSymbolicLinkWithDestinationURL,
-(id) jsinitSymbolicLinkWithDestinationURL: (NSURL *) url );
JSExportAs(initWithSerializedRepresentation,
-(id) jsinitWithSerializedRepresentation: (NSData *) serializeRepresentation );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) inCoder );
JSExportAs(writeToURLOptionsOriginalContentsURLError,
-(BOOL) jswriteToURL: (NSURL *) url options: (NSFileWrapperWritingOptions) options originalContentsURL: (NSURL *) originalContentsURL error: (JSValue *) outError );
JSExportAs(readFromURLOptionsError,
-(BOOL) jsreadFromURL: (NSURL *) url options: (NSFileWrapperReadingOptions) options error: (JSValue *) outError );
-(NSString *) keyForFileWrapper: (NSFileWrapper *) child ;
-(NSString *) addFileWrapper: (NSFileWrapper *) child ;
-(BOOL) matchesContentsOfURL: (NSURL *) url ;
-(void) removeFileWrapper: (NSFileWrapper *) child ;
@end
@protocol NSFileWrapperClassExports<JSExport, NSCodingClassExports_>
@end
#pragma clang diagnostic pop