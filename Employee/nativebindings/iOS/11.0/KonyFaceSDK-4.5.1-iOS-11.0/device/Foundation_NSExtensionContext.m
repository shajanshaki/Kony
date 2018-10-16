#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSExtensionContext (Exports)
-(void) jscompleteRequestReturningItems: (NSArray *) items completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(BOOL) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(BOOL arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self completeRequestReturningItems: items completionHandler: completionHandler_ ];
}
-(void) jsopenURL: (NSURL *) URL completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(BOOL) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(BOOL arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self openURL: URL completionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSExtensionContext class], @protocol(NSExtensionContextInstanceExports));
	class_addProtocol([NSExtensionContext class], @protocol(NSExtensionContextClassExports));
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
	p = (void*) &NSExtensionHostWillEnterForegroundNotification;
	if (p != NULL) context[@"NSExtensionHostWillEnterForegroundNotification"] = NSExtensionHostWillEnterForegroundNotification;
	p = (void*) &NSExtensionHostDidEnterBackgroundNotification;
	if (p != NULL) context[@"NSExtensionHostDidEnterBackgroundNotification"] = NSExtensionHostDidEnterBackgroundNotification;
	p = (void*) &NSExtensionHostDidBecomeActiveNotification;
	if (p != NULL) context[@"NSExtensionHostDidBecomeActiveNotification"] = NSExtensionHostDidBecomeActiveNotification;
	p = (void*) &NSExtensionHostWillResignActiveNotification;
	if (p != NULL) context[@"NSExtensionHostWillResignActiveNotification"] = NSExtensionHostWillResignActiveNotification;
	p = (void*) &NSExtensionItemsAndErrorsKey;
	if (p != NULL) context[@"NSExtensionItemsAndErrorsKey"] = NSExtensionItemsAndErrorsKey;
}
void load_Foundation_NSExtensionContext_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
