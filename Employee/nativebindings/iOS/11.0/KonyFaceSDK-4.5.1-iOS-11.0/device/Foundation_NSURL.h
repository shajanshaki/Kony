#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURL_symbols(JSContext*);
@protocol NSURLNSURLPathUtilitiesCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * lastPathComponent;
@property (readonly,copy) NSURL * URLByStandardizingPath;
@property (readonly,copy) NSURL * URLByResolvingSymlinksInPath;
@property (readonly,copy) NSURL * URLByDeletingLastPathComponent;
@property (readonly,copy) NSString * pathExtension;
@property (readonly,copy) NSURL * URLByDeletingPathExtension;
@property (readonly,copy) NSArray * pathComponents;
-(NSURL *) URLByAppendingPathComponent: (NSString *) pathComponent isDirectory: (BOOL) isDirectory ;
-(NSURL *) URLByAppendingPathExtension: (NSString *) pathExtension ;
-(NSURL *) URLByAppendingPathComponent: (NSString *) pathComponent ;
@end
@protocol NSURLNSURLPathUtilitiesCategoryClassExports<JSExport>
+(NSURL *) fileURLWithPathComponents: (NSArray *) components ;
@end
@protocol NSCharacterSetNSURLUtilitiesCategoryInstanceExports<JSExport>
@end
@protocol NSCharacterSetNSURLUtilitiesCategoryClassExports<JSExport>
+(NSCharacterSet *) URLHostAllowedCharacterSet;
+(NSCharacterSet *) URLFragmentAllowedCharacterSet;
+(NSCharacterSet *) URLPathAllowedCharacterSet;
+(NSCharacterSet *) URLPasswordAllowedCharacterSet;
+(NSCharacterSet *) URLUserAllowedCharacterSet;
+(NSCharacterSet *) URLQueryAllowedCharacterSet;
@end
@protocol NSStringNSURLUtilitiesCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * stringByRemovingPercentEncoding;
-(NSString *) stringByAddingPercentEncodingWithAllowedCharacters: (NSCharacterSet *) allowedCharacters ;
-(NSString *) stringByReplacingPercentEscapesUsingEncoding: (NSStringEncoding) enc ;
-(NSString *) stringByAddingPercentEscapesUsingEncoding: (NSStringEncoding) enc ;
@end
@protocol NSStringNSURLUtilitiesCategoryClassExports<JSExport>
@end
@protocol NSURLNSPromisedItemsCategoryInstanceExports<JSExport>
JSExportAs(checkPromisedItemIsReachableAndReturnError,
-(BOOL) jscheckPromisedItemIsReachableAndReturnError: (JSValue *) error );
JSExportAs(promisedItemResourceValuesForKeysError,
-(NSDictionary *) jspromisedItemResourceValuesForKeys: (NSArray *) keys error: (JSValue *) error );
@end
@protocol NSURLNSPromisedItemsCategoryClassExports<JSExport>
@end
@protocol NSURLQueryItemInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly) NSString * name;
@property (readonly) NSString * value;
JSExportAs(initWithNameValue,
-(id) jsinitWithName: (NSString *) name value: (NSString *) value );
@end
@protocol NSURLQueryItemClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
+(id) queryItemWithName: (NSString *) name value: (NSString *) value ;
@end
@protocol NSURLNSItemProviderCategoryInstanceExports<JSExport, NSItemProviderReadingInstanceExports_, NSItemProviderWritingInstanceExports_>
@end
@protocol NSURLNSItemProviderCategoryClassExports<JSExport, NSItemProviderReadingClassExports_, NSItemProviderWritingClassExports_>
@end
@protocol NSURLInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,copy) NSURL * absoluteURL;
@property (readonly,copy) NSString * password;
@property (readonly) BOOL hasDirectoryPath;
@property (readonly,copy) NSString * resourceSpecifier;
@property (readonly,copy) NSString * absoluteString;
@property (readonly,copy) NSString * parameterString;
@property (readonly,copy) NSString * fragment;
@property (readonly,copy) NSString * relativePath;
@property (readonly,copy) NSURL * standardizedURL;
@property (readonly,copy) NSURL * baseURL;
@property (readonly,copy) NSNumber * port;
@property (readonly,copy) NSString * host;
@property (readonly,copy) NSURL * filePathURL;
@property (readonly,copy) NSString * relativeString;
@property (readonly,copy) NSString * query;
@property (readonly,copy) NSString * path;
@property (getter=isFileURL,readonly) BOOL fileURL;
@property (readonly,copy) NSString * scheme;
@property (readonly,copy) NSData * dataRepresentation;
@property (readonly,copy) NSString * user;
JSExportAs(initFileURLWithPath,
-(id) jsinitFileURLWithPath: (NSString *) path );
JSExportAs(checkResourceIsReachableAndReturnError,
-(BOOL) jscheckResourceIsReachableAndReturnError: (JSValue *) error );
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) URLString );
-(NSURL *) fileReferenceURL;
-(void) removeAllCachedResourceValues;
JSExportAs(initFileURLWithPathIsDirectory,
-(id) jsinitFileURLWithPath: (NSString *) path isDirectory: (BOOL) isDir );
JSExportAs(initFileURLWithPathIsDirectoryRelativeToURL,
-(id) jsinitFileURLWithPath: (NSString *) path isDirectory: (BOOL) isDir relativeToURL: (NSURL *) baseURL );
-(BOOL) startAccessingSecurityScopedResource;
JSExportAs(initFileURLWithPathRelativeToURL,
-(id) jsinitFileURLWithPath: (NSString *) path relativeToURL: (NSURL *) baseURL );
JSExportAs(initAbsoluteURLWithDataRepresentationRelativeToURL,
-(id) jsinitAbsoluteURLWithDataRepresentation: (NSData *) data relativeToURL: (NSURL *) baseURL );
-(void) removeCachedResourceValueForKey: (NSURLResourceKey) key ;
JSExportAs(initWithStringRelativeToURL,
-(id) jsinitWithString: (NSString *) URLString relativeToURL: (NSURL *) baseURL );
JSExportAs(resourceValuesForKeysError,
-(NSDictionary *) jsresourceValuesForKeys: (NSArray *) keys error: (JSValue *) error );
JSExportAs(initWithDataRepresentationRelativeToURL,
-(id) jsinitWithDataRepresentation: (NSData *) data relativeToURL: (NSURL *) baseURL );
-(void) stopAccessingSecurityScopedResource;
JSExportAs(bookmarkDataWithOptionsIncludingResourceValuesForKeysRelativeToURLError,
-(NSData *) jsbookmarkDataWithOptions: (NSURLBookmarkCreationOptions) options includingResourceValuesForKeys: (NSArray *) keys relativeToURL: (NSURL *) relativeURL error: (JSValue *) error );
JSExportAs(setResourceValueForKeyError,
-(BOOL) jssetResourceValue: (id) value forKey: (NSURLResourceKey) key error: (JSValue *) error );
-(BOOL) isFileReferenceURL;
-(void) setTemporaryResourceValue: (id) value forKey: (NSURLResourceKey) key ;
JSExportAs(initWithSchemeHostPath,
-(id) jsinitWithScheme: (NSString *) scheme host: (NSString *) host path: (NSString *) path );
JSExportAs(setResourceValuesError,
-(BOOL) jssetResourceValues: (NSDictionary *) keyedValues error: (JSValue *) error );
@end
@protocol NSURLClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
+(NSURL *) fileURLWithPath: (NSString *) path relativeToURL: (NSURL *) baseURL ;
+(id) URLWithString: (NSString *) URLString relativeToURL: (NSURL *) baseURL ;
JSExportAs(bookmarkDataWithContentsOfURLError,
+(NSData *) jsbookmarkDataWithContentsOfURL: (NSURL *) bookmarkFileURL error: (JSValue *) error );
JSExportAs(writeBookmarkDataToURLOptionsError,
+(BOOL) jswriteBookmarkData: (NSData *) bookmarkData toURL: (NSURL *) bookmarkFileURL options: (NSURLBookmarkFileCreationOptions) options error: (JSValue *) error );
+(NSURL *) fileURLWithPath: (NSString *) path isDirectory: (BOOL) isDir relativeToURL: (NSURL *) baseURL ;
+(id) URLWithString: (NSString *) URLString ;
+(NSURL *) fileURLWithPath: (NSString *) path isDirectory: (BOOL) isDir ;
+(NSDictionary *) resourceValuesForKeys: (NSArray *) keys fromBookmarkData: (NSData *) bookmarkData ;
+(NSURL *) fileURLWithPath: (NSString *) path ;
JSExportAs(URLByResolvingAliasFileAtURLOptionsError,
+(id) jsURLByResolvingAliasFileAtURL: (NSURL *) url options: (NSURLBookmarkResolutionOptions) options error: (JSValue *) error );
+(NSURL *) absoluteURLWithDataRepresentation: (NSData *) data relativeToURL: (NSURL *) baseURL ;
+(NSURL *) URLWithDataRepresentation: (NSData *) data relativeToURL: (NSURL *) baseURL ;
@end
@protocol NSFileSecurityInstanceExports<JSExport, NSCopyingInstanceExports_, NSCodingInstanceExports_>
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSFileSecurityClassExports<JSExport, NSCopyingClassExports_, NSCodingClassExports_>
@end
@protocol NSURLComponentsInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (copy) NSArray * percentEncodedQueryItems;
@property (copy) NSString * fragment;
@property (readonly) NSRange rangeOfPath;
@property (copy) NSString * percentEncodedFragment;
@property (readonly) NSRange rangeOfPassword;
@property (copy) NSString * query;
@property (copy) NSNumber * port;
@property (readonly) NSRange rangeOfHost;
@property (readonly) NSRange rangeOfUser;
@property (copy) NSString * percentEncodedPassword;
@property (readonly) NSRange rangeOfPort;
@property (readonly,copy) NSURL * URL;
@property (readonly) NSRange rangeOfScheme;
@property (copy) NSString * percentEncodedQuery;
@property (copy) NSString * scheme;
@property (readonly,copy) NSString * string;
@property (copy) NSString * percentEncodedPath;
@property (copy) NSString * percentEncodedUser;
@property (readonly) NSRange rangeOfQuery;
@property (copy) NSString * host;
@property (copy) NSString * user;
@property (copy) NSString * path;
@property (copy) NSString * password;
@property (copy) NSArray * queryItems;
@property (copy) NSString * percentEncodedHost;
@property (readonly) NSRange rangeOfFragment;
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) URLString );
JSExportAs(initWithURLResolvingAgainstBaseURL,
-(id) jsinitWithURL: (NSURL *) url resolvingAgainstBaseURL: (BOOL) resolve );
-(id) jsinit;
-(NSURL *) URLRelativeToURL: (NSURL *) baseURL ;
@end
@protocol NSURLComponentsClassExports<JSExport, NSCopyingClassExports_>
+(id) componentsWithString: (NSString *) URLString ;
+(id) componentsWithURL: (NSURL *) url resolvingAgainstBaseURL: (BOOL) resolve ;
@end
#pragma clang diagnostic pop