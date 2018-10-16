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
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSRoundPlain"] = @0U;
	context[@"NSRoundDown"] = @1U;
	context[@"NSRoundUp"] = @2U;
	context[@"NSRoundBankers"] = @3U;

	context[@"NSCalculationNoError"] = @0U;
	context[@"NSCalculationLossOfPrecision"] = @1U;
	context[@"NSCalculationUnderflow"] = @2U;
	context[@"NSCalculationOverflow"] = @3U;
	context[@"NSCalculationDivideByZero"] = @4U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSDecimal_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
