#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLSession_symbols(JSContext*);
@protocol NSURLSessionTaskInstanceExports<JSExport, NSCopyingInstanceExports_, NSProgressReportingInstanceExports_>
@property (readonly) int64_t countOfBytesSent;
@property (copy) NSDate * earliestBeginDate;
@property (readonly) int64_t countOfBytesExpectedToReceive;
@property (copy) NSString * taskDescription;
@property (readonly) int64_t countOfBytesExpectedToSend;
@property (readonly) NSURLSessionTaskState state;
@property () float priority;
@property () int64_t countOfBytesClientExpectsToSend;
@property (readonly) NSUInteger taskIdentifier;
@property (readonly) int64_t countOfBytesReceived;
@property (readonly,copy) NSError * error;
@property (readonly,copy) NSURLRequest * currentRequest;
@property (readonly,strong) NSProgress * progress;
@property () int64_t countOfBytesClientExpectsToReceive;
@property (readonly,copy) NSURLResponse * response;
@property (readonly,copy) NSURLRequest * originalRequest;
-(void) suspend;
-(void) cancel;
-(void) resume;
@end
@protocol NSURLSessionTaskClassExports<JSExport, NSCopyingClassExports_, NSProgressReportingClassExports_>
@end
@protocol NSURLSessionUploadTaskInstanceExports<JSExport>
@end
@protocol NSURLSessionUploadTaskClassExports<JSExport>
@end
@protocol NSURLSessionTaskTransactionMetricsInstanceExports<JSExport>
@property (readonly,copy) NSDate * responseStartDate;
@property (readonly,copy) NSDate * connectStartDate;
@property (getter=isProxyConnection,readonly,assign) BOOL proxyConnection;
@property (readonly,copy) NSDate * requestEndDate;
@property (readonly,copy) NSDate * domainLookupEndDate;
@property (readonly,copy) NSURLRequest * request;
@property (readonly,copy) NSDate * requestStartDate;
@property (readonly,copy) NSDate * domainLookupStartDate;
@property (readonly,copy) NSDate * secureConnectionStartDate;
@property (readonly,copy) NSDate * secureConnectionEndDate;
@property (readonly,copy) NSDate * connectEndDate;
@property (getter=isReusedConnection,readonly,assign) BOOL reusedConnection;
@property (readonly,copy) NSDate * responseEndDate;
@property (readonly,assign) NSURLSessionTaskMetricsResourceFetchType resourceFetchType;
@property (readonly,copy) NSString * networkProtocolName;
@property (readonly,copy) NSURLResponse * response;
@property (readonly,copy) NSDate * fetchStartDate;
-(id) jsinit;
@end
@protocol NSURLSessionTaskTransactionMetricsClassExports<JSExport>
@end
@protocol NSURLSessionConfigurationNSURLSessionDeprecatedCategoryInstanceExports<JSExport>
@end
@protocol NSURLSessionConfigurationNSURLSessionDeprecatedCategoryClassExports<JSExport>
+(NSURLSessionConfiguration *) backgroundSessionConfiguration: (NSString *) identifier ;
@end
@protocol NSURLSessionConfigurationInstanceExports<JSExport, NSCopyingInstanceExports_>
@property () NSTimeInterval timeoutIntervalForResource;
@property () BOOL allowsCellularAccess;
@property (retain) NSURLCredentialStorage * URLCredentialStorage;
@property () NSURLSessionMultipathServiceType multipathServiceType;
@property () NSURLRequestCachePolicy requestCachePolicy;
@property () BOOL sessionSendsLaunchEvents;
@property () NSTimeInterval timeoutIntervalForRequest;
@property () NSURLRequestNetworkServiceType networkServiceType;
@property (getter=isDiscretionary) BOOL discretionary;
@property () SSLProtocol TLSMinimumSupportedProtocol;
@property () BOOL HTTPShouldUsePipelining;
@property () BOOL HTTPShouldSetCookies;
@property (copy) NSDictionary * HTTPAdditionalHeaders;
@property () NSInteger HTTPMaximumConnectionsPerHost;
@property () SSLProtocol TLSMaximumSupportedProtocol;
@property () BOOL waitsForConnectivity;
@property () NSHTTPCookieAcceptPolicy HTTPCookieAcceptPolicy;
@property () BOOL shouldUseExtendedBackgroundIdleMode;
@property (copy) NSDictionary * connectionProxyDictionary;
@property (retain) NSHTTPCookieStorage * HTTPCookieStorage;
@property (retain) NSURLCache * URLCache;
@property (copy) NSArray * protocolClasses;
@property (copy) NSString * sharedContainerIdentifier;
@property (readonly,copy) NSString * identifier;
@end
@protocol NSURLSessionConfigurationClassExports<JSExport, NSCopyingClassExports_>
+(NSURLSessionConfiguration *) backgroundSessionConfigurationWithIdentifier: (NSString *) identifier ;
+(NSURLSessionConfiguration *) ephemeralSessionConfiguration;
+(NSURLSessionConfiguration *) defaultSessionConfiguration;
@end
@protocol NSURLSessionInstanceExports<JSExport>
@property (copy) NSString * sessionDescription;
@property (readonly,copy) NSURLSessionConfiguration * configuration;
@property (readonly,retain) id delegate;
@property (readonly,retain) NSOperationQueue * delegateQueue;
-(NSURLSessionUploadTask *) uploadTaskWithRequest: (NSURLRequest *) request fromFile: (NSURL *) fileURL ;
-(void) invalidateAndCancel;
-(NSURLSessionDownloadTask *) downloadTaskWithURL: (NSURL *) url ;
JSExportAs(flushWithCompletionHandler,
-(void) jsflushWithCompletionHandler: (JSValue *) completionHandler );
-(NSURLSessionStreamTask *) streamTaskWithHostName: (NSString *) hostname port: (NSInteger) port ;
JSExportAs(getTasksWithCompletionHandler,
-(void) jsgetTasksWithCompletionHandler: (JSValue *) completionHandler );
-(NSURLSessionDownloadTask *) downloadTaskWithRequest: (NSURLRequest *) request ;
JSExportAs(getAllTasksWithCompletionHandler,
-(void) jsgetAllTasksWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(resetWithCompletionHandler,
-(void) jsresetWithCompletionHandler: (JSValue *) completionHandler );
-(NSURLSessionDownloadTask *) downloadTaskWithResumeData: (NSData *) resumeData ;
-(NSURLSessionDataTask *) dataTaskWithRequest: (NSURLRequest *) request ;
-(NSURLSessionStreamTask *) streamTaskWithNetService: (NSNetService *) service ;
-(NSURLSessionUploadTask *) uploadTaskWithRequest: (NSURLRequest *) request fromData: (NSData *) bodyData ;
-(NSURLSessionDataTask *) dataTaskWithURL: (NSURL *) url ;
-(NSURLSessionUploadTask *) uploadTaskWithStreamedRequest: (NSURLRequest *) request ;
-(void) finishTasksAndInvalidate;
@end
@protocol NSURLSessionClassExports<JSExport>
+(NSURLSession *) sharedSession;
+(NSURLSession *) sessionWithConfiguration: (NSURLSessionConfiguration *) configuration delegate: (id) delegate delegateQueue: (NSOperationQueue *) queue ;
+(NSURLSession *) sessionWithConfiguration: (NSURLSessionConfiguration *) configuration ;
@end
@protocol NSURLSessionStreamTaskInstanceExports<JSExport>
-(void) closeRead;
-(void) stopSecureConnection;
JSExportAs(writeDataTimeoutCompletionHandler,
-(void) jswriteData: (NSData *) data timeout: (NSTimeInterval) timeout completionHandler: (JSValue *) completionHandler );
-(void) captureStreams;
-(void) closeWrite;
JSExportAs(readDataOfMinLengthMaxLengthTimeoutCompletionHandler,
-(void) jsreadDataOfMinLength: (NSUInteger) minBytes maxLength: (NSUInteger) maxBytes timeout: (NSTimeInterval) timeout completionHandler: (JSValue *) completionHandler );
-(void) startSecureConnection;
@end
@protocol NSURLSessionStreamTaskClassExports<JSExport>
@end
@protocol NSURLSessionTaskMetricsInstanceExports<JSExport>
@property (readonly,assign) NSUInteger redirectCount;
@property (readonly,copy) NSDateInterval * taskInterval;
@property (readonly,copy) NSArray * transactionMetrics;
-(id) jsinit;
@end
@protocol NSURLSessionTaskMetricsClassExports<JSExport>
@end
@protocol NSURLSessionNSURLSessionAsynchronousConvenienceCategoryInstanceExports<JSExport>
JSExportAs(downloadTaskWithURLCompletionHandler,
-(NSURLSessionDownloadTask *) jsdownloadTaskWithURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
JSExportAs(uploadTaskWithRequestFromFileCompletionHandler,
-(NSURLSessionUploadTask *) jsuploadTaskWithRequest: (NSURLRequest *) request fromFile: (NSURL *) fileURL completionHandler: (JSValue *) completionHandler );
JSExportAs(dataTaskWithRequestCompletionHandler,
-(NSURLSessionDataTask *) jsdataTaskWithRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
JSExportAs(uploadTaskWithRequestFromDataCompletionHandler,
-(NSURLSessionUploadTask *) jsuploadTaskWithRequest: (NSURLRequest *) request fromData: (NSData *) bodyData completionHandler: (JSValue *) completionHandler );
JSExportAs(downloadTaskWithRequestCompletionHandler,
-(NSURLSessionDownloadTask *) jsdownloadTaskWithRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
JSExportAs(downloadTaskWithResumeDataCompletionHandler,
-(NSURLSessionDownloadTask *) jsdownloadTaskWithResumeData: (NSData *) resumeData completionHandler: (JSValue *) completionHandler );
JSExportAs(dataTaskWithURLCompletionHandler,
-(NSURLSessionDataTask *) jsdataTaskWithURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
@end
@protocol NSURLSessionNSURLSessionAsynchronousConvenienceCategoryClassExports<JSExport>
@end
@protocol NSURLSessionDownloadTaskInstanceExports<JSExport>
JSExportAs(cancelByProducingResumeData,
-(void) jscancelByProducingResumeData: (JSValue *) completionHandler );
@end
@protocol NSURLSessionDownloadTaskClassExports<JSExport>
@end
@protocol NSURLSessionDataTaskInstanceExports<JSExport>
@end
@protocol NSURLSessionDataTaskClassExports<JSExport>
@end
@protocol NSURLSessionTaskDelegateInstanceExports_<JSExport, NSURLSessionDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didSendBodyData: (int64_t) bytesSent totalBytesSent: (int64_t) totalBytesSent totalBytesExpectedToSend: (int64_t) totalBytesExpectedToSend ;
-(void) URLSession: (NSURLSession *) session taskIsWaitingForConnectivity: (NSURLSessionTask *) task ;
JSExportAs(URLSessionTaskWillBeginDelayedRequestCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task willBeginDelayedRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
JSExportAs(URLSessionTaskWillPerformHTTPRedirectionNewRequestCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task willPerformHTTPRedirection: (NSHTTPURLResponse *) response newRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didFinishCollectingMetrics: (NSURLSessionTaskMetrics *) metrics ;
JSExportAs(URLSessionTaskNeedNewBodyStream,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task needNewBodyStream: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didCompleteWithError: (NSError *) error ;
JSExportAs(URLSessionTaskDidReceiveChallengeCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didReceiveChallenge: (NSURLAuthenticationChallenge *) challenge completionHandler: (JSValue *) completionHandler );
@end
@protocol NSURLSessionTaskDelegateClassExports_<JSExport, NSURLSessionDelegateClassExports_>
@end
@protocol NSURLSessionStreamDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session readClosedForStreamTask: (NSURLSessionStreamTask *) streamTask ;
-(void) URLSession: (NSURLSession *) session betterRouteDiscoveredForStreamTask: (NSURLSessionStreamTask *) streamTask ;
-(void) URLSession: (NSURLSession *) session writeClosedForStreamTask: (NSURLSessionStreamTask *) streamTask ;
-(void) URLSession: (NSURLSession *) session streamTask: (NSURLSessionStreamTask *) streamTask didBecomeInputStream: (NSInputStream *) inputStream outputStream: (NSOutputStream *) outputStream ;
@end
@protocol NSURLSessionStreamDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
@protocol NSURLSessionDownloadDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session downloadTask: (NSURLSessionDownloadTask *) downloadTask didWriteData: (int64_t) bytesWritten totalBytesWritten: (int64_t) totalBytesWritten totalBytesExpectedToWrite: (int64_t) totalBytesExpectedToWrite ;
-(void) URLSession: (NSURLSession *) session downloadTask: (NSURLSessionDownloadTask *) downloadTask didResumeAtOffset: (int64_t) fileOffset expectedTotalBytes: (int64_t) expectedTotalBytes ;
-(void) URLSession: (NSURLSession *) session downloadTask: (NSURLSessionDownloadTask *) downloadTask didFinishDownloadingToURL: (NSURL *) location ;
@end
@protocol NSURLSessionDownloadDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
@protocol NSURLSessionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) URLSession: (NSURLSession *) session didBecomeInvalidWithError: (NSError *) error ;
-(void) URLSessionDidFinishEventsForBackgroundURLSession: (NSURLSession *) session ;
JSExportAs(URLSessionDidReceiveChallengeCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session didReceiveChallenge: (NSURLAuthenticationChallenge *) challenge completionHandler: (JSValue *) completionHandler );
@end
@protocol NSURLSessionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSURLSessionDataDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didBecomeDownloadTask: (NSURLSessionDownloadTask *) downloadTask ;
JSExportAs(URLSessionDataTaskWillCacheResponseCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask willCacheResponse: (NSCachedURLResponse *) proposedResponse completionHandler: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didBecomeStreamTask: (NSURLSessionStreamTask *) streamTask ;
JSExportAs(URLSessionDataTaskDidReceiveResponseCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didReceiveResponse: (NSURLResponse *) response completionHandler: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didReceiveData: (NSData *) data ;
@end
@protocol NSURLSessionDataDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
#pragma clang diagnostic pop