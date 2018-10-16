#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSNumberFormatter_symbols(JSContext*);
@protocol NSNumberFormatterInstanceExports<JSExport>
@property (copy) NSString * paddingCharacter;
@property (copy) NSString * internationalCurrencySymbol;
@property (copy) NSLocale * locale;
@property (copy) NSNumber * multiplier;
@property () NSUInteger formatWidth;
@property () BOOL usesGroupingSeparator;
@property (copy) NSDictionary * textAttributesForNegativeValues;
@property (copy) NSDictionary * textAttributesForZero;
@property (copy) NSString * notANumberSymbol;
@property (getter=isPartialStringValidationEnabled) BOOL partialStringValidationEnabled;
@property (copy) NSString * negativeInfinitySymbol;
@property (copy) NSString * negativeSuffix;
@property (copy) NSString * groupingSeparator;
@property (copy) NSString * perMillSymbol;
@property (copy) NSString * currencyCode;
@property (copy) NSDictionary * textAttributesForNegativeInfinity;
@property () BOOL usesSignificantDigits;
@property () NSNumberFormatterBehavior formatterBehavior;
@property (copy) NSString * currencyGroupingSeparator;
@property (copy) NSString * plusSign;
@property (copy) NSNumber * minimum;
@property (copy) NSString * percentSymbol;
@property () BOOL allowsFloats;
@property () NSNumberFormatterStyle numberStyle;
@property (copy) NSDictionary * textAttributesForPositiveValues;
@property () BOOL generatesDecimalNumbers;
@property (copy) NSString * positiveInfinitySymbol;
@property (copy) NSString * positiveFormat;
@property (copy) NSString * exponentSymbol;
@property (copy) NSDictionary * textAttributesForNil;
@property (copy) NSNumber * roundingIncrement;
@property (copy) NSString * negativePrefix;
@property () NSNumberFormatterPadPosition paddingPosition;
@property (copy) NSDictionary * textAttributesForNotANumber;
@property (copy) NSString * nilSymbol;
@property (copy) NSString * currencySymbol;
@property () NSUInteger maximumSignificantDigits;
@property (copy) NSDictionary * textAttributesForPositiveInfinity;
@property () NSUInteger maximumIntegerDigits;
@property () NSUInteger minimumFractionDigits;
@property () NSUInteger maximumFractionDigits;
@property () NSUInteger minimumIntegerDigits;
@property (copy) NSString * decimalSeparator;
@property (copy) NSString * negativeFormat;
@property () NSFormattingContext formattingContext;
@property () BOOL alwaysShowsDecimalSeparator;
@property () NSUInteger secondaryGroupingSize;
@property (copy) NSString * positiveSuffix;
@property (copy) NSNumber * maximum;
@property (copy) NSString * currencyDecimalSeparator;
@property (copy) NSString * positivePrefix;
@property () NSNumberFormatterRoundingMode roundingMode;
@property () NSUInteger minimumSignificantDigits;
@property () NSUInteger groupingSize;
@property (copy) NSString * zeroSymbol;
@property (copy) NSString * minusSign;
@property (getter=isLenient) BOOL lenient;
-(NSString *) stringFromNumber: (NSNumber *) number ;
-(NSNumber *) numberFromString: (NSString *) string ;
@end
@protocol NSNumberFormatterClassExports<JSExport>
+(void) setDefaultFormatterBehavior: (NSNumberFormatterBehavior) behavior ;
+(NSString *) localizedStringFromNumber: (NSNumber *) num numberStyle: (NSNumberFormatterStyle) nstyle ;
+(NSNumberFormatterBehavior) defaultFormatterBehavior;
@end
#pragma clang diagnostic pop