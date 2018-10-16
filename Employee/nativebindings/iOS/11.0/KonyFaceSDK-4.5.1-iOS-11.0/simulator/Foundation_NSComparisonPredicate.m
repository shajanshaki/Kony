#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSComparisonPredicate (Exports)
-(id) jsinitWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs customSelector: (NSString *) selector 
{
	SEL selector_ = NSSelectorFromString(selector);
	id resultVal__;
	resultVal__ = [[self initWithLeftExpression: lhs rightExpression: rhs customSelector: selector_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs modifier: (NSComparisonPredicateModifier) modifier type: (NSPredicateOperatorType) type options: (NSComparisonPredicateOptions) options 
{
	id resultVal__;
	resultVal__ = [[self initWithLeftExpression: lhs rightExpression: rhs modifier: modifier type: type options: options ] autorelease];
	return resultVal__;
}
+(NSComparisonPredicate *) jspredicateWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs customSelector: (NSString *) selector 
{
	SEL selector_ = NSSelectorFromString(selector);
	NSComparisonPredicate * resultVal__;
	resultVal__ = [self predicateWithLeftExpression: lhs rightExpression: rhs customSelector: selector_ ];
	return resultVal__;
}
-(NSString *) getJsCustomSelector
{
	return NSStringFromSelector(self.customSelector);
}
@end
static void addProtocols()
{
	class_addProtocol([NSComparisonPredicate class], @protocol(NSComparisonPredicateInstanceExports));
	class_addProtocol([NSComparisonPredicate class], @protocol(NSComparisonPredicateClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSCaseInsensitivePredicateOption"] = @1UL;
	context[@"NSDiacriticInsensitivePredicateOption"] = @2UL;
	context[@"NSNormalizedPredicateOption"] = @4UL;

	context[@"NSDirectPredicateModifier"] = @0UL;
	context[@"NSAllPredicateModifier"] = @1UL;
	context[@"NSAnyPredicateModifier"] = @2UL;

	context[@"NSLessThanPredicateOperatorType"] = @0UL;
	context[@"NSLessThanOrEqualToPredicateOperatorType"] = @1UL;
	context[@"NSGreaterThanPredicateOperatorType"] = @2UL;
	context[@"NSGreaterThanOrEqualToPredicateOperatorType"] = @3UL;
	context[@"NSEqualToPredicateOperatorType"] = @4UL;
	context[@"NSNotEqualToPredicateOperatorType"] = @5UL;
	context[@"NSMatchesPredicateOperatorType"] = @6UL;
	context[@"NSLikePredicateOperatorType"] = @7UL;
	context[@"NSBeginsWithPredicateOperatorType"] = @8UL;
	context[@"NSEndsWithPredicateOperatorType"] = @9UL;
	context[@"NSInPredicateOperatorType"] = @10UL;
	context[@"NSCustomSelectorPredicateOperatorType"] = @11UL;
	context[@"NSContainsPredicateOperatorType"] = @99UL;
	context[@"NSBetweenPredicateOperatorType"] = @100UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSComparisonPredicate_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
