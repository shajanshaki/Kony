#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSRunLoop (NSRunLoopNSOrderedPerformCategoryExports)
-(void) jsperformSelector: (NSString *) aSelector target: (id) target argument: (id) arg order: (NSUInteger) order modes: (NSArray *) modes 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelector: aSelector_ target: target argument: arg order: order modes: modes ];
}
-(void) jscancelPerformSelector: (NSString *) aSelector target: (id) target argument: (id) arg 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self cancelPerformSelector: aSelector_ target: target argument: arg ];
}
@end
@implementation NSRunLoop (NSRunLoopNSRunLoopConveniencesCategoryExports)
-(void) jsperformBlock: (JSValue *) block 
{
	void (^ block_)(void) = nil;
	if (!block.isUndefined) {
		block_ = ^void() {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self performBlock: block_ ];
}
-(void) jsperformInModes: (NSArray *) modes block: (JSValue *) block 
{
	void (^ block_)(void) = nil;
	if (!block.isUndefined) {
		block_ = ^void() {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self performInModes: modes block: block_ ];
}
@end
@implementation NSObject (NSObjectNSDelayedPerformingCategoryExports)
-(void) jsperformSelector: (NSString *) aSelector withObject: (id) anArgument afterDelay: (NSTimeInterval) delay 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelector: aSelector_ withObject: anArgument afterDelay: delay ];
}
-(void) jsperformSelector: (NSString *) aSelector withObject: (id) anArgument afterDelay: (NSTimeInterval) delay inModes: (NSArray *) modes 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelector: aSelector_ withObject: anArgument afterDelay: delay inModes: modes ];
}
+(void) jscancelPreviousPerformRequestsWithTarget: (id) aTarget selector: (NSString *) aSelector object: (id) anArgument 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self cancelPreviousPerformRequestsWithTarget: aTarget selector: aSelector_ object: anArgument ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopNSOrderedPerformCategoryInstanceExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopNSOrderedPerformCategoryClassExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopInstanceExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopClassExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopNSRunLoopConveniencesCategoryInstanceExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopNSRunLoopConveniencesCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSDelayedPerformingCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSDelayedPerformingCategoryClassExports));
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
	p = (void*) &NSDefaultRunLoopMode;
	if (p != NULL) context[@"NSDefaultRunLoopMode"] = NSDefaultRunLoopMode;
	p = (void*) &NSRunLoopCommonModes;
	if (p != NULL) context[@"NSRunLoopCommonModes"] = NSRunLoopCommonModes;
}
void load_Foundation_NSRunLoop_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
