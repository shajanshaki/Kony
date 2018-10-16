#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSObject (NSObjectNSThreadPerformAdditionsCategoryExports)
-(void) jsperformSelector: (NSString *) aSelector onThread: (NSThread *) thr withObject: (id) arg waitUntilDone: (BOOL) wait 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelector: aSelector_ onThread: thr withObject: arg waitUntilDone: wait ];
}
-(void) jsperformSelectorOnMainThread: (NSString *) aSelector withObject: (id) arg waitUntilDone: (BOOL) wait 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelectorOnMainThread: aSelector_ withObject: arg waitUntilDone: wait ];
}
-(void) jsperformSelectorInBackground: (NSString *) aSelector withObject: (id) arg 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelectorInBackground: aSelector_ withObject: arg ];
}
-(void) jsperformSelector: (NSString *) aSelector onThread: (NSThread *) thr withObject: (id) arg waitUntilDone: (BOOL) wait modes: (NSArray *) array 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelector: aSelector_ onThread: thr withObject: arg waitUntilDone: wait modes: array ];
}
-(void) jsperformSelectorOnMainThread: (NSString *) aSelector withObject: (id) arg waitUntilDone: (BOOL) wait modes: (NSArray *) array 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelectorOnMainThread: aSelector_ withObject: arg waitUntilDone: wait modes: array ];
}
@end
@implementation NSThread (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithTarget: (id) target selector: (NSString *) selector object: (id) argument 
{
	SEL selector_ = NSSelectorFromString(selector);
	id resultVal__;
	resultVal__ = [[self initWithTarget: target selector: selector_ object: argument ] autorelease];
	return resultVal__;
}
-(id) jsinitWithBlock: (JSValue *) block 
{
	void (^ block_)(void) = nil;
	if (!block.isUndefined) {
		block_ = ^void() {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithBlock: block_ ] autorelease];
	return resultVal__;
}
+(void) jsdetachNewThreadWithBlock: (JSValue *) block 
{
	void (^ block_)(void) = nil;
	if (!block.isUndefined) {
		block_ = ^void() {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self detachNewThreadWithBlock: block_ ];
}
+(void) jsdetachNewThreadSelector: (NSString *) selector toTarget: (id) target withObject: (id) argument 
{
	SEL selector_ = NSSelectorFromString(selector);
	[self detachNewThreadSelector: selector_ toTarget: target withObject: argument ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSObject class], @protocol(NSObjectNSThreadPerformAdditionsCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSThreadPerformAdditionsCategoryClassExports));
	class_addProtocol([NSThread class], @protocol(NSThreadInstanceExports));
	class_addProtocol([NSThread class], @protocol(NSThreadClassExports));
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
	p = (void*) &NSThreadWillExitNotification;
	if (p != NULL) context[@"NSThreadWillExitNotification"] = NSThreadWillExitNotification;
	p = (void*) &NSDidBecomeSingleThreadedNotification;
	if (p != NULL) context[@"NSDidBecomeSingleThreadedNotification"] = NSDidBecomeSingleThreadedNotification;
	p = (void*) &NSWillBecomeMultiThreadedNotification;
	if (p != NULL) context[@"NSWillBecomeMultiThreadedNotification"] = NSWillBecomeMultiThreadedNotification;
}
void load_Foundation_NSThread_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
