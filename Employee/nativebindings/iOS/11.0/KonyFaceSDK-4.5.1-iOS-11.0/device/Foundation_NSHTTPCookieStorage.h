#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSHTTPCookieStorage_symbols(JSContext*);
@protocol NSHTTPCookieStorageNSURLSessionTaskAdditionsCategoryInstanceExports<JSExport>
-(void) storeCookies: (NSArray *) cookies forTask: (NSURLSessionTask *) task ;
JSExportAs(getCookiesForTaskCompletionHandler,
-(void) jsgetCookiesForTask: (NSURLSessionTask *) task completionHandler: (JSValue *) completionHandler );
@end
@protocol NSHTTPCookieStorageNSURLSessionTaskAdditionsCategoryClassExports<JSExport>
@end
@protocol NSHTTPCookieStorageInstanceExports<JSExport>
@property (readonly,copy) NSArray * cookies;
@property () NSHTTPCookieAcceptPolicy cookieAcceptPolicy;
-(void) deleteCookie: (NSHTTPCookie *) cookie ;
-(void) setCookie: (NSHTTPCookie *) cookie ;
-(void) removeCookiesSinceDate: (NSDate *) date ;
-(NSArray *) sortedCookiesUsingDescriptors: (NSArray *) sortOrder ;
-(NSArray *) cookiesForURL: (NSURL *) URL ;
-(void) setCookies: (NSArray *) cookies forURL: (NSURL *) URL mainDocumentURL: (NSURL *) mainDocumentURL ;
@end
@protocol NSHTTPCookieStorageClassExports<JSExport>
+(NSHTTPCookieStorage *) sharedHTTPCookieStorage;
+(NSHTTPCookieStorage *) sharedCookieStorageForGroupContainerIdentifier: (NSString *) identifier ;
@end
#pragma clang diagnostic pop