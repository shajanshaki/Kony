#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSHTTPCookieStorage (NSHTTPCookieStorageNSURLSessionTaskAdditionsCategoryExports)
-(void) jsgetCookiesForTask: (NSURLSessionTask *) task completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSArray * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSArray * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getCookiesForTask: task completionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSHTTPCookieStorage class], @protocol(NSHTTPCookieStorageNSURLSessionTaskAdditionsCategoryInstanceExports));
	class_addProtocol([NSHTTPCookieStorage class], @protocol(NSHTTPCookieStorageNSURLSessionTaskAdditionsCategoryClassExports));
	class_addProtocol([NSHTTPCookieStorage class], @protocol(NSHTTPCookieStorageInstanceExports));
	class_addProtocol([NSHTTPCookieStorage class], @protocol(NSHTTPCookieStorageClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSHTTPCookieAcceptPolicyAlways"] = @0UL;
	context[@"NSHTTPCookieAcceptPolicyNever"] = @1UL;
	context[@"NSHTTPCookieAcceptPolicyOnlyFromMainDocumentDomain"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSHTTPCookieManagerCookiesChangedNotification;
	if (p != NULL) context[@"NSHTTPCookieManagerCookiesChangedNotification"] = NSHTTPCookieManagerCookiesChangedNotification;
	p = (void*) &NSHTTPCookieManagerAcceptPolicyChangedNotification;
	if (p != NULL) context[@"NSHTTPCookieManagerAcceptPolicyChangedNotification"] = NSHTTPCookieManagerAcceptPolicyChangedNotification;
}
void load_Foundation_NSHTTPCookieStorage_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
