#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSUserActivity (Exports)
-(void) jsgetContinuationStreamsWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSInputStream * , NSOutputStream * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSInputStream * arg0, NSOutputStream * arg1, NSError * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getContinuationStreamsWithCompletionHandler: completionHandler_ ];
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithActivityType: (NSString *) activityType 
{
	id resultVal__;
	resultVal__ = [[self initWithActivityType: activityType ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSUserActivity class], @protocol(NSUserActivityInstanceExports));
	class_addProtocol([NSUserActivity class], @protocol(NSUserActivityClassExports));
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
	p = (void*) &NSUserActivityTypeBrowsingWeb;
	if (p != NULL) context[@"NSUserActivityTypeBrowsingWeb"] = NSUserActivityTypeBrowsingWeb;
}
void Foundation_NSUserActivityProtocols()
{
	(void)@protocol(NSUserActivityDelegate);
}
void load_Foundation_NSUserActivity_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
