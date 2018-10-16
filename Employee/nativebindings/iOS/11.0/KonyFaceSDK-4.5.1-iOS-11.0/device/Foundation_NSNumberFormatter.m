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
	context[@"NSNumberFormatterBehaviorDefault"] = @0U;
	context[@"NSNumberFormatterBehavior10_4"] = @1040U;

	context[@"NSNumberFormatterNoStyle"] = @0U;
	context[@"NSNumberFormatterDecimalStyle"] = @1U;
	context[@"NSNumberFormatterCurrencyStyle"] = @2U;
	context[@"NSNumberFormatterPercentStyle"] = @3U;
	context[@"NSNumberFormatterScientificStyle"] = @4U;
	context[@"NSNumberFormatterSpellOutStyle"] = @5U;
	context[@"NSNumberFormatterOrdinalStyle"] = @6U;
	context[@"NSNumberFormatterCurrencyISOCodeStyle"] = @8U;
	context[@"NSNumberFormatterCurrencyPluralStyle"] = @9U;
	context[@"NSNumberFormatterCurrencyAccountingStyle"] = @10U;

	context[@"NSNumberFormatterPadBeforePrefix"] = @0U;
	context[@"NSNumberFormatterPadAfterPrefix"] = @1U;
	context[@"NSNumberFormatterPadBeforeSuffix"] = @2U;
	context[@"NSNumberFormatterPadAfterSuffix"] = @3U;

	context[@"NSNumberFormatterRoundCeiling"] = @0U;
	context[@"NSNumberFormatterRoundFloor"] = @1U;
	context[@"NSNumberFormatterRoundDown"] = @2U;
	context[@"NSNumberFormatterRoundUp"] = @3U;
	context[@"NSNumberFormatterRoundHalfEven"] = @4U;
	context[@"NSNumberFormatterRoundHalfDown"] = @5U;
	context[@"NSNumberFormatterRoundHalfUp"] = @6U;

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
