#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDate_symbols(JSContext*);
@protocol NSDateInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSTimeInterval timeIntervalSinceReferenceDate;
-(id) jsinit;
JSExportAs(initWithTimeIntervalSinceReferenceDate,
-(id) jsinitWithTimeIntervalSinceReferenceDate: (NSTimeInterval) ti );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSDateClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSDateNSExtendedDateCategoryInstanceExports<JSExport>
@property (readonly) NSTimeInterval timeIntervalSince1970;
@property (readonly,copy) NSString * description;
@property (readonly) NSTimeInterval timeIntervalSinceNow;
-(NSString *) descriptionWithLocale: (id) locale ;
-(id) addTimeInterval: (NSTimeInterval) seconds ;
-(id) dateByAddingTimeInterval: (NSTimeInterval) ti ;
-(NSTimeInterval) timeIntervalSinceDate: (NSDate *) anotherDate ;
-(BOOL) isEqualToDate: (NSDate *) otherDate ;
-(NSDate *) earlierDate: (NSDate *) anotherDate ;
-(NSComparisonResult) compare: (NSDate *) other ;
-(NSDate *) laterDate: (NSDate *) anotherDate ;
@end
@protocol NSDateNSExtendedDateCategoryClassExports<JSExport>
+(NSTimeInterval) timeIntervalSinceReferenceDate;
@end
@protocol NSDateNSDateCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithTimeIntervalSinceDate,
-(id) jsinitWithTimeInterval: (NSTimeInterval) secsToBeAdded sinceDate: (NSDate *) date );
JSExportAs(initWithTimeIntervalSince1970,
-(id) jsinitWithTimeIntervalSince1970: (NSTimeInterval) secs );
JSExportAs(initWithTimeIntervalSinceNow,
-(id) jsinitWithTimeIntervalSinceNow: (NSTimeInterval) secs );
@end
@protocol NSDateNSDateCreationCategoryClassExports<JSExport>
+(id) dateWithTimeIntervalSince1970: (NSTimeInterval) secs ;
+(id) dateWithTimeIntervalSinceReferenceDate: (NSTimeInterval) ti ;
+(NSDate *) distantPast;
+(id) dateWithTimeInterval: (NSTimeInterval) secsToBeAdded sinceDate: (NSDate *) date ;
+(NSDate *) distantFuture;
+(id) dateWithTimeIntervalSinceNow: (NSTimeInterval) secs ;
+(id) date;
@end
#pragma clang diagnostic pop