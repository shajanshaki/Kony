#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLConnection_symbols(JSContext*);
@protocol NSURLConnectionInstanceExports<JSExport>
@property (readonly,copy) NSURLRequest * currentRequest;
@property (readonly,copy) NSURLRequest * originalRequest;
JSExportAs(initWithRequestDelegateStartImmediately,
-(id) jsinitWithRequest: (NSURLRequest *) request delegate: (id) delegate startImmediately: (BOOL) startImmediately );
-(void) unscheduleFromRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(void) scheduleInRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
JSExportAs(initWithRequestDelegate,
-(id) jsinitWithRequest: (NSURLRequest *) request delegate: (id) delegate );
-(void) start;
-(void) setDelegateQueue: (NSOperationQueue *) queue ;
-(void) cancel;
@end
@protocol NSURLConnectionClassExports<JSExport>
+(NSURLConnection *) connectionWithRequest: (NSURLRequest *) request delegate: (id) delegate ;
+(BOOL) canHandleRequest: (NSURLRequest *) request ;
@end
@protocol NSURLConnectionNSURLConnectionQueuedLoadingCategoryInstanceExports<JSExport>
@end
@protocol NSURLConnectionNSURLConnectionQueuedLoadingCategoryClassExports<JSExport>
JSExportAs(sendAsynchronousRequestQueueCompletionHandler,
+(void) jssendAsynchronousRequest: (NSURLRequest *) request queue: (NSOperationQueue *) queue completionHandler: (JSValue *) handler );
@end
@protocol NSURLConnectionNSURLConnectionSynchronousLoadingCategoryInstanceExports<JSExport>
@end
@protocol NSURLConnectionNSURLConnectionSynchronousLoadingCategoryClassExports<JSExport>
@end
@protocol NSURLConnectionDownloadDelegateInstanceExports_<JSExport, NSURLConnectionDelegateInstanceExports_>
-(void) connection: (NSURLConnection *) connection didWriteData: (long long) bytesWritten totalBytesWritten: (long long) totalBytesWritten expectedTotalBytes: (long long) expectedTotalBytes ;
-(void) connectionDidResumeDownloading: (NSURLConnection *) connection totalBytesWritten: (long long) totalBytesWritten expectedTotalBytes: (long long) expectedTotalBytes ;
-(void) connectionDidFinishDownloading: (NSURLConnection *) connection destinationURL: (NSURL *) destinationURL ;
@end
@protocol NSURLConnectionDownloadDelegateClassExports_<JSExport, NSURLConnectionDelegateClassExports_>
@end
@protocol NSURLConnectionDataDelegateInstanceExports_<JSExport, NSURLConnectionDelegateInstanceExports_>
-(void) connection: (NSURLConnection *) connection didReceiveData: (NSData *) data ;
-(void) connection: (NSURLConnection *) connection didSendBodyData: (NSInteger) bytesWritten totalBytesWritten: (NSInteger) totalBytesWritten totalBytesExpectedToWrite: (NSInteger) totalBytesExpectedToWrite ;
-(void) connectionDidFinishLoading: (NSURLConnection *) connection ;
-(NSURLRequest *) connection: (NSURLConnection *) connection willSendRequest: (NSURLRequest *) request redirectResponse: (NSURLResponse *) response ;
-(NSInputStream *) connection: (NSURLConnection *) connection needNewBodyStream: (NSURLRequest *) request ;
-(void) connection: (NSURLConnection *) connection didReceiveResponse: (NSURLResponse *) response ;
-(NSCachedURLResponse *) connection: (NSURLConnection *) connection willCacheResponse: (NSCachedURLResponse *) cachedResponse ;
@end
@protocol NSURLConnectionDataDelegateClassExports_<JSExport, NSURLConnectionDelegateClassExports_>
@end
@protocol NSURLConnectionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(BOOL) connection: (NSURLConnection *) connection canAuthenticateAgainstProtectionSpace: (NSURLProtectionSpace *) protectionSpace ;
-(void) connection: (NSURLConnection *) connection didReceiveAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
-(void) connection: (NSURLConnection *) connection willSendRequestForAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
-(void) connection: (NSURLConnection *) connection didFailWithError: (NSError *) error ;
-(BOOL) connectionShouldUseCredentialStorage: (NSURLConnection *) connection ;
-(void) connection: (NSURLConnection *) connection didCancelAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
@end
@protocol NSURLConnectionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop