#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLProtocol_symbols(JSContext*);
@protocol NSURLProtocolNSURLSessionTaskAdditionsCategoryInstanceExports<JSExport>
@property (readonly,copy) NSURLSessionTask * task;
JSExportAs(initWithTaskCachedResponseClient,
-(id) jsinitWithTask: (NSURLSessionTask *) task cachedResponse: (NSCachedURLResponse *) cachedResponse client: (id) client );
@end
@protocol NSURLProtocolNSURLSessionTaskAdditionsCategoryClassExports<JSExport>
+(BOOL) canInitWithTask: (NSURLSessionTask *) task ;
@end
@protocol NSURLProtocolInstanceExports<JSExport>
@property (readonly,copy) NSCachedURLResponse * cachedResponse;
@property (readonly,retain) id client;
@property (readonly,copy) NSURLRequest * request;
-(void) startLoading;
JSExportAs(initWithRequestCachedResponseClient,
-(id) jsinitWithRequest: (NSURLRequest *) request cachedResponse: (NSCachedURLResponse *) cachedResponse client: (id) client );
-(void) stopLoading;
@end
@protocol NSURLProtocolClassExports<JSExport>
+(BOOL) requestIsCacheEquivalent: (NSURLRequest *) a toRequest: (NSURLRequest *) b ;
+(NSURLRequest *) canonicalRequestForRequest: (NSURLRequest *) request ;
+(void) setProperty: (id) value forKey: (NSString *) key inRequest: (NSMutableURLRequest *) request ;
JSExportAs(registerClass,
+(BOOL) jsregisterClass: (JSValue *) protocolClass );
+(void) removePropertyForKey: (NSString *) key inRequest: (NSMutableURLRequest *) request ;
+(id) propertyForKey: (NSString *) key inRequest: (NSURLRequest *) request ;
+(BOOL) canInitWithRequest: (NSURLRequest *) request ;
JSExportAs(unregisterClass,
+(void) jsunregisterClass: (JSValue *) protocolClass );
@end
@protocol NSURLProtocolClientInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) URLProtocol: (NSURLProtocol *) protocol didLoadData: (NSData *) data ;
-(void) URLProtocol: (NSURLProtocol *) protocol didReceiveResponse: (NSURLResponse *) response cacheStoragePolicy: (NSURLCacheStoragePolicy) policy ;
-(void) URLProtocol: (NSURLProtocol *) protocol cachedResponseIsValid: (NSCachedURLResponse *) cachedResponse ;
-(void) URLProtocol: (NSURLProtocol *) protocol didReceiveAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
-(void) URLProtocol: (NSURLProtocol *) protocol didCancelAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
-(void) URLProtocol: (NSURLProtocol *) protocol wasRedirectedToRequest: (NSURLRequest *) request redirectResponse: (NSURLResponse *) redirectResponse ;
-(void) URLProtocolDidFinishLoading: (NSURLProtocol *) protocol ;
-(void) URLProtocol: (NSURLProtocol *) protocol didFailWithError: (NSError *) error ;
@end
@protocol NSURLProtocolClientClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop