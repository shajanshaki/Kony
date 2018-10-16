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
	context[@"CFLocaleGetTypeID"] = ^CFTypeID() {
		return CFLocaleGetTypeID();
	};
	context[@"CFLocaleCopyCommonISOCurrencyCodes"] = ^id() {
		return CFLocaleCopyCommonISOCurrencyCodes();
	};
	context[@"CFLocaleGetSystem"] = ^id() {
		return CFLocaleGetSystem();
	};
	context[@"CFLocaleCopyISOCurrencyCodes"] = ^id() {
		return CFLocaleCopyISOCurrencyCodes();
	};
	context[@"CFLocaleCopyISOLanguageCodes"] = ^id() {
		return CFLocaleCopyISOLanguageCodes();
	};
	context[@"CFLocaleCreateCanonicalLocaleIdentifierFromString"] = ^id(id arg0, id arg1) {
		return CFLocaleCreateCanonicalLocaleIdentifierFromString(arg0, arg1);
	};
	context[@"CFLocaleCreateLocaleIdentifierFromWindowsLocaleCode"] = ^id(id arg0, uint32_t arg1) {
		return CFLocaleCreateLocaleIdentifierFromWindowsLocaleCode(arg0, arg1);
	};
	context[@"CFLocaleGetIdentifier"] = ^id(id arg0) {
		return CFLocaleGetIdentifier(arg0);
	};
	context[@"CFLocaleCreateLocaleIdentifierFromComponents"] = ^id(id arg0, id arg1) {
		return CFLocaleCreateLocaleIdentifierFromComponents(arg0, arg1);
	};
	context[@"CFLocaleCreate"] = ^id(id arg0, id arg1) {
		return CFLocaleCreate(arg0, arg1);
	};
	context[@"CFLocaleCopyAvailableLocaleIdentifiers"] = ^id() {
		return CFLocaleCopyAvailableLocaleIdentifiers();
	};
	context[@"CFLocaleCopyCurrent"] = ^id() {
		return CFLocaleCopyCurrent();
	};
	context[@"CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes"] = ^id(id arg0, LangCode arg1, RegionCode arg2) {
		return CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(arg0, arg1, arg2);
	};
	context[@"CFLocaleCopyDisplayNameForPropertyValue"] = ^id(id arg0, id arg1, id arg2) {
		return CFLocaleCopyDisplayNameForPropertyValue(arg0, arg1, arg2);
	};
	context[@"CFLocaleGetLanguageLineDirection"] = ^CFLocaleLanguageDirection(id arg0) {
		return CFLocaleGetLanguageLineDirection(arg0);
	};
	context[@"CFLocaleCopyPreferredLanguages"] = ^id() {
		return CFLocaleCopyPreferredLanguages();
	};
	context[@"CFLocaleCreateCanonicalLanguageIdentifierFromString"] = ^id(id arg0, id arg1) {
		return CFLocaleCreateCanonicalLanguageIdentifierFromString(arg0, arg1);
	};
	context[@"CFLocaleGetLanguageCharacterDirection"] = ^CFLocaleLanguageDirection(id arg0) {
		return CFLocaleGetLanguageCharacterDirection(arg0);
	};
	context[@"CFLocaleCreateComponentsFromLocaleIdentifier"] = ^id(id arg0, id arg1) {
		return CFLocaleCreateComponentsFromLocaleIdentifier(arg0, arg1);
	};
	context[@"CFLocaleGetWindowsLocaleCodeFromLocaleIdentifier"] = ^uint32_t(id arg0) {
		return CFLocaleGetWindowsLocaleCodeFromLocaleIdentifier(arg0);
	};
	context[@"CFLocaleCopyISOCountryCodes"] = ^id() {
		return CFLocaleCopyISOCountryCodes();
	};
	context[@"CFLocaleCreateCopy"] = ^id(id arg0, id arg1) {
		return CFLocaleCreateCopy(arg0, arg1);
	};
	context[@"CFLocaleGetValue"] = ^id(id arg0, id arg1) {
		return CFLocaleGetValue(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFLocaleLanguageDirectionUnknown"] = @0L;
	context[@"kCFLocaleLanguageDirectionLeftToRight"] = @1L;
	context[@"kCFLocaleLanguageDirectionRightToLeft"] = @2L;
	context[@"kCFLocaleLanguageDirectionTopToBottom"] = @3L;
	context[@"kCFLocaleLanguageDirectionBottomToTop"] = @4L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFLocaleCalendar;
	if (p != NULL) context[@"kCFLocaleCalendar"] = [JSValue valueWithObject: (__bridge id) kCFLocaleCalendar inContext: context];
	p = (void*) &kCFLocaleLanguageCode;
	if (p != NULL) context[@"kCFLocaleLanguageCode"] = [JSValue valueWithObject: (__bridge id) kCFLocaleLanguageCode inContext: context];
	p = (void*) &kCFHebrewCalendar;
	if (p != NULL) context[@"kCFHebrewCalendar"] = [JSValue valueWithObject: (__bridge id) kCFHebrewCalendar inContext: context];
	p = (void*) &kCFBuddhistCalendar;
	if (p != NULL) context[@"kCFBuddhistCalendar"] = [JSValue valueWithObject: (__bridge id) kCFBuddhistCalendar inContext: context];
	p = (void*) &kCFLocaleCurrentLocaleDidChangeNotification;
	if (p != NULL) context[@"kCFLocaleCurrentLocaleDidChangeNotification"] = [JSValue valueWithObject: (__bridge id) kCFLocaleCurrentLocaleDidChangeNotification inContext: context];
	p = (void*) &kCFLocaleCurrencySymbol;
	if (p != NULL) context[@"kCFLocaleCurrencySymbol"] = [JSValue valueWithObject: (__bridge id) kCFLocaleCurrencySymbol inContext: context];
	p = (void*) &kCFJapaneseCalendar;
	if (p != NULL) context[@"kCFJapaneseCalendar"] = [JSValue valueWithObject: (__bridge id) kCFJapaneseCalendar inContext: context];
	p = (void*) &kCFLocaleQuotationBeginDelimiterKey;
	if (p != NULL) context[@"kCFLocaleQuotationBeginDelimiterKey"] = [JSValue valueWithObject: (__bridge id) kCFLocaleQuotationBeginDelimiterKey inContext: context];
	p = (void*) &kCFLocaleGroupingSeparator;
	if (p != NULL) context[@"kCFLocaleGroupingSeparator"] = [JSValue valueWithObject: (__bridge id) kCFLocaleGroupingSeparator inContext: context];
	p = (void*) &kCFLocaleAlternateQuotationBeginDelimiterKey;
	if (p != NULL) context[@"kCFLocaleAlternateQuotationBeginDelimiterKey"] = [JSValue valueWithObject: (__bridge id) kCFLocaleAlternateQuotationBeginDelimiterKey inContext: context];
	p = (void*) &kCFIslamicUmmAlQuraCalendar;
	if (p != NULL) context[@"kCFIslamicUmmAlQuraCalendar"] = [JSValue valueWithObject: (__bridge id) kCFIslamicUmmAlQuraCalendar inContext: context];
	p = (void*) &kCFLocaleIdentifier;
	if (p != NULL) context[@"kCFLocaleIdentifier"] = [JSValue valueWithObject: (__bridge id) kCFLocaleIdentifier inContext: context];
	p = (void*) &kCFRepublicOfChinaCalendar;
	if (p != NULL) context[@"kCFRepublicOfChinaCalendar"] = [JSValue valueWithObject: (__bridge id) kCFRepublicOfChinaCalendar inContext: context];
	p = (void*) &kCFLocaleScriptCode;
	if (p != NULL) context[@"kCFLocaleScriptCode"] = [JSValue valueWithObject: (__bridge id) kCFLocaleScriptCode inContext: context];
	p = (void*) &kCFLocaleCollatorIdentifier;
	if (p != NULL) context[@"kCFLocaleCollatorIdentifier"] = [JSValue valueWithObject: (__bridge id) kCFLocaleCollatorIdentifier inContext: context];
	p = (void*) &kCFIndianCalendar;
	if (p != NULL) context[@"kCFIndianCalendar"] = [JSValue valueWithObject: (__bridge id) kCFIndianCalendar inContext: context];
	p = (void*) &kCFChineseCalendar;
	if (p != NULL) context[@"kCFChineseCalendar"] = [JSValue valueWithObject: (__bridge id) kCFChineseCalendar inContext: context];
	p = (void*) &kCFLocaleMeasurementSystem;
	if (p != NULL) context[@"kCFLocaleMeasurementSystem"] = [JSValue valueWithObject: (__bridge id) kCFLocaleMeasurementSystem inContext: context];
	p = (void*) &kCFLocaleQuotationEndDelimiterKey;
	if (p != NULL) context[@"kCFLocaleQuotationEndDelimiterKey"] = [JSValue valueWithObject: (__bridge id) kCFLocaleQuotationEndDelimiterKey inContext: context];
	p = (void*) &kCFLocaleAlternateQuotationEndDelimiterKey;
	if (p != NULL) context[@"kCFLocaleAlternateQuotationEndDelimiterKey"] = [JSValue valueWithObject: (__bridge id) kCFLocaleAlternateQuotationEndDelimiterKey inContext: context];
	p = (void*) &kCFLocaleCollationIdentifier;
	if (p != NULL) context[@"kCFLocaleCollationIdentifier"] = [JSValue valueWithObject: (__bridge id) kCFLocaleCollationIdentifier inContext: context];
	p = (void*) &kCFLocaleUsesMetricSystem;
	if (p != NULL) context[@"kCFLocaleUsesMetricSystem"] = [JSValue valueWithObject: (__bridge id) kCFLocaleUsesMetricSystem inContext: context];
	p = (void*) &kCFPersianCalendar;
	if (p != NULL) context[@"kCFPersianCalendar"] = [JSValue valueWithObject: (__bridge id) kCFPersianCalendar inContext: context];
	p = (void*) &kCFLocaleCurrencyCode;
	if (p != NULL) context[@"kCFLocaleCurrencyCode"] = [JSValue valueWithObject: (__bridge id) kCFLocaleCurrencyCode inContext: context];
	p = (void*) &kCFIslamicCalendar;
	if (p != NULL) context[@"kCFIslamicCalendar"] = [JSValue valueWithObject: (__bridge id) kCFIslamicCalendar inContext: context];
	p = (void*) &kCFLocaleCalendarIdentifier;
	if (p != NULL) context[@"kCFLocaleCalendarIdentifier"] = [JSValue valueWithObject: (__bridge id) kCFLocaleCalendarIdentifier inContext: context];
	p = (void*) &kCFGregorianCalendar;
	if (p != NULL) context[@"kCFGregorianCalendar"] = [JSValue valueWithObject: (__bridge id) kCFGregorianCalendar inContext: context];
	p = (void*) &kCFIslamicTabularCalendar;
	if (p != NULL) context[@"kCFIslamicTabularCalendar"] = [JSValue valueWithObject: (__bridge id) kCFIslamicTabularCalendar inContext: context];
	p = (void*) &kCFLocaleCountryCode;
	if (p != NULL) context[@"kCFLocaleCountryCode"] = [JSValue valueWithObject: (__bridge id) kCFLocaleCountryCode inContext: context];
	p = (void*) &kCFLocaleDecimalSeparator;
	if (p != NULL) context[@"kCFLocaleDecimalSeparator"] = [JSValue valueWithObject: (__bridge id) kCFLocaleDecimalSeparator inContext: context];
	p = (void*) &kCFIslamicCivilCalendar;
	if (p != NULL) context[@"kCFIslamicCivilCalendar"] = [JSValue valueWithObject: (__bridge id) kCFIslamicCivilCalendar inContext: context];
	p = (void*) &kCFLocaleExemplarCharacterSet;
	if (p != NULL) context[@"kCFLocaleExemplarCharacterSet"] = [JSValue valueWithObject: (__bridge id) kCFLocaleExemplarCharacterSet inContext: context];
	p = (void*) &kCFLocaleVariantCode;
	if (p != NULL) context[@"kCFLocaleVariantCode"] = [JSValue valueWithObject: (__bridge id) kCFLocaleVariantCode inContext: context];
	p = (void*) &kCFISO8601Calendar;
	if (p != NULL) context[@"kCFISO8601Calendar"] = [JSValue valueWithObject: (__bridge id) kCFISO8601Calendar inContext: context];
}
void load_CoreFoundation_CFLocale_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
