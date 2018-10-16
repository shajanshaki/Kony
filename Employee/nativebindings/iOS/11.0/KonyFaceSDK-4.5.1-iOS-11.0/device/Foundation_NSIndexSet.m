#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSIndexSet (Exports)
-(NSUInteger) jsindexInRange: (NSRange) range options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(NSUInteger arg0, BOOL * arg1) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSUInteger resultVal__;
	resultVal__ = [self indexInRange: range options: opts passingTest: predicate_ ];
	return resultVal__;
}
-(NSUInteger) jsindexPassingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(NSUInteger arg0, BOOL * arg1) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSUInteger resultVal__;
	resultVal__ = [self indexPassingTest: predicate_ ];
	return resultVal__;
}
-(id) jsinitWithIndex: (NSUInteger) value 
{
	id resultVal__;
	resultVal__ = [[self initWithIndex: value ] autorelease];
	return resultVal__;
}
-(void) jsenumerateIndexesWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(NSUInteger, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSUInteger arg0, BOOL * arg1) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateIndexesWithOptions: opts usingBlock: block_ ];
}
-(void) jsenumerateRangesInRange: (NSRange) range options: (NSEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSRange arg0, BOOL * arg1) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithRange: arg0 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateRangesInRange: range options: opts usingBlock: block_ ];
}
-(void) jsenumerateIndexesInRange: (NSRange) range options: (NSEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(NSUInteger, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSUInteger arg0, BOOL * arg1) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateIndexesInRange: range options: opts usingBlock: block_ ];
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(NSIndexSet *) jsindexesInRange: (NSRange) range options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(NSUInteger arg0, BOOL * arg1) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSIndexSet * resultVal__;
	resultVal__ = [self indexesInRange: range options: opts passingTest: predicate_ ];
	return resultVal__;
}
-(void) jsenumerateRangesWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSRange arg0, BOOL * arg1) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithRange: arg0 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateRangesWithOptions: opts usingBlock: block_ ];
}
-(void) jsenumerateRangesUsingBlock: (JSValue *) block 
{
	void (^ block_)(NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSRange arg0, BOOL * arg1) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithRange: arg0 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateRangesUsingBlock: block_ ];
}
-(NSIndexSet *) jsindexesPassingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(NSUInteger arg0, BOOL * arg1) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSIndexSet * resultVal__;
	resultVal__ = [self indexesPassingTest: predicate_ ];
	return resultVal__;
}
-(NSUInteger) jsindexWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(NSUInteger arg0, BOOL * arg1) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSUInteger resultVal__;
	resultVal__ = [self indexWithOptions: opts passingTest: predicate_ ];
	return resultVal__;
}
-(void) jsenumerateIndexesUsingBlock: (JSValue *) block 
{
	void (^ block_)(NSUInteger, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSUInteger arg0, BOOL * arg1) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateIndexesUsingBlock: block_ ];
}
-(id) jsinitWithIndexesInRange: (NSRange) range 
{
	id resultVal__;
	resultVal__ = [[self initWithIndexesInRange: range ] autorelease];
	return resultVal__;
}
-(id) jsinitWithIndexSet: (NSIndexSet *) indexSet 
{
	id resultVal__;
	resultVal__ = [[self initWithIndexSet: indexSet ] autorelease];
	return resultVal__;
}
-(NSIndexSet *) jsindexesWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(NSUInteger arg0, BOOL * arg1) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSIndexSet * resultVal__;
	resultVal__ = [self indexesWithOptions: opts passingTest: predicate_ ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSIndexSet class], @protocol(NSIndexSetInstanceExports));
	class_addProtocol([NSIndexSet class], @protocol(NSIndexSetClassExports));
	class_addProtocol([NSMutableIndexSet class], @protocol(NSMutableIndexSetInstanceExports));
	class_addProtocol([NSMutableIndexSet class], @protocol(NSMutableIndexSetClassExports));
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
void load_Foundation_NSIndexSet_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
