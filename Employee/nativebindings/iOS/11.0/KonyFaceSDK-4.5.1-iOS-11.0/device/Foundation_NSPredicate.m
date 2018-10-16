#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSPredicate (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
+(NSPredicate *) jspredicateWithBlock: (JSValue *) block 
{
	BOOL (^ block_)(id , NSDictionary * ) = nil;
	if (!block.isUndefined) {
		block_ = ^BOOL(id arg0, NSDictionary * arg1) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, block, self, parameters);
			return [result toInt32];
		};
	}
	NSPredicate * resultVal__;
	resultVal__ = [self predicateWithBlock: block_ ];
	return resultVal__;
}
+(NSPredicate *) jspredicateWithFormat: (NSString *) predicateFormat arguments: (NSArray *) args 
{
	NSPredicate * resultVal__;
	if ([args count] == 0) resultVal__ = [self predicateWithFormat: predicateFormat ];
	else if ([args count] == 1) resultVal__ = [self predicateWithFormat: predicateFormat , args[0]];
	else if ([args count] == 2) resultVal__ = [self predicateWithFormat: predicateFormat , args[0], args[1]];
	else if ([args count] == 3) resultVal__ = [self predicateWithFormat: predicateFormat , args[0], args[1], args[2]];
	else if ([args count] == 4) resultVal__ = [self predicateWithFormat: predicateFormat , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) resultVal__ = [self predicateWithFormat: predicateFormat , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) resultVal__ = [self predicateWithFormat: predicateFormat , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) resultVal__ = [self predicateWithFormat: predicateFormat , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) resultVal__ = [self predicateWithFormat: predicateFormat , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) resultVal__ = [self predicateWithFormat: predicateFormat , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) resultVal__ = [self predicateWithFormat: predicateFormat , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSArray class], @protocol(NSArrayNSPredicateSupportCategoryInstanceExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSPredicateSupportCategoryClassExports));
	class_addProtocol([NSMutableOrderedSet class], @protocol(NSMutableOrderedSetNSPredicateSupportCategoryInstanceExports));
	class_addProtocol([NSMutableOrderedSet class], @protocol(NSMutableOrderedSetNSPredicateSupportCategoryClassExports));
	class_addProtocol([NSPredicate class], @protocol(NSPredicateInstanceExports));
	class_addProtocol([NSPredicate class], @protocol(NSPredicateClassExports));
	class_addProtocol([NSMutableArray class], @protocol(NSMutableArrayNSPredicateSupportCategoryInstanceExports));
	class_addProtocol([NSMutableArray class], @protocol(NSMutableArrayNSPredicateSupportCategoryClassExports));
	class_addProtocol([NSMutableSet class], @protocol(NSMutableSetNSPredicateSupportCategoryInstanceExports));
	class_addProtocol([NSMutableSet class], @protocol(NSMutableSetNSPredicateSupportCategoryClassExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSPredicateSupportCategoryInstanceExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSPredicateSupportCategoryClassExports));
	class_addProtocol([NSOrderedSet class], @protocol(NSOrderedSetNSPredicateSupportCategoryInstanceExports));
	class_addProtocol([NSOrderedSet class], @protocol(NSOrderedSetNSPredicateSupportCategoryClassExports));
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
void load_Foundation_NSPredicate_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
