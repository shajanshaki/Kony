#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDateInterval_symbols(JSContext*);
@protocol NSDateIntervalInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSTimeInterval duration;
@property (readonly,copy) NSDate * startDate;
@property (readonly,copy) NSDate * endDate;
-(BOOL) isEqualToDateInterval: (NSDateInterval *) dateInterval ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithStartDateEndDate,
-(id) jsinitWithStartDate: (NSDate *) startDate endDate: (NSDate *) endDate );
-(BOOL) containsDate: (NSDate *) date ;
JSExportAs(initWithStartDateDuration,
-(id) jsinitWithStartDate: (NSDate *) startDate duration: (NSTimeInterval) duration );
-(id) jsinit;
-(BOOL) intersectsDateInterval: (NSDateInterval *) dateInterval ;
-(NSComparisonResult) compare: (NSDateInterval *) dateInterval ;
-(NSDateInterval *) intersectionWithDateInterval: (NSDateInterval *) dateInterval ;
@end
@protocol NSDateIntervalClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop