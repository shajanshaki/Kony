#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSInvocationOperation (Exports)
-(id) jsinitWithInvocation: (NSInvocation *) inv 
{
	id resultVal__;
	resultVal__ = [[self initWithInvocation: inv ] autorelease];
	return resultVal__;
}
-(id) jsinitWithTarget: (id) target selector: (NSString *) sel object: (id) arg 
{
	SEL sel_ = NSSelectorFromString(sel);
	id resultVal__;
	resultVal__ = [[self initWithTarget: target selector: sel_ object: arg ] autorelease];
	return resultVal__;
}
@end
@implementation NSBlockOperation (Exports)
-(void) jsaddExecutionBlock: (JSValue *) block 
{
	void (^ block_)(void) = nil;
	if (!block.isUndefined) {
		block_ = ^void() {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self addExecutionBlock: block_ ];
}
+(id) jsblockOperationWithBlock: (JSValue *) block 
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
	resultVal__ = [self blockOperationWithBlock: block_ ];
	return resultVal__;
}
@end
@implementation NSOperation (Exports)
-(JSValue *) getJsCompletionBlock
{
	return [JSValue valueWithObject: self.completionBlock inContext: [JSContext currentContext]];
}
-(void) setJsCompletionBlock: (JSValue *) value
{
	void (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^void() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.completionBlock = value_;
}
@end
@implementation NSOperationQueue (Exports)
-(void) jsaddOperationWithBlock: (JSValue *) block 
{
	void (^ block_)(void) = nil;
	if (!block.isUndefined) {
		block_ = ^void() {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self addOperationWithBlock: block_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSInvocationOperation class], @protocol(NSInvocationOperationInstanceExports));
	class_addProtocol([NSInvocationOperation class], @protocol(NSInvocationOperationClassExports));
	class_addProtocol([NSBlockOperation class], @protocol(NSBlockOperationInstanceExports));
	class_addProtocol([NSBlockOperation class], @protocol(NSBlockOperationClassExports));
	class_addProtocol([NSOperation class], @protocol(NSOperationInstanceExports));
	class_addProtocol([NSOperation class], @protocol(NSOperationClassExports));
	class_addProtocol([NSOperationQueue class], @protocol(NSOperationQueueInstanceExports));
	class_addProtocol([NSOperationQueue class], @protocol(NSOperationQueueClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSOperationQueuePriorityVeryLow"] = @-8L;
	context[@"NSOperationQueuePriorityLow"] = @-4L;
	context[@"NSOperationQueuePriorityNormal"] = @0L;
	context[@"NSOperationQueuePriorityHigh"] = @4L;
	context[@"NSOperationQueuePriorityVeryHigh"] = @8L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSInvocationOperationCancelledException;
	if (p != NULL) context[@"NSInvocationOperationCancelledException"] = NSInvocationOperationCancelledException;
	p = (void*) &NSInvocationOperationVoidResultException;
	if (p != NULL) context[@"NSInvocationOperationVoidResultException"] = NSInvocationOperationVoidResultException;
	p = (void*) &NSOperationQueueDefaultMaxConcurrentOperationCount;
	if (p != NULL) context[@"NSOperationQueueDefaultMaxConcurrentOperationCount"] = @(NSOperationQueueDefaultMaxConcurrentOperationCount);
}
void load_Foundation_NSOperation_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
