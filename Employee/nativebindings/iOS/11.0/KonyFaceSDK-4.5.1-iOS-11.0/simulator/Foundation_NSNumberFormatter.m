#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([NSNumberFormatter class], @protocol(NSNumberFormatterInstanceExports));
	class_addProtocol([NSNumberFormatter class], @protocol(NSNumberFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSNumberFormatterBehaviorDefault"] = @0UL;
	context[@"NSNumberFormatterBehavior10_4"] = @1040UL;

	context[@"NSNumberFormatterNoStyle"] = @0UL;
	context[@"NSNumberFormatterDecimalStyle"] = @1UL;
	context[@"NSNumberFormatterCurrencyStyle"] = @2UL;
	context[@"NSNumberFormatterPercentStyle"] = @3UL;
	context[@"NSNumberFormatterScientificStyle"] = @4UL;
	context[@"NSNumberFormatterSpellOutStyle"] = @5UL;
	context[@"NSNumberFormatterOrdinalStyle"] = @6UL;
	context[@"NSNumberFormatterCurrencyISOCodeStyle"] = @8UL;
	context[@"NSNumberFormatterCurrencyPluralStyle"] = @9UL;
	context[@"NSNumberFormatterCurrencyAccountingStyle"] = @10UL;

	context[@"NSNumberFormatterPadBeforePrefix"] = @0UL;
	context[@"NSNumberFormatterPadAfterPrefix"] = @1UL;
	context[@"NSNumberFormatterPadBeforeSuffix"] = @2UL;
	context[@"NSNumberFormatterPadAfterSuffix"] = @3UL;

	context[@"NSNumberFormatterRoundCeiling"] = @0UL;
	context[@"NSNumberFormatterRoundFloor"] = @1UL;
	context[@"NSNumberFormatterRoundDown"] = @2UL;
	context[@"NSNumberFormatterRoundUp"] = @3UL;
	context[@"NSNumberFormatterRoundHalfEven"] = @4UL;
	context[@"NSNumberFormatterRoundHalfDown"] = @5UL;
	context[@"NSNumberFormatterRoundHalfUp"] = @6UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSNumberFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
