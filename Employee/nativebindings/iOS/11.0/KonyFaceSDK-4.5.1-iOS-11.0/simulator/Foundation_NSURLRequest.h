#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLRequest_symbols(JSContext*);
@protocol NSMutableURLRequestNSMutableHTTPURLRequestCategoryInstanceExports<JSExport>
@property (copy) NSDictionary * allHTTPHeaderFields;
@property () BOOL HTTPShouldUsePipelining;
@property (copy) NSData * HTTPBody;
@property (copy) NSString * HTTPMethod;
@property (retain) NSInputStream * HTTPBodyStream;
@property () BOOL HTTPShouldHandleCookies;
-(void) setValue: (NSString *) value forHTTPHeaderField: (NSString *) field ;
-(void) addValue: (NSString *) value forHTTPHeaderField: (NSString *) field ;
@end
@protocol NSMutableURLRequestNSMutableHTTPURLRequestCategoryClassExports<JSExport>
@end
@protocol NSMutableURLRequestInstanceExports<JSExport>
@property () NSTimeInterval timeoutInterval;
@property () NSURLRequestNetworkServiceType networkServiceType;
@property (copy) NSURL * URL;
@property () BOOL allowsCellularAccess;
@property (copy) NSURL * mainDocumentURL;
@property () NSURLRequestCachePolicy cachePolicy;
@end
@protocol NSMutableURLRequestClassExports<JSExport>
@end
@protocol NSURLRequestNSHTTPURLRequestCategoryInstanceExports<JSExport>
@property (readonly,copy) NSDictionary * allHTTPHeaderFields;
@property (readonly) BOOL HTTPShouldUsePipelining;
@property (readonly,copy) NSData * HTTPBody;
@property (readonly,copy) NSString * HTTPMethod;
@property (readonly,retain) NSInputStream * HTTPBodyStream;
@property (readonly) BOOL HTTPShouldHandleCookies;
-(NSString *) valueForHTTPHeaderField: (NSString *) field ;
@end
@protocol NSURLRequestNSHTTPURLRequestCategoryClassExports<JSExport>
@end
@protocol NSURLRequestInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly) NSTimeInterval timeoutInterval;
@property (readonly) NSURLRequestNetworkServiceType networkServiceType;
@property (readonly,copy) NSURL * URL;
@property (readonly) BOOL allowsCellularAccess;
@property (readonly,copy) NSURL * mainDocumentURL;
@property (readonly) NSURLRequestCachePolicy cachePolicy;
JSExportAs(initWithURL,
-(id) jsinitWithURL: (NSURL *) URL );
JSExportAs(initWithURLCachePolicyTimeoutInterval,
-(id) jsinitWithURL: (NSURL *) URL cachePolicy: (NSURLRequestCachePolicy) cachePolicy timeoutInterval: (NSTimeInterval) timeoutInterval );
@end
@protocol NSURLRequestClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_, NSMutableCopyingClassExports_>
+(BOOL) supportsSecureCoding;
+(id) requestWithURL: (NSURL *) URL ;
+(id) requestWithURL: (NSURL *) URL cachePolicy: (NSURLRequestCachePolicy) cachePolicy timeoutInterval: (NSTimeInterval) timeoutInterval ;
@end
#pragma clang diagnostic pop