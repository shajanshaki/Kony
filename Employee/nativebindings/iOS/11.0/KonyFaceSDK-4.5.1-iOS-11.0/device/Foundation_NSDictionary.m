#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSMutableDictionary (NSMutableDictionaryNSMutableDictionaryCreationCategoryExports)
-(NSMutableDictionary *) jsinitWithContentsOfURL: (NSURL *) url 
{
	NSMutableDictionary * resultVal__;
	resultVal__ = [[self initWithContentsOfURL: url ] autorelease];
	return resultVal__;
}
-(NSMutableDictionary *) jsinitWithContentsOfFile: (NSString *) path 
{
	NSMutableDictionary * resultVal__;
	resultVal__ = [[self initWithContentsOfFile: path ] autorelease];
	return resultVal__;
}
@end
@implementation NSDictionary (NSDictionaryNSDeprecatedCategoryExports)
-(NSDictionary *) jsinitWithContentsOfURL: (NSURL *) url 
{
	NSDictionary * resultVal__;
	resultVal__ = [[self initWithContentsOfURL: url ] autorelease];
	return resultVal__;
}
-(NSDictionary *) jsinitWithContentsOfFile: (NSString *) path 
{
	NSDictionary * resultVal__;
	resultVal__ = [[self initWithContentsOfFile: path ] autorelease];
	return resultVal__;
}
@end
@implementation NSDictionary (NSDictionaryNSDictionaryCreationCategoryExports)
-(id) jsinitWithDictionary: (NSDictionary *) otherDictionary copyItems: (BOOL) flag 
{
	id resultVal__;
	resultVal__ = [[self initWithDictionary: otherDictionary copyItems: flag ] autorelease];
	return resultVal__;
}
-(id) jsinitWithDictionary: (NSDictionary *) otherDictionary 
{
	id resultVal__;
	resultVal__ = [[self initWithDictionary: otherDictionary ] autorelease];
	return resultVal__;
}
-(NSDictionary *) jsinitWithContentsOfURL: (NSURL *) url error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSDictionary * resultVal__;
	resultVal__ = [[self initWithContentsOfURL: url error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithObjects: (NSArray *) objects forKeys: (NSArray *) keys 
{
	id resultVal__;
	resultVal__ = [[self initWithObjects: objects forKeys: keys ] autorelease];
	return resultVal__;
}
-(id) jsinitWithObjectsAndKeys: (id) firstObject arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [[self initWithObjectsAndKeys: firstObject , nil] autorelease];
	else if ([args count] == 1) resultVal__ = [[self initWithObjectsAndKeys: firstObject , args[0], nil] autorelease];
	else if ([args count] == 2) resultVal__ = [[self initWithObjectsAndKeys: firstObject , args[0], args[1], nil] autorelease];
	else if ([args count] == 3) resultVal__ = [[self initWithObjectsAndKeys: firstObject , args[0], args[1], args[2], nil] autorelease];
	else if ([args count] == 4) resultVal__ = [[self initWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], nil] autorelease];
	else if ([args count] == 5) resultVal__ = [[self initWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], nil] autorelease];
	else if ([args count] == 6) resultVal__ = [[self initWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], args[5], nil] autorelease];
	else if ([args count] == 7) resultVal__ = [[self initWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], args[5], args[6], nil] autorelease];
	else if ([args count] == 8) resultVal__ = [[self initWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], nil] autorelease];
	else if ([args count] == 9) resultVal__ = [[self initWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], nil] autorelease];
	else if ([args count] >= 10) resultVal__ = [[self initWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], nil] autorelease];
	return resultVal__;
}
+(NSDictionary *) jsdictionaryWithContentsOfURL: (NSURL *) url error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSDictionary * resultVal__;
	resultVal__ = [self dictionaryWithContentsOfURL: url error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(id) jsdictionaryWithObjectsAndKeys: (id) firstObject arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , nil];
	else if ([args count] == 1) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , args[0], nil];
	else if ([args count] == 2) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , args[0], args[1], nil];
	else if ([args count] == 3) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , args[0], args[1], args[2], nil];
	else if ([args count] == 4) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], nil];
	else if ([args count] == 5) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], nil];
	else if ([args count] == 6) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], args[5], nil];
	else if ([args count] == 7) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], args[5], args[6], nil];
	else if ([args count] == 8) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], nil];
	else if ([args count] == 9) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], nil];
	else if ([args count] >= 10) resultVal__ = [self dictionaryWithObjectsAndKeys: firstObject , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], nil];
	return resultVal__;
}
@end
@implementation NSDictionary (NSDictionaryNSExtendedDictionaryCategoryExports)
-(void) jsenumerateKeysAndObjectsWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(id , id , BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(id arg0, id arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateKeysAndObjectsWithOptions: opts usingBlock: block_ ];
}
-(NSArray *) jskeysSortedByValueWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr 
{
	NSComparisonResult (^ cmptr_)(id , id ) = nil;
	if (!cmptr.isUndefined) {
		cmptr_ = ^NSComparisonResult(id arg0, id arg1) {
			JSContext* __jsContext = cmptr.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cmptr, self, parameters);
			return [result toInt32];
		};
	}
	NSArray * resultVal__;
	resultVal__ = [self keysSortedByValueWithOptions: opts usingComparator: cmptr_ ];
	return resultVal__;
}
-(void) jsenumerateKeysAndObjectsUsingBlock: (JSValue *) block 
{
	void (^ block_)(id , id , BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(id arg0, id arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateKeysAndObjectsUsingBlock: block_ ];
}
-(NSSet *) jskeysOfEntriesWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(id , id , BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(id arg0, id arg1, BOOL * arg2) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSSet * resultVal__;
	resultVal__ = [self keysOfEntriesWithOptions: opts passingTest: predicate_ ];
	return resultVal__;
}
-(NSArray *) jskeysSortedByValueUsingComparator: (JSValue *) cmptr 
{
	NSComparisonResult (^ cmptr_)(id , id ) = nil;
	if (!cmptr.isUndefined) {
		cmptr_ = ^NSComparisonResult(id arg0, id arg1) {
			JSContext* __jsContext = cmptr.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cmptr, self, parameters);
			return [result toInt32];
		};
	}
	NSArray * resultVal__;
	resultVal__ = [self keysSortedByValueUsingComparator: cmptr_ ];
	return resultVal__;
}
-(NSArray *) jskeysSortedByValueUsingSelector: (NSString *) comparator 
{
	SEL comparator_ = NSSelectorFromString(comparator);
	NSArray * resultVal__;
	resultVal__ = [self keysSortedByValueUsingSelector: comparator_ ];
	return resultVal__;
}
-(BOOL) jswriteToURL: (NSURL *) url error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self writeToURL: url error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(NSSet *) jskeysOfEntriesPassingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(id , id , BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(id arg0, id arg1, BOOL * arg2) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSSet * resultVal__;
	resultVal__ = [self keysOfEntriesPassingTest: predicate_ ];
	return resultVal__;
}
@end
@implementation NSDictionary (Exports)
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
@implementation NSMutableDictionary (Exports)
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
static void addProtocols()
{
	class_addProtocol([NSMutableDictionary class], @protocol(NSMutableDictionaryNSMutableDictionaryCreationCategoryInstanceExports));
	class_addProtocol([NSMutableDictionary class], @protocol(NSMutableDictionaryNSMutableDictionaryCreationCategoryClassExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSDeprecatedCategoryInstanceExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSDeprecatedCategoryClassExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSSharedKeySetDictionaryCategoryInstanceExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSSharedKeySetDictionaryCategoryClassExports));
	class_addProtocol([NSMutableDictionary class], @protocol(NSMutableDictionaryNSExtendedMutableDictionaryCategoryInstanceExports));
	class_addProtocol([NSMutableDictionary class], @protocol(NSMutableDictionaryNSExtendedMutableDictionaryCategoryClassExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSGenericFastEnumeraitonCategoryInstanceExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSGenericFastEnumeraitonCategoryClassExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSDictionaryCreationCategoryInstanceExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSDictionaryCreationCategoryClassExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSExtendedDictionaryCategoryInstanceExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSExtendedDictionaryCategoryClassExports));
	class_addProtocol([NSMutableDictionary class], @protocol(NSMutableDictionaryNSSharedKeySetDictionaryCategoryInstanceExports));
	class_addProtocol([NSMutableDictionary class], @protocol(NSMutableDictionaryNSSharedKeySetDictionaryCategoryClassExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryInstanceExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryClassExports));
	class_addProtocol([NSMutableDictionary class], @protocol(NSMutableDictionaryInstanceExports));
	class_addProtocol([NSMutableDictionary class], @protocol(NSMutableDictionaryClassExports));
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
void load_Foundation_NSDictionary_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
