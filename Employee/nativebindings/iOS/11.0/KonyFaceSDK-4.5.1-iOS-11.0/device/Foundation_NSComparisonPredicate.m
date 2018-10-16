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
	context[@"NSCaseInsensitivePredicateOption"] = @1U;
	context[@"NSDiacriticInsensitivePredicateOption"] = @2U;
	context[@"NSNormalizedPredicateOption"] = @4U;

	context[@"NSDirectPredicateModifier"] = @0U;
	context[@"NSAllPredicateModifier"] = @1U;
	context[@"NSAnyPredicateModifier"] = @2U;

	context[@"NSLessThanPredicateOperatorType"] = @0U;
	context[@"NSLessThanOrEqualToPredicateOperatorType"] = @1U;
	context[@"NSGreaterThanPredicateOperatorType"] = @2U;
	context[@"NSGreaterThanOrEqualToPredicateOperatorType"] = @3U;
	context[@"NSEqualToPredicateOperatorType"] = @4U;
	context[@"NSNotEqualToPredicateOperatorType"] = @5U;
	context[@"NSMatchesPredicateOperatorType"] = @6U;
	context[@"NSLikePredicateOperatorType"] = @7U;
	context[@"NSBeginsWithPredicateOperatorType"] = @8U;
	context[@"NSEndsWithPredicateOperatorType"] = @9U;
	context[@"NSInPredicateOperatorType"] = @10U;
	context[@"NSCustomSelectorPredicateOperatorType"] = @11U;
	context[@"NSContainsPredicateOperatorType"] = @99U;
	context[@"NSBetweenPredicateOperatorType"] = @100U;

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
