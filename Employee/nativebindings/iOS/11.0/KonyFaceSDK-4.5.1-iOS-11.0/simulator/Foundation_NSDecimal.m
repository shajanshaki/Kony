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
	context[@"NSRoundPlain"] = @0UL;
	context[@"NSRoundDown"] = @1UL;
	context[@"NSRoundUp"] = @2UL;
	context[@"NSRoundBankers"] = @3UL;

	context[@"NSCalculationNoError"] = @0UL;
	context[@"NSCalculationLossOfPrecision"] = @1UL;
	context[@"NSCalculationUnderflow"] = @2UL;
	context[@"NSCalculationOverflow"] = @3UL;
	context[@"NSCalculationDivideByZero"] = @4UL;

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
