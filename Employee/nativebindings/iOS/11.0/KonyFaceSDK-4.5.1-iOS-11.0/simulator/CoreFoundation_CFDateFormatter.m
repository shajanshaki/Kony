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
	context[@"CFDateFormatterCreateDateFormatFromTemplate"] = ^id(id arg0, id arg1, CFOptionFlags arg2, id arg3) {
		return CFDateFormatterCreateDateFormatFromTemplate(arg0, arg1, arg2, arg3);
	};
	context[@"CFDateFormatterCreateStringWithAbsoluteTime"] = ^id(id arg0, id arg1, CFAbsoluteTime arg2) {
		return CFDateFormatterCreateStringWithAbsoluteTime(arg0, arg1, arg2);
	};
	context[@"CFDateFormatterGetDateStyle"] = ^CFDateFormatterStyle(id arg0) {
		return CFDateFormatterGetDateStyle(arg0);
	};
	context[@"CFDateFormatterCreateStringWithDate"] = ^id(id arg0, id arg1, id arg2) {
		return CFDateFormatterCreateStringWithDate(arg0, arg1, arg2);
	};
	context[@"CFDateFormatterGetTimeStyle"] = ^CFDateFormatterStyle(id arg0) {
		return CFDateFormatterGetTimeStyle(arg0);
	};
	context[@"CFDateFormatterGetTypeID"] = ^CFTypeID() {
		return CFDateFormatterGetTypeID();
	};
	context[@"CFDateFormatterGetFormat"] = ^id(id arg0) {
		return CFDateFormatterGetFormat(arg0);
	};
	context[@"CFDateFormatterGetLocale"] = ^id(id arg0) {
		return CFDateFormatterGetLocale(arg0);
	};
	context[@"CFDateFormatterCreateISO8601Formatter"] = ^id(id arg0, CFISO8601DateFormatOptions arg1) {
		return CFDateFormatterCreateISO8601Formatter(arg0, arg1);
	};
	context[@"CFDateFormatterSetFormat"] = ^void(id arg0, id arg1) {
		CFDateFormatterSetFormat(arg0, arg1);
	};
	context[@"CFDateFormatterCopyProperty"] = ^id(id arg0, id arg1) {
		return CFDateFormatterCopyProperty(arg0, arg1);
	};
	context[@"CFDateFormatterCreate"] = ^id(id arg0, id arg1, CFDateFormatterStyle arg2, CFDateFormatterStyle arg3) {
		return CFDateFormatterCreate(arg0, arg1, arg2, arg3);
	};
	context[@"CFDateFormatterSetProperty"] = ^void(id arg0, id arg1, id arg2) {
		CFDateFormatterSetProperty(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFDateFormatterNoStyle"] = @0L;
	context[@"kCFDateFormatterShortStyle"] = @1L;
	context[@"kCFDateFormatterMediumStyle"] = @2L;
	context[@"kCFDateFormatterLongStyle"] = @3L;
	context[@"kCFDateFormatterFullStyle"] = @4L;

	context[@"kCFISO8601DateFormatWithYear"] = @1UL;
	context[@"kCFISO8601DateFormatWithMonth"] = @2UL;
	context[@"kCFISO8601DateFormatWithWeekOfYear"] = @4UL;
	context[@"kCFISO8601DateFormatWithDay"] = @16UL;
	context[@"kCFISO8601DateFormatWithTime"] = @32UL;
	context[@"kCFISO8601DateFormatWithTimeZone"] = @64UL;
	context[@"kCFISO8601DateFormatWithSpaceBetweenDateAndTime"] = @128UL;
	context[@"kCFISO8601DateFormatWithDashSeparatorInDate"] = @256UL;
	context[@"kCFISO8601DateFormatWithColonSeparatorInTime"] = @512UL;
	context[@"kCFISO8601DateFormatWithColonSeparatorInTimeZone"] = @1024UL;
	context[@"kCFISO8601DateFormatWithFractionalSeconds"] = @2048UL;
	context[@"kCFISO8601DateFormatWithFullDate"] = @275UL;
	context[@"kCFISO8601DateFormatWithFullTime"] = @1632UL;
	context[@"kCFISO8601DateFormatWithInternetDateTime"] = @1907UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFDateFormatterWeekdaySymbols;
	if (p != NULL) context[@"kCFDateFormatterWeekdaySymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterWeekdaySymbols inContext: context];
	p = (void*) &kCFDateFormatterShortStandaloneMonthSymbols;
	if (p != NULL) context[@"kCFDateFormatterShortStandaloneMonthSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterShortStandaloneMonthSymbols inContext: context];
	p = (void*) &kCFDateFormatterCalendar;
	if (p != NULL) context[@"kCFDateFormatterCalendar"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterCalendar inContext: context];
	p = (void*) &kCFDateFormatterShortStandaloneWeekdaySymbols;
	if (p != NULL) context[@"kCFDateFormatterShortStandaloneWeekdaySymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterShortStandaloneWeekdaySymbols inContext: context];
	p = (void*) &kCFDateFormatterTimeZone;
	if (p != NULL) context[@"kCFDateFormatterTimeZone"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterTimeZone inContext: context];
	p = (void*) &kCFDateFormatterQuarterSymbols;
	if (p != NULL) context[@"kCFDateFormatterQuarterSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterQuarterSymbols inContext: context];
	p = (void*) &kCFDateFormatterStandaloneQuarterSymbols;
	if (p != NULL) context[@"kCFDateFormatterStandaloneQuarterSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterStandaloneQuarterSymbols inContext: context];
	p = (void*) &kCFDateFormatterAMSymbol;
	if (p != NULL) context[@"kCFDateFormatterAMSymbol"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterAMSymbol inContext: context];
	p = (void*) &kCFDateFormatterVeryShortMonthSymbols;
	if (p != NULL) context[@"kCFDateFormatterVeryShortMonthSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterVeryShortMonthSymbols inContext: context];
	p = (void*) &kCFDateFormatterMonthSymbols;
	if (p != NULL) context[@"kCFDateFormatterMonthSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterMonthSymbols inContext: context];
	p = (void*) &kCFDateFormatterDefaultFormat;
	if (p != NULL) context[@"kCFDateFormatterDefaultFormat"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterDefaultFormat inContext: context];
	p = (void*) &kCFDateFormatterCalendarName;
	if (p != NULL) context[@"kCFDateFormatterCalendarName"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterCalendarName inContext: context];
	p = (void*) &kCFDateFormatterDefaultDate;
	if (p != NULL) context[@"kCFDateFormatterDefaultDate"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterDefaultDate inContext: context];
	p = (void*) &kCFDateFormatterGregorianStartDate;
	if (p != NULL) context[@"kCFDateFormatterGregorianStartDate"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterGregorianStartDate inContext: context];
	p = (void*) &kCFDateFormatterDoesRelativeDateFormattingKey;
	if (p != NULL) context[@"kCFDateFormatterDoesRelativeDateFormattingKey"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterDoesRelativeDateFormattingKey inContext: context];
	p = (void*) &kCFDateFormatterPMSymbol;
	if (p != NULL) context[@"kCFDateFormatterPMSymbol"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterPMSymbol inContext: context];
	p = (void*) &kCFDateFormatterShortWeekdaySymbols;
	if (p != NULL) context[@"kCFDateFormatterShortWeekdaySymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterShortWeekdaySymbols inContext: context];
	p = (void*) &kCFDateFormatterEraSymbols;
	if (p != NULL) context[@"kCFDateFormatterEraSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterEraSymbols inContext: context];
	p = (void*) &kCFDateFormatterStandaloneWeekdaySymbols;
	if (p != NULL) context[@"kCFDateFormatterStandaloneWeekdaySymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterStandaloneWeekdaySymbols inContext: context];
	p = (void*) &kCFDateFormatterLongEraSymbols;
	if (p != NULL) context[@"kCFDateFormatterLongEraSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterLongEraSymbols inContext: context];
	p = (void*) &kCFDateFormatterVeryShortWeekdaySymbols;
	if (p != NULL) context[@"kCFDateFormatterVeryShortWeekdaySymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterVeryShortWeekdaySymbols inContext: context];
	p = (void*) &kCFDateFormatterShortMonthSymbols;
	if (p != NULL) context[@"kCFDateFormatterShortMonthSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterShortMonthSymbols inContext: context];
	p = (void*) &kCFDateFormatterVeryShortStandaloneWeekdaySymbols;
	if (p != NULL) context[@"kCFDateFormatterVeryShortStandaloneWeekdaySymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterVeryShortStandaloneWeekdaySymbols inContext: context];
	p = (void*) &kCFDateFormatterTwoDigitStartDate;
	if (p != NULL) context[@"kCFDateFormatterTwoDigitStartDate"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterTwoDigitStartDate inContext: context];
	p = (void*) &kCFDateFormatterVeryShortStandaloneMonthSymbols;
	if (p != NULL) context[@"kCFDateFormatterVeryShortStandaloneMonthSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterVeryShortStandaloneMonthSymbols inContext: context];
	p = (void*) &kCFDateFormatterShortStandaloneQuarterSymbols;
	if (p != NULL) context[@"kCFDateFormatterShortStandaloneQuarterSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterShortStandaloneQuarterSymbols inContext: context];
	p = (void*) &kCFDateFormatterShortQuarterSymbols;
	if (p != NULL) context[@"kCFDateFormatterShortQuarterSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterShortQuarterSymbols inContext: context];
	p = (void*) &kCFDateFormatterStandaloneMonthSymbols;
	if (p != NULL) context[@"kCFDateFormatterStandaloneMonthSymbols"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterStandaloneMonthSymbols inContext: context];
	p = (void*) &kCFDateFormatterIsLenient;
	if (p != NULL) context[@"kCFDateFormatterIsLenient"] = [JSValue valueWithObject: (__bridge id) kCFDateFormatterIsLenient inContext: context];
}
void load_CoreFoundation_CFDateFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
