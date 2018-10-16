#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDateIntervalFormatter_symbols(JSContext*);
@protocol NSDateIntervalFormatterInstanceExports<JSExport>
@property () NSDateIntervalFormatterStyle timeStyle;
@property (copy) NSLocale * locale;
@property () NSDateIntervalFormatterStyle dateStyle;
@property (copy) NSString * dateTemplate;
@property (copy) NSTimeZone * timeZone;
@property (copy) NSCalendar * calendar;
-(NSString *) stringFromDateInterval: (NSDateInterval *) dateInterval ;
-(NSString *) stringFromDate: (NSDate *) fromDate toDate: (NSDate *) toDate ;
@end
@protocol NSDateIntervalFormatterClassExports<JSExport>
@end
#pragma clang diagnostic pop