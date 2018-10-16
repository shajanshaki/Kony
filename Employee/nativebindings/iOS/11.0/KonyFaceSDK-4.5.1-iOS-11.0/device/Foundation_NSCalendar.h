#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSCalendar_symbols(JSContext*);
@protocol NSDateComponentsInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (getter=isLeapMonth) BOOL leapMonth;
@property (getter=isValidDate,readonly) BOOL validDate;
@property () NSInteger weekOfYear;
@property () NSInteger hour;
@property () NSInteger weekdayOrdinal;
@property () NSInteger nanosecond;
@property () NSInteger month;
@property () NSInteger yearForWeekOfYear;
@property () NSInteger second;
@property () NSInteger weekOfMonth;
@property () NSInteger era;
@property () NSInteger year;
@property (readonly,copy) NSDate * date;
@property (copy) NSTimeZone * timeZone;
@property (copy) NSCalendar * calendar;
@property () NSInteger quarter;
@property () NSInteger day;
@property () NSInteger minute;
@property () NSInteger weekday;
-(NSInteger) valueForComponent: (NSCalendarUnit) unit ;
-(void) setWeek: (NSInteger) v ;
-(NSInteger) week;
-(BOOL) isValidDateInCalendar: (NSCalendar *) calendar ;
-(void) setValue: (NSInteger) value forComponent: (NSCalendarUnit) unit ;
@end
@protocol NSDateComponentsClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSCalendarInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSArray * standaloneWeekdaySymbols;
@property (readonly,copy) NSArray * longEraSymbols;
@property (readonly,copy) NSArray * weekdaySymbols;
@property (copy) NSLocale * locale;
@property (readonly,copy) NSArray * veryShortMonthSymbols;
@property (readonly,copy) NSArray * shortQuarterSymbols;
@property (readonly,copy) NSArray * shortStandaloneQuarterSymbols;
@property (readonly,copy) NSString * PMSymbol;
@property (readonly,copy) NSArray * shortStandaloneMonthSymbols;
@property (readonly,copy) NSArray * eraSymbols;
@property (readonly,copy) NSArray * veryShortWeekdaySymbols;
@property (readonly,copy) NSString * AMSymbol;
@property (readonly,copy) NSArray * shortStandaloneWeekdaySymbols;
@property (copy) NSTimeZone * timeZone;
@property (readonly,copy) NSArray * shortWeekdaySymbols;
@property (readonly,copy) NSArray * quarterSymbols;
@property (readonly,copy) NSArray * shortMonthSymbols;
@property (readonly,copy) NSCalendarIdentifier calendarIdentifier;
@property (readonly,copy) NSArray * standaloneMonthSymbols;
@property (readonly,copy) NSArray * standaloneQuarterSymbols;
@property () NSUInteger minimumDaysInFirstWeek;
@property (readonly,copy) NSArray * veryShortStandaloneMonthSymbols;
@property (readonly,copy) NSArray * monthSymbols;
@property (readonly,copy) NSArray * veryShortStandaloneWeekdaySymbols;
@property () NSUInteger firstWeekday;
-(NSUInteger) ordinalityOfUnit: (NSCalendarUnit) smaller inUnit: (NSCalendarUnit) larger forDate: (NSDate *) date ;
-(NSDate *) dateBySettingUnit: (NSCalendarUnit) unit value: (NSInteger) v ofDate: (NSDate *) date options: (NSCalendarOptions) opts ;
-(NSDate *) dateWithEra: (NSInteger) eraValue yearForWeekOfYear: (NSInteger) yearValue weekOfYear: (NSInteger) weekValue weekday: (NSInteger) weekdayValue hour: (NSInteger) hourValue minute: (NSInteger) minuteValue second: (NSInteger) secondValue nanosecond: (NSInteger) nanosecondValue ;
-(BOOL) isDateInWeekend: (NSDate *) date ;
-(NSDate *) dateFromComponents: (NSDateComponents *) comps ;
-(NSDate *) dateByAddingUnit: (NSCalendarUnit) unit value: (NSInteger) value toDate: (NSDate *) date options: (NSCalendarOptions) options ;
-(NSDate *) nextDateAfterDate: (NSDate *) date matchingHour: (NSInteger) hourValue minute: (NSInteger) minuteValue second: (NSInteger) secondValue options: (NSCalendarOptions) options ;
-(NSDate *) dateByAddingComponents: (NSDateComponents *) comps toDate: (NSDate *) date options: (NSCalendarOptions) opts ;
-(BOOL) isDateInTomorrow: (NSDate *) date ;
-(NSRange) maximumRangeOfUnit: (NSCalendarUnit) unit ;
JSExportAs(initWithCalendarIdentifier,
-(id) jsinitWithCalendarIdentifier: (NSCalendarIdentifier) ident );
-(NSDate *) dateBySettingHour: (NSInteger) h minute: (NSInteger) m second: (NSInteger) s ofDate: (NSDate *) date options: (NSCalendarOptions) opts ;
-(NSInteger) component: (NSCalendarUnit) unit fromDate: (NSDate *) date ;
-(NSDateComponents *) components: (NSCalendarUnit) unitFlags fromDateComponents: (NSDateComponents *) startingDateComp toDateComponents: (NSDateComponents *) resultDateComp options: (NSCalendarOptions) options ;
-(BOOL) isDateInYesterday: (NSDate *) date ;
-(BOOL) isDate: (NSDate *) date1 inSameDayAsDate: (NSDate *) date2 ;
-(NSDate *) startOfDayForDate: (NSDate *) date ;
-(NSComparisonResult) compareDate: (NSDate *) date1 toDate: (NSDate *) date2 toUnitGranularity: (NSCalendarUnit) unit ;
JSExportAs(enumerateDatesStartingAfterDateMatchingComponentsOptionsUsingBlock,
-(void) jsenumerateDatesStartingAfterDate: (NSDate *) start matchingComponents: (NSDateComponents *) comps options: (NSCalendarOptions) opts usingBlock: (JSValue *) block );
-(NSDateComponents *) componentsInTimeZone: (NSTimeZone *) timezone fromDate: (NSDate *) date ;
-(BOOL) isDate: (NSDate *) date1 equalToDate: (NSDate *) date2 toUnitGranularity: (NSCalendarUnit) unit ;
-(BOOL) date: (NSDate *) date matchesComponents: (NSDateComponents *) components ;
-(NSDateComponents *) components: (NSCalendarUnit) unitFlags fromDate: (NSDate *) date ;
-(BOOL) isDateInToday: (NSDate *) date ;
-(NSDate *) dateWithEra: (NSInteger) eraValue year: (NSInteger) yearValue month: (NSInteger) monthValue day: (NSInteger) dayValue hour: (NSInteger) hourValue minute: (NSInteger) minuteValue second: (NSInteger) secondValue nanosecond: (NSInteger) nanosecondValue ;
-(NSDate *) nextDateAfterDate: (NSDate *) date matchingUnit: (NSCalendarUnit) unit value: (NSInteger) value options: (NSCalendarOptions) options ;
-(NSRange) rangeOfUnit: (NSCalendarUnit) smaller inUnit: (NSCalendarUnit) larger forDate: (NSDate *) date ;
-(NSRange) minimumRangeOfUnit: (NSCalendarUnit) unit ;
-(NSDateComponents *) components: (NSCalendarUnit) unitFlags fromDate: (NSDate *) startingDate toDate: (NSDate *) resultDate options: (NSCalendarOptions) opts ;
-(NSDate *) nextDateAfterDate: (NSDate *) date matchingComponents: (NSDateComponents *) comps options: (NSCalendarOptions) options ;
@end
@protocol NSCalendarClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(NSCalendar *) currentCalendar;
+(NSCalendar *) autoupdatingCurrentCalendar;
+(NSCalendar *) calendarWithIdentifier: (NSCalendarIdentifier) calendarIdentifierConstant ;
@end
#pragma clang diagnostic pop