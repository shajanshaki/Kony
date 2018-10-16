#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSHTTPCookie_symbols(JSContext*);
@protocol NSHTTPCookieInstanceExports<JSExport>
@property (readonly,copy) NSString * comment;
@property (readonly,copy) NSString * domain;
@property (readonly,copy) NSString * name;
@property (getter=isSessionOnly,readonly) BOOL sessionOnly;
@property (readonly,copy) NSDate * expiresDate;
@property (readonly,copy) NSString * value;
@property (readonly,copy) NSURL * commentURL;
@property (readonly) NSUInteger version;
@property (readonly,copy) NSArray * portList;
@property (readonly,copy) NSString * path;
@property (readonly,copy) NSDictionary * properties;
@property (getter=isHTTPOnly,readonly) BOOL HTTPOnly;
@property (getter=isSecure,readonly) BOOL secure;
JSExportAs(initWithProperties,
-(id) jsinitWithProperties: (NSDictionary *) properties );
@end
@protocol NSHTTPCookieClassExports<JSExport>
+(NSHTTPCookie *) cookieWithProperties: (NSDictionary *) properties ;
+(NSDictionary *) requestHeaderFieldsWithCookies: (NSArray *) cookies ;
+(NSArray *) cookiesWithResponseHeaderFields: (NSDictionary *) headerFields forURL: (NSURL *) URL ;
@end
#pragma clang diagnostic pop