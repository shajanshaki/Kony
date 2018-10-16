#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLCache_symbols(JSContext*);
@protocol NSURLCacheInstanceExports<JSExport>
@property (readonly) NSUInteger currentMemoryUsage;
@property () NSUInteger memoryCapacity;
@property (readonly) NSUInteger currentDiskUsage;
@property () NSUInteger diskCapacity;
-(void) storeCachedResponse: (NSCachedURLResponse *) cachedResponse forRequest: (NSURLRequest *) request ;
-(void) removeCachedResponseForRequest: (NSURLRequest *) request ;
-(void) removeCachedResponsesSinceDate: (NSDate *) date ;
-(NSCachedURLResponse *) cachedResponseForRequest: (NSURLRequest *) request ;
-(void) removeAllCachedResponses;
JSExportAs(initWithMemoryCapacityDiskCapacityDiskPath,
-(id) jsinitWithMemoryCapacity: (NSUInteger) memoryCapacity diskCapacity: (NSUInteger) diskCapacity diskPath: (NSString *) path );
@end
@protocol NSURLCacheClassExports<JSExport>
+(NSURLCache *) sharedURLCache;
+(void) setSharedURLCache: (NSURLCache *) sharedURLCache ;
@end
@protocol NSURLCacheNSURLSessionTaskAdditionsCategoryInstanceExports<JSExport>
JSExportAs(getCachedResponseForDataTaskCompletionHandler,
-(void) jsgetCachedResponseForDataTask: (NSURLSessionDataTask *) dataTask completionHandler: (JSValue *) completionHandler );
-(void) storeCachedResponse: (NSCachedURLResponse *) cachedResponse forDataTask: (NSURLSessionDataTask *) dataTask ;
-(void) removeCachedResponseForDataTask: (NSURLSessionDataTask *) dataTask ;
@end
@protocol NSURLCacheNSURLSessionTaskAdditionsCategoryClassExports<JSExport>
@end
@protocol NSCachedURLResponseInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly) NSURLCacheStoragePolicy storagePolicy;
@property (readonly,copy) NSData * data;
@property (readonly,copy) NSURLResponse * response;
@property (readonly,copy) NSDictionary * userInfo;
JSExportAs(initWithResponseData,
-(id) jsinitWithResponse: (NSURLResponse *) response data: (NSData *) data );
JSExportAs(initWithResponseDataUserInfoStoragePolicy,
-(id) jsinitWithResponse: (NSURLResponse *) response data: (NSData *) data userInfo: (NSDictionary *) userInfo storagePolicy: (NSURLCacheStoragePolicy) storagePolicy );
@end
@protocol NSCachedURLResponseClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop