#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDateComponentsFormatter_symbols(JSContext*);
@protocol NSDateComponentsFormatterInstanceExports<JSExport>
@property () NSCalendarUnit allowedUnits;
@property () BOOL includesApproximationPhrase;
@property () BOOL allowsFractionalUnits;
@property (copy) NSDate * referenceDate;
@property () NSDateComponentsFormatterZeroFormattingBehavior zeroFormattingBehavior;
@property () NSFormattingContext formattingContext;
@property () NSDateComponentsFormatterUnitsStyle unitsStyle;
@property () BOOL includesTimeRemainingPhrase;
@property (copy) NSCalendar * calendar;
@property () NSInteger maximumUnitCount;
@property () BOOL collapsesLargestUnit;
-(NSString *) stringFromTimeInterval: (NSTimeInterval) ti ;
-(NSString *) stringForObjectValue: (id) obj ;
-(NSString *) stringFromDate: (NSDate *) startDate toDate: (NSDate *) endDate ;
-(NSString *) stringFromDateComponents: (NSDateComponents *) components ;
@end
@protocol NSDateComponentsFormatterClassExports<JSExport>
+(NSString *) localizedStringFromDateComponents: (NSDateComponents *) components unitsStyle: (NSDateComponentsFormatterUnitsStyle) unitsStyle ;
@end
#pragma clang diagnostic pop