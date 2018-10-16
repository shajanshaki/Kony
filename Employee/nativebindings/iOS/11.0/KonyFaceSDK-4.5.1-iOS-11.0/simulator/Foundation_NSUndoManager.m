#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSUndoManager (Exports)
-(void) jsregisterUndoWithTarget: (id) target selector: (NSString *) selector object: (id) anObject 
{
	SEL selector_ = NSSelectorFromString(selector);
	[self registerUndoWithTarget: target selector: selector_ object: anObject ];
}
-(void) jsregisterUndoWithTarget: (id) target handler: (JSValue *) undoHandler 
{
	void (^ undoHandler_)(id ) = nil;
	if (!undoHandler.isUndefined) {
		undoHandler_ = ^void(id arg0) {
			JSContext* __jsContext = undoHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, undoHandler, self, parameters);
		};
	}
	[self registerUndoWithTarget: target handler: undoHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSUndoManager class], @protocol(NSUndoManagerInstanceExports));
	class_addProtocol([NSUndoManager class], @protocol(NSUndoManagerClassExports));
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
	p = (void*) &NSUndoManagerCheckpointNotification;
	if (p != NULL) context[@"NSUndoManagerCheckpointNotification"] = NSUndoManagerCheckpointNotification;
	p = (void*) &NSUndoManagerDidCloseUndoGroupNotification;
	if (p != NULL) context[@"NSUndoManagerDidCloseUndoGroupNotification"] = NSUndoManagerDidCloseUndoGroupNotification;
	p = (void*) &NSUndoManagerDidUndoChangeNotification;
	if (p != NULL) context[@"NSUndoManagerDidUndoChangeNotification"] = NSUndoManagerDidUndoChangeNotification;
	p = (void*) &NSUndoManagerDidOpenUndoGroupNotification;
	if (p != NULL) context[@"NSUndoManagerDidOpenUndoGroupNotification"] = NSUndoManagerDidOpenUndoGroupNotification;
	p = (void*) &NSUndoManagerWillUndoChangeNotification;
	if (p != NULL) context[@"NSUndoManagerWillUndoChangeNotification"] = NSUndoManagerWillUndoChangeNotification;
	p = (void*) &NSUndoManagerWillRedoChangeNotification;
	if (p != NULL) context[@"NSUndoManagerWillRedoChangeNotification"] = NSUndoManagerWillRedoChangeNotification;
	p = (void*) &NSUndoCloseGroupingRunLoopOrdering;
	if (p != NULL) context[@"NSUndoCloseGroupingRunLoopOrdering"] = @(NSUndoCloseGroupingRunLoopOrdering);
	p = (void*) &NSUndoManagerDidRedoChangeNotification;
	if (p != NULL) context[@"NSUndoManagerDidRedoChangeNotification"] = NSUndoManagerDidRedoChangeNotification;
	p = (void*) &NSUndoManagerWillCloseUndoGroupNotification;
	if (p != NULL) context[@"NSUndoManagerWillCloseUndoGroupNotification"] = NSUndoManagerWillCloseUndoGroupNotification;
	p = (void*) &NSUndoManagerGroupIsDiscardableKey;
	if (p != NULL) context[@"NSUndoManagerGroupIsDiscardableKey"] = NSUndoManagerGroupIsDiscardableKey;
}
void load_Foundation_NSUndoManager_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
