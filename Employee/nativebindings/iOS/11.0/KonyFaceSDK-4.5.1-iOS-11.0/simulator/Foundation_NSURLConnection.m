#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLConnection (Exports)
-(id) jsinitWithRequest: (NSURLRequest *) request delegate: (id) delegate startImmediately: (BOOL) startImmediately 
{
	id resultVal__;
	resultVal__ = [[self initWithRequest: request delegate: delegate startImmediately: startImmediately ] autorelease];
	return resultVal__;
}
-(id) jsinitWithRequest: (NSURLRequest *) request delegate: (id) delegate 
{
	id resultVal__;
	resultVal__ = [[self initWithRequest: request delegate: delegate ] autorelease];
	return resultVal__;
}
@end
@implementation NSURLConnection (NSURLConnectionNSURLConnectionQueuedLoadingCategoryExports)
+(void) jssendAsynchronousRequest: (NSURLRequest *) request queue: (NSOperationQueue *) queue completionHandler: (JSValue *) handler 
{
	void (^ handler_)(NSURLResponse * , NSData * , NSError * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(NSURLResponse * arg0, NSData * arg1, NSError * arg2) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self sendAsynchronousRequest: request queue: queue completionHandler: handler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSURLConnection class], @protocol(NSURLConnectionInstanceExports));
	class_addProtocol([NSURLConnection class], @protocol(NSURLConnectionClassExports));
	class_addProtocol([NSURLConnection class], @protocol(NSURLConnectionNSURLConnectionQueuedLoadingCategoryInstanceExports));
	class_addProtocol([NSURLConnection class], @protocol(NSURLConnectionNSURLConnectionQueuedLoadingCategoryClassExports));
	class_addProtocol([NSURLConnection class], @protocol(NSURLConnectionNSURLConnectionSynchronousLoadingCategoryInstanceExports));
	class_addProtocol([NSURLConnection class], @protocol(NSURLConnectionNSURLConnectionSynchronousLoadingCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Foundation_NSURLConnectionProtocols()
{
	(void)@protocol(NSURLConnectionDownloadDelegate);
	(void)@protocol(NSURLConnectionDataDelegate);
	(void)@protocol(NSURLConnectionDelegate);
}
void load_Foundation_NSURLConnection_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
