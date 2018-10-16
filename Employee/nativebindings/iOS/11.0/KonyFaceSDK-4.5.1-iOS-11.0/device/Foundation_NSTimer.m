#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSTimer (Exports)
-(id) jsinitWithFireDate: (NSDate *) date interval: (NSTimeInterval) ti target: (id) t selector: (NSString *) s userInfo: (id) ui repeats: (BOOL) rep 
{
	SEL s_ = NSSelectorFromString(s);
	id resultVal__;
	resultVal__ = [[self initWithFireDate: date interval: ti target: t selector: s_ userInfo: ui repeats: rep ] autorelease];
	return resultVal__;
}
-(id) jsinitWithFireDate: (NSDate *) date interval: (NSTimeInterval) interval repeats: (BOOL) repeats block: (JSValue *) block 
{
	void (^ block_)(NSTimer * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSTimer * arg0) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithFireDate: date interval: interval repeats: repeats block: block_ ] autorelease];
	return resultVal__;
}
+(NSTimer *) jstimerWithTimeInterval: (NSTimeInterval) interval repeats: (BOOL) repeats block: (JSValue *) block 
{
	void (^ block_)(NSTimer * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSTimer * arg0) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	NSTimer * resultVal__;
	resultVal__ = [self timerWithTimeInterval: interval repeats: repeats block: block_ ];
	return resultVal__;
}
+(NSTimer *) jsscheduledTimerWithTimeInterval: (NSTimeInterval) ti target: (id) aTarget selector: (NSString *) aSelector userInfo: (id) userInfo repeats: (BOOL) yesOrNo 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	NSTimer * resultVal__;
	resultVal__ = [self scheduledTimerWithTimeInterval: ti target: aTarget selector: aSelector_ userInfo: userInfo repeats: yesOrNo ];
	return resultVal__;
}
+(NSTimer *) jsscheduledTimerWithTimeInterval: (NSTimeInterval) interval repeats: (BOOL) repeats block: (JSValue *) block 
{
	void (^ block_)(NSTimer * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSTimer * arg0) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	NSTimer * resultVal__;
	resultVal__ = [self scheduledTimerWithTimeInterval: interval repeats: repeats block: block_ ];
	return resultVal__;
}
+(NSTimer *) jstimerWithTimeInterval: (NSTimeInterval) ti target: (id) aTarget selector: (NSString *) aSelector userInfo: (id) userInfo repeats: (BOOL) yesOrNo 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	NSTimer * resultVal__;
	resultVal__ = [self timerWithTimeInterval: ti target: aTarget selector: aSelector_ userInfo: userInfo repeats: yesOrNo ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSTimer class], @protocol(NSTimerInstanceExports));
	class_addProtocol([NSTimer class], @protocol(NSTimerClassExports));
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
void load_Foundation_NSTimer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
