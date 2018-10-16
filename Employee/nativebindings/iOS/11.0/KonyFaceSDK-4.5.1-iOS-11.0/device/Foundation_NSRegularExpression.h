#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSRegularExpression_symbols(JSContext*);
@protocol NSRegularExpressionNSReplacementCategoryInstanceExports<JSExport>
-(NSUInteger) replaceMatchesInString: (NSMutableString *) string options: (NSMatchingOptions) options range: (NSRange) range withTemplate: (NSString *) templ ;
-(NSString *) stringByReplacingMatchesInString: (NSString *) string options: (NSMatchingOptions) options range: (NSRange) range withTemplate: (NSString *) templ ;
-(NSString *) replacementStringForResult: (NSTextCheckingResult *) result inString: (NSString *) string offset: (NSInteger) offset template: (NSString *) templ ;
@end
@protocol NSRegularExpressionNSReplacementCategoryClassExports<JSExport>
+(NSString *) escapedTemplateForString: (NSString *) string ;
@end
@protocol NSDataDetectorInstanceExports<JSExport>
@property (readonly) NSTextCheckingTypes checkingTypes;
JSExportAs(initWithTypesError,
-(id) jsinitWithTypes: (NSTextCheckingTypes) checkingTypes error: (JSValue *) error );
@end
@protocol NSDataDetectorClassExports<JSExport>
JSExportAs(dataDetectorWithTypesError,
+(NSDataDetector *) jsdataDetectorWithTypes: (NSTextCheckingTypes) checkingTypes error: (JSValue *) error );
@end
@protocol NSRegularExpressionInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSString * pattern;
@property (readonly) NSRegularExpressionOptions options;
@property (readonly) NSUInteger numberOfCaptureGroups;
JSExportAs(initWithPatternOptionsError,
-(id) jsinitWithPattern: (NSString *) pattern options: (NSRegularExpressionOptions) options error: (JSValue *) error );
@end
@protocol NSRegularExpressionClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
JSExportAs(regularExpressionWithPatternOptionsError,
+(NSRegularExpression *) jsregularExpressionWithPattern: (NSString *) pattern options: (NSRegularExpressionOptions) options error: (JSValue *) error );
+(NSString *) escapedPatternForString: (NSString *) string ;
@end
@protocol NSRegularExpressionNSMatchingCategoryInstanceExports<JSExport>
-(NSUInteger) numberOfMatchesInString: (NSString *) string options: (NSMatchingOptions) options range: (NSRange) range ;
JSExportAs(enumerateMatchesInStringOptionsRangeUsingBlock,
-(void) jsenumerateMatchesInString: (NSString *) string options: (NSMatchingOptions) options range: (NSRange) range usingBlock: (JSValue *) block );
-(NSRange) rangeOfFirstMatchInString: (NSString *) string options: (NSMatchingOptions) options range: (NSRange) range ;
-(NSArray *) matchesInString: (NSString *) string options: (NSMatchingOptions) options range: (NSRange) range ;
-(NSTextCheckingResult *) firstMatchInString: (NSString *) string options: (NSMatchingOptions) options range: (NSRange) range ;
@end
@protocol NSRegularExpressionNSMatchingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop