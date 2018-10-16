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
	context[@"CFNumberFormatterGetStyle"] = ^CFNumberFormatterStyle(id arg0) {
		return CFNumberFormatterGetStyle(arg0);
	};
	context[@"CFNumberFormatterCreateStringWithNumber"] = ^id(id arg0, id arg1, id arg2) {
		return CFNumberFormatterCreateStringWithNumber(arg0, arg1, arg2);
	};
	context[@"CFNumberFormatterSetFormat"] = ^void(id arg0, id arg1) {
		CFNumberFormatterSetFormat(arg0, arg1);
	};
	context[@"CFNumberFormatterGetTypeID"] = ^CFTypeID() {
		return CFNumberFormatterGetTypeID();
	};
	context[@"CFNumberFormatterCopyProperty"] = ^id(id arg0, id arg1) {
		return CFNumberFormatterCopyProperty(arg0, arg1);
	};
	context[@"CFNumberFormatterGetLocale"] = ^id(id arg0) {
		return CFNumberFormatterGetLocale(arg0);
	};
	context[@"CFNumberFormatterCreate"] = ^id(id arg0, id arg1, CFNumberFormatterStyle arg2) {
		return CFNumberFormatterCreate(arg0, arg1, arg2);
	};
	context[@"CFNumberFormatterSetProperty"] = ^void(id arg0, id arg1, id arg2) {
		CFNumberFormatterSetProperty(arg0, arg1, arg2);
	};
	context[@"CFNumberFormatterGetFormat"] = ^id(id arg0) {
		return CFNumberFormatterGetFormat(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFNumberFormatterNoStyle"] = @0L;
	context[@"kCFNumberFormatterDecimalStyle"] = @1L;
	context[@"kCFNumberFormatterCurrencyStyle"] = @2L;
	context[@"kCFNumberFormatterPercentStyle"] = @3L;
	context[@"kCFNumberFormatterScientificStyle"] = @4L;
	context[@"kCFNumberFormatterSpellOutStyle"] = @5L;
	context[@"kCFNumberFormatterOrdinalStyle"] = @6L;
	context[@"kCFNumberFormatterCurrencyISOCodeStyle"] = @8L;
	context[@"kCFNumberFormatterCurrencyPluralStyle"] = @9L;
	context[@"kCFNumberFormatterCurrencyAccountingStyle"] = @10L;

	context[@"kCFNumberFormatterParseIntegersOnly"] = @1UL;

	context[@"kCFNumberFormatterRoundCeiling"] = @0L;
	context[@"kCFNumberFormatterRoundFloor"] = @1L;
	context[@"kCFNumberFormatterRoundDown"] = @2L;
	context[@"kCFNumberFormatterRoundUp"] = @3L;
	context[@"kCFNumberFormatterRoundHalfEven"] = @4L;
	context[@"kCFNumberFormatterRoundHalfDown"] = @5L;
	context[@"kCFNumberFormatterRoundHalfUp"] = @6L;

	context[@"kCFNumberFormatterPadBeforePrefix"] = @0L;
	context[@"kCFNumberFormatterPadAfterPrefix"] = @1L;
	context[@"kCFNumberFormatterPadBeforeSuffix"] = @2L;
	context[@"kCFNumberFormatterPadAfterSuffix"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFNumberFormatterUseGroupingSeparator;
	if (p != NULL) context[@"kCFNumberFormatterUseGroupingSeparator"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterUseGroupingSeparator inContext: context];
	p = (void*) &kCFNumberFormatterNaNSymbol;
	if (p != NULL) context[@"kCFNumberFormatterNaNSymbol"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterNaNSymbol inContext: context];
	p = (void*) &kCFNumberFormatterSecondaryGroupingSize;
	if (p != NULL) context[@"kCFNumberFormatterSecondaryGroupingSize"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterSecondaryGroupingSize inContext: context];
	p = (void*) &kCFNumberFormatterCurrencyGroupingSeparator;
	if (p != NULL) context[@"kCFNumberFormatterCurrencyGroupingSeparator"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterCurrencyGroupingSeparator inContext: context];
	p = (void*) &kCFNumberFormatterMinFractionDigits;
	if (p != NULL) context[@"kCFNumberFormatterMinFractionDigits"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterMinFractionDigits inContext: context];
	p = (void*) &kCFNumberFormatterMaxFractionDigits;
	if (p != NULL) context[@"kCFNumberFormatterMaxFractionDigits"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterMaxFractionDigits inContext: context];
	p = (void*) &kCFNumberFormatterZeroSymbol;
	if (p != NULL) context[@"kCFNumberFormatterZeroSymbol"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterZeroSymbol inContext: context];
	p = (void*) &kCFNumberFormatterCurrencySymbol;
	if (p != NULL) context[@"kCFNumberFormatterCurrencySymbol"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterCurrencySymbol inContext: context];
	p = (void*) &kCFNumberFormatterInfinitySymbol;
	if (p != NULL) context[@"kCFNumberFormatterInfinitySymbol"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterInfinitySymbol inContext: context];
	p = (void*) &kCFNumberFormatterGroupingSize;
	if (p != NULL) context[@"kCFNumberFormatterGroupingSize"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterGroupingSize inContext: context];
	p = (void*) &kCFNumberFormatterUseSignificantDigits;
	if (p != NULL) context[@"kCFNumberFormatterUseSignificantDigits"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterUseSignificantDigits inContext: context];
	p = (void*) &kCFNumberFormatterPositivePrefix;
	if (p != NULL) context[@"kCFNumberFormatterPositivePrefix"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterPositivePrefix inContext: context];
	p = (void*) &kCFNumberFormatterDecimalSeparator;
	if (p != NULL) context[@"kCFNumberFormatterDecimalSeparator"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterDecimalSeparator inContext: context];
	p = (void*) &kCFNumberFormatterPercentSymbol;
	if (p != NULL) context[@"kCFNumberFormatterPercentSymbol"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterPercentSymbol inContext: context];
	p = (void*) &kCFNumberFormatterPaddingCharacter;
	if (p != NULL) context[@"kCFNumberFormatterPaddingCharacter"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterPaddingCharacter inContext: context];
	p = (void*) &kCFNumberFormatterExponentSymbol;
	if (p != NULL) context[@"kCFNumberFormatterExponentSymbol"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterExponentSymbol inContext: context];
	p = (void*) &kCFNumberFormatterPaddingPosition;
	if (p != NULL) context[@"kCFNumberFormatterPaddingPosition"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterPaddingPosition inContext: context];
	p = (void*) &kCFNumberFormatterIsLenient;
	if (p != NULL) context[@"kCFNumberFormatterIsLenient"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterIsLenient inContext: context];
	p = (void*) &kCFNumberFormatterAlwaysShowDecimalSeparator;
	if (p != NULL) context[@"kCFNumberFormatterAlwaysShowDecimalSeparator"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterAlwaysShowDecimalSeparator inContext: context];
	p = (void*) &kCFNumberFormatterMultiplier;
	if (p != NULL) context[@"kCFNumberFormatterMultiplier"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterMultiplier inContext: context];
	p = (void*) &kCFNumberFormatterMaxIntegerDigits;
	if (p != NULL) context[@"kCFNumberFormatterMaxIntegerDigits"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterMaxIntegerDigits inContext: context];
	p = (void*) &kCFNumberFormatterGroupingSeparator;
	if (p != NULL) context[@"kCFNumberFormatterGroupingSeparator"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterGroupingSeparator inContext: context];
	p = (void*) &kCFNumberFormatterPerMillSymbol;
	if (p != NULL) context[@"kCFNumberFormatterPerMillSymbol"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterPerMillSymbol inContext: context];
	p = (void*) &kCFNumberFormatterNegativePrefix;
	if (p != NULL) context[@"kCFNumberFormatterNegativePrefix"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterNegativePrefix inContext: context];
	p = (void*) &kCFNumberFormatterDefaultFormat;
	if (p != NULL) context[@"kCFNumberFormatterDefaultFormat"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterDefaultFormat inContext: context];
	p = (void*) &kCFNumberFormatterInternationalCurrencySymbol;
	if (p != NULL) context[@"kCFNumberFormatterInternationalCurrencySymbol"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterInternationalCurrencySymbol inContext: context];
	p = (void*) &kCFNumberFormatterMinusSign;
	if (p != NULL) context[@"kCFNumberFormatterMinusSign"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterMinusSign inContext: context];
	p = (void*) &kCFNumberFormatterMaxSignificantDigits;
	if (p != NULL) context[@"kCFNumberFormatterMaxSignificantDigits"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterMaxSignificantDigits inContext: context];
	p = (void*) &kCFNumberFormatterPositiveSuffix;
	if (p != NULL) context[@"kCFNumberFormatterPositiveSuffix"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterPositiveSuffix inContext: context];
	p = (void*) &kCFNumberFormatterNegativeSuffix;
	if (p != NULL) context[@"kCFNumberFormatterNegativeSuffix"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterNegativeSuffix inContext: context];
	p = (void*) &kCFNumberFormatterMinSignificantDigits;
	if (p != NULL) context[@"kCFNumberFormatterMinSignificantDigits"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterMinSignificantDigits inContext: context];
	p = (void*) &kCFNumberFormatterCurrencyCode;
	if (p != NULL) context[@"kCFNumberFormatterCurrencyCode"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterCurrencyCode inContext: context];
	p = (void*) &kCFNumberFormatterMinIntegerDigits;
	if (p != NULL) context[@"kCFNumberFormatterMinIntegerDigits"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterMinIntegerDigits inContext: context];
	p = (void*) &kCFNumberFormatterPlusSign;
	if (p != NULL) context[@"kCFNumberFormatterPlusSign"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterPlusSign inContext: context];
	p = (void*) &kCFNumberFormatterCurrencyDecimalSeparator;
	if (p != NULL) context[@"kCFNumberFormatterCurrencyDecimalSeparator"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterCurrencyDecimalSeparator inContext: context];
	p = (void*) &kCFNumberFormatterRoundingIncrement;
	if (p != NULL) context[@"kCFNumberFormatterRoundingIncrement"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterRoundingIncrement inContext: context];
	p = (void*) &kCFNumberFormatterFormatWidth;
	if (p != NULL) context[@"kCFNumberFormatterFormatWidth"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterFormatWidth inContext: context];
	p = (void*) &kCFNumberFormatterRoundingMode;
	if (p != NULL) context[@"kCFNumberFormatterRoundingMode"] = [JSValue valueWithObject: (__bridge id) kCFNumberFormatterRoundingMode inContext: context];
}
void load_CoreFoundation_CFNumberFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
