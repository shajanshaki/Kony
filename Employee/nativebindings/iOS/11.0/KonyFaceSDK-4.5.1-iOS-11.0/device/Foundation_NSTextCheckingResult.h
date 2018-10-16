#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSTextCheckingResult_symbols(JSContext*);
@protocol NSTextCheckingResultNSTextCheckingResultCreationCategoryInstanceExports<JSExport>
@end
@protocol NSTextCheckingResultNSTextCheckingResultCreationCategoryClassExports<JSExport>
+(NSTextCheckingResult *) transitInformationCheckingResultWithRange: (NSRange) range components: (NSDictionary *) components ;
+(NSTextCheckingResult *) orthographyCheckingResultWithRange: (NSRange) range orthography: (NSOrthography *) orthography ;
+(NSTextCheckingResult *) addressCheckingResultWithRange: (NSRange) range components: (NSDictionary *) components ;
+(NSTextCheckingResult *) dashCheckingResultWithRange: (NSRange) range replacementString: (NSString *) replacementString ;
+(NSTextCheckingResult *) correctionCheckingResultWithRange: (NSRange) range replacementString: (NSString *) replacementString alternativeStrings: (NSArray *) alternativeStrings ;
+(NSTextCheckingResult *) quoteCheckingResultWithRange: (NSRange) range replacementString: (NSString *) replacementString ;
+(NSTextCheckingResult *) spellCheckingResultWithRange: (NSRange) range ;
+(NSTextCheckingResult *) dateCheckingResultWithRange: (NSRange) range date: (NSDate *) date timeZone: (NSTimeZone *) timeZone duration: (NSTimeInterval) duration ;
+(NSTextCheckingResult *) phoneNumberCheckingResultWithRange: (NSRange) range phoneNumber: (NSString *) phoneNumber ;
+(NSTextCheckingResult *) correctionCheckingResultWithRange: (NSRange) range replacementString: (NSString *) replacementString ;
+(NSTextCheckingResult *) linkCheckingResultWithRange: (NSRange) range URL: (NSURL *) url ;
+(NSTextCheckingResult *) dateCheckingResultWithRange: (NSRange) range date: (NSDate *) date ;
+(NSTextCheckingResult *) grammarCheckingResultWithRange: (NSRange) range details: (NSArray *) details ;
+(NSTextCheckingResult *) replacementCheckingResultWithRange: (NSRange) range replacementString: (NSString *) replacementString ;
@end
@protocol NSTextCheckingResultNSTextCheckingResultOptionalCategoryInstanceExports<JSExport>
@property (readonly) NSUInteger numberOfRanges;
@property (readonly,copy) NSArray * grammarDetails;
@property (readonly,copy) NSOrthography * orthography;
@property (readonly,copy) NSRegularExpression * regularExpression;
@property (readonly,copy) NSURL * URL;
@property (readonly,copy) NSString * replacementString;
@property (readonly) NSTimeInterval duration;
@property (readonly,copy) NSString * phoneNumber;
@property (readonly,copy) NSDictionary * components;
@property (readonly,copy) NSArray * alternativeStrings;
@property (readonly,copy) NSDate * date;
@property (readonly,copy) NSTimeZone * timeZone;
@property (readonly,copy) NSDictionary * addressComponents;
-(NSRange) rangeAtIndex: (NSUInteger) idx ;
-(NSRange) rangeWithName: (NSString *) name ;
-(NSTextCheckingResult *) resultByAdjustingRangesWithOffset: (NSInteger) offset ;
@end
@protocol NSTextCheckingResultNSTextCheckingResultOptionalCategoryClassExports<JSExport>
@end
@protocol NSTextCheckingResultInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSTextCheckingType resultType;
@property (readonly) NSRange range;
@end
@protocol NSTextCheckingResultClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop