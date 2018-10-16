#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDateFormatter_symbols(JSContext*);
@protocol NSDateFormatterInstanceExports<JSExport>
@property (copy) NSArray * standaloneWeekdaySymbols;
@property (copy) NSArray * longEraSymbols;
@property (copy) NSArray * weekdaySymbols;
@property () NSDateFormatterStyle timeStyle;
@property (copy) NSLocale * locale;
@property () NSDateFormatterStyle dateStyle;
@property (copy) NSArray * shortQuarterSymbols;
@property (copy) NSArray * shortStandaloneQuarterSymbols;
@property (copy) NSDate * twoDigitStartDate;
@property () BOOL generatesCalendarDates;
@property (copy) NSString * PMSymbol;
@property (copy) NSDate * defaultDate;
@property (copy) NSString * dateFormat;
@property (copy) NSArray * shortStandaloneMonthSymbols;
@property () NSDateFormatterBehavior formatterBehavior;
@property (getter=isLenient) BOOL lenient;
@property (copy) NSArray * eraSymbols;
@property (copy) NSArray * veryShortMonthSymbols;
@property (copy) NSArray * veryShortWeekdaySymbols;
@property (copy) NSString * AMSymbol;
@property (copy) NSArray * shortStandaloneWeekdaySymbols;
@property () BOOL doesRelativeDateFormatting;
@property (copy) NSDate * gregorianStartDate;
@property (copy) NSTimeZone * timeZone;
@property (copy) NSArray * shortWeekdaySymbols;
@property (copy) NSArray * quarterSymbols;
@property (copy) NSArray * shortMonthSymbols;
@property (copy) NSArray * standaloneMonthSymbols;
@property () NSFormattingContext formattingContext;
@property (copy) NSArray * standaloneQuarterSymbols;
@property (copy) NSArray * veryShortStandaloneMonthSymbols;
@property (copy) NSCalendar * calendar;
@property (copy) NSArray * monthSymbols;
@property (copy) NSArray * veryShortStandaloneWeekdaySymbols;
-(void) setLocalizedDateFormatFromTemplate: (NSString *) dateFormatTemplate ;
-(NSString *) stringFromDate: (NSDate *) date ;
-(NSDate *) dateFromString: (NSString *) string ;
@end
@protocol NSDateFormatterClassExports<JSExport>
+(void) setDefaultFormatterBehavior: (NSDateFormatterBehavior) defaultFormatterBehavior ;
+(NSString *) localizedStringFromDate: (NSDate *) date dateStyle: (NSDateFormatterStyle) dstyle timeStyle: (NSDateFormatterStyle) tstyle ;
+(NSDateFormatterBehavior) defaultFormatterBehavior;
+(NSString *) dateFormatFromTemplate: (NSString *) tmplate options: (NSUInteger) opts locale: (NSLocale *) locale ;
@end
#pragma clang diagnostic pop