#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSCompoundPredicate (Exports)
-(id) jsinitWithType: (NSCompoundPredicateType) type subpredicates: (NSArray *) subpredicates 
{
	id resultVal__;
	resultVal__ = [[self initWithType: type subpredicates: subpredicates ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSCompoundPredicate class], @protocol(NSCompoundPredicateInstanceExports));
	class_addProtocol([NSCompoundPredicate class], @protocol(NSCompoundPredicateClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSNotPredicateType"] = @0U;
	context[@"NSAndPredicateType"] = @1U;
	context[@"NSOrPredicateType"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSCompoundPredicate_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
