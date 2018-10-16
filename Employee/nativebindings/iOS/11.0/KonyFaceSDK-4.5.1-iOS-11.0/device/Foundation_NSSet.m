#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSSet (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSCountedSet (Exports)
-(id) jsinitWithSet: (NSSet *) set 
{
	id resultVal__;
	resultVal__ = [[self initWithSet: set ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCapacity: (NSUInteger) numItems 
{
	id resultVal__;
	resultVal__ = [[self initWithCapacity: numItems ] autorelease];
	return resultVal__;
}
-(id) jsinitWithArray: (NSArray *) array 
{
	id resultVal__;
	resultVal__ = [[self initWithArray: array ] autorelease];
	return resultVal__;
}
@end
@implementation NSSet (NSSetNSExtendedSetCategoryExports)
-(NSSet *) jsobjectsPassingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(id , BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(id arg0, BOOL * arg1) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSSet * resultVal__;
	resultVal__ = [self objectsPassingTest: predicate_ ];
	return resultVal__;
}
-(NSSet *) jsobjectsWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(id , BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(id arg0, BOOL * arg1) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSSet * resultVal__;
	resultVal__ = [self objectsWithOptions: opts passingTest: predicate_ ];
	return resultVal__;
}
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self makeObjectsPerformSelector: aSelector_ ];
}
-(void) jsenumerateObjectsWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(id , BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(id arg0, BOOL * arg1) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateObjectsWithOptions: opts usingBlock: block_ ];
}
-(void) jsenumerateObjectsUsingBlock: (JSValue *) block 
{
	void (^ block_)(id , BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(id arg0, BOOL * arg1) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateObjectsUsingBlock: block_ ];
}
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector withObject: (id) argument 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self makeObjectsPerformSelector: aSelector_ withObject: argument ];
}
@end
@implementation NSMutableSet (Exports)
-(id) jsinitWithCapacity: (NSUInteger) numItems 
{
	id resultVal__;
	resultVal__ = [[self initWithCapacity: numItems ] autorelease];
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSSet (NSSetNSSetCreationCategoryExports)
-(id) jsinitWithObjects: (id) firstObj arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [[self initWithObjects: firstObj , nil] autorelease];
	else if ([args count] == 1) resultVal__ = [[self initWithObjects: firstObj , args[0], nil] autorelease];
	else if ([args count] == 2) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], nil] autorelease];
	else if ([args count] == 3) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], nil] autorelease];
	else if ([args count] == 4) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], nil] autorelease];
	else if ([args count] == 5) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], nil] autorelease];
	else if ([args count] == 6) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], nil] autorelease];
	else if ([args count] == 7) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], nil] autorelease];
	else if ([args count] == 8) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], nil] autorelease];
	else if ([args count] == 9) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], nil] autorelease];
	else if ([args count] >= 10) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], nil] autorelease];
	return resultVal__;
}
-(id) jsinitWithSet: (NSSet *) set 
{
	id resultVal__;
	resultVal__ = [[self initWithSet: set ] autorelease];
	return resultVal__;
}
-(id) jsinitWithArray: (NSArray *) array 
{
	id resultVal__;
	resultVal__ = [[self initWithArray: array ] autorelease];
	return resultVal__;
}
-(id) jsinitWithSet: (NSSet *) set copyItems: (BOOL) flag 
{
	id resultVal__;
	resultVal__ = [[self initWithSet: set copyItems: flag ] autorelease];
	return resultVal__;
}
+(id) jssetWithObjects: (id) firstObj arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [self setWithObjects: firstObj , nil];
	else if ([args count] == 1) resultVal__ = [self setWithObjects: firstObj , args[0], nil];
	else if ([args count] == 2) resultVal__ = [self setWithObjects: firstObj , args[0], args[1], nil];
	else if ([args count] == 3) resultVal__ = [self setWithObjects: firstObj , args[0], args[1], args[2], nil];
	else if ([args count] == 4) resultVal__ = [self setWithObjects: firstObj , args[0], args[1], args[2], args[3], nil];
	else if ([args count] == 5) resultVal__ = [self setWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], nil];
	else if ([args count] == 6) resultVal__ = [self setWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], nil];
	else if ([args count] == 7) resultVal__ = [self setWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], nil];
	else if ([args count] == 8) resultVal__ = [self setWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], nil];
	else if ([args count] == 9) resultVal__ = [self setWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], nil];
	else if ([args count] >= 10) resultVal__ = [self setWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], nil];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSSet class], @protocol(NSSetInstanceExports));
	class_addProtocol([NSSet class], @protocol(NSSetClassExports));
	class_addProtocol([NSMutableSet class], @protocol(NSMutableSetNSExtendedMutableSetCategoryInstanceExports));
	class_addProtocol([NSMutableSet class], @protocol(NSMutableSetNSExtendedMutableSetCategoryClassExports));
	class_addProtocol([NSCountedSet class], @protocol(NSCountedSetInstanceExports));
	class_addProtocol([NSCountedSet class], @protocol(NSCountedSetClassExports));
	class_addProtocol([NSMutableSet class], @protocol(NSMutableSetNSMutableSetCreationCategoryInstanceExports));
	class_addProtocol([NSMutableSet class], @protocol(NSMutableSetNSMutableSetCreationCategoryClassExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSExtendedSetCategoryInstanceExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSExtendedSetCategoryClassExports));
	class_addProtocol([NSMutableSet class], @protocol(NSMutableSetInstanceExports));
	class_addProtocol([NSMutableSet class], @protocol(NSMutableSetClassExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSSetCreationCategoryInstanceExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSSetCreationCategoryClassExports));
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
void load_Foundation_NSSet_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
