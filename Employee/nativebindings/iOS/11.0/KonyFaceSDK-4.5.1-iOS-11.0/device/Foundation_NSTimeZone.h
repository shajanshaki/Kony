#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSTimeZone_symbols(JSContext*);
@protocol NSTimeZoneInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSData * data;
@property (readonly,copy) NSString * name;
-(BOOL) isDaylightSavingTimeForDate: (NSDate *) aDate ;
-(NSInteger) secondsFromGMTForDate: (NSDate *) aDate ;
-(NSString *) abbreviationForDate: (NSDate *) aDate ;
-(NSTimeInterval) daylightSavingTimeOffsetForDate: (NSDate *) aDate ;
-(NSDate *) nextDaylightSavingTimeTransitionAfterDate: (NSDate *) aDate ;
@end
@protocol NSTimeZoneClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSTimeZoneNSTimeZoneCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithName,
-(id) jsinitWithName: (NSString *) tzName );
JSExportAs(initWithNameData,
-(id) jsinitWithName: (NSString *) tzName data: (NSData *) aData );
@end
@protocol NSTimeZoneNSTimeZoneCreationCategoryClassExports<JSExport>
+(id) timeZoneForSecondsFromGMT: (NSInteger) seconds ;
+(id) timeZoneWithName: (NSString *) tzName data: (NSData *) aData ;
+(id) timeZoneWithName: (NSString *) tzName ;
+(id) timeZoneWithAbbreviation: (NSString *) abbreviation ;
@end
@protocol NSTimeZoneNSExtendedTimeZoneCategoryInstanceExports<JSExport>
@property (readonly) NSInteger secondsFromGMT;
@property (readonly,copy) NSString * description;
@property (getter=isDaylightSavingTime,readonly) BOOL daylightSavingTime;
@property (readonly) NSTimeInterval daylightSavingTimeOffset;
@property (readonly,copy) NSString * abbreviation;
@property (readonly,copy) NSDate * nextDaylightSavingTimeTransition;
-(NSString *) localizedName: (NSTimeZoneNameStyle) style locale: (NSLocale *) locale ;
-(BOOL) isEqualToTimeZone: (NSTimeZone *) aTimeZone ;
@end
@protocol NSTimeZoneNSExtendedTimeZoneCategoryClassExports<JSExport>
+(void) resetSystemTimeZone;
+(NSArray *) knownTimeZoneNames;
+(NSTimeZone *) defaultTimeZone;
+(NSString *) timeZoneDataVersion;
+(void) setDefaultTimeZone: (NSTimeZone *) defaultTimeZone ;
+(NSTimeZone *) systemTimeZone;
+(void) setAbbreviationDictionary: (NSDictionary *) abbreviationDictionary ;
+(NSTimeZone *) localTimeZone;
+(NSDictionary *) abbreviationDictionary;
@end
#pragma clang diagnostic pop