#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSString_symbols(JSContext*);
@protocol NSStringInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSUInteger length;
-(id) jsinit;
-(unichar) characterAtIndex: (NSUInteger) index ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSStringClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSConstantStringInstanceExports<JSExport>
@end
@protocol NSConstantStringClassExports<JSExport>
@end
@protocol NSStringNSItemProviderCategoryInstanceExports<JSExport, NSItemProviderReadingInstanceExports_, NSItemProviderWritingInstanceExports_>
@end
@protocol NSStringNSItemProviderCategoryClassExports<JSExport, NSItemProviderReadingClassExports_, NSItemProviderWritingClassExports_>
@end
@protocol NSStringNSExtendedStringPropertyListParsingCategoryInstanceExports<JSExport>
-(NSDictionary *) propertyListFromStringsFileFormat;
-(id) propertyList;
@end
@protocol NSStringNSExtendedStringPropertyListParsingCategoryClassExports<JSExport>
@end
@protocol NSStringNSStringExtensionMethodsCategoryInstanceExports<JSExport>
@property (readonly) NSUInteger hash;
@property (readonly,copy) NSString * localizedUppercaseString;
@property (readonly) NSStringEncoding smallestEncoding;
@property (readonly,copy) NSString * localizedLowercaseString;
@property (readonly,copy) NSString * capitalizedString;
@property (readonly,copy) NSString * description;
@property (readonly) float floatValue;
@property (readonly,copy) NSString * uppercaseString;
@property (readonly) int intValue;
@property (readonly) double doubleValue;
@property (readonly,copy) NSString * precomposedStringWithCompatibilityMapping;
@property (readonly) BOOL boolValue;
@property (readonly,copy) NSString * localizedCapitalizedString;
@property (readonly,copy) NSString * precomposedStringWithCanonicalMapping;
@property (readonly,copy) NSString * decomposedStringWithCanonicalMapping;
@property (readonly,copy) NSString * decomposedStringWithCompatibilityMapping;
@property (readonly,copy) NSString * lowercaseString;
@property (readonly) NSInteger integerValue;
@property (readonly) long long longLongValue;
@property (readonly) NSStringEncoding fastestEncoding;
-(NSComparisonResult) localizedCaseInsensitiveCompare: (NSString *) string ;
-(NSString *) commonPrefixWithString: (NSString *) str options: (NSStringCompareOptions) mask ;
-(NSString *) lowercaseStringWithLocale: (NSLocale *) locale ;
-(BOOL) containsString: (NSString *) str ;
JSExportAs(initWithContentsOfFileEncodingError,
-(id) jsinitWithContentsOfFile: (NSString *) path encoding: (NSStringEncoding) enc error: (JSValue *) error );
JSExportAs(initWithFormatLocale,
-(id) jsinitWithFormat: (NSString *) format locale: (id) locale arguments: (NSArray *) args );
-(NSString *) substringWithRange: (NSRange) range ;
-(NSRange) rangeOfComposedCharacterSequencesForRange: (NSRange) range ;
-(NSRange) rangeOfCharacterFromSet: (NSCharacterSet *) searchSet options: (NSStringCompareOptions) mask ;
-(NSString *) stringByApplyingTransform: (NSStringTransform) transform reverse: (BOOL) reverse ;
-(NSString *) stringByReplacingOccurrencesOfString: (NSString *) target withString: (NSString *) replacement options: (NSStringCompareOptions) options range: (NSRange) searchRange ;
JSExportAs(initWithDataEncoding,
-(id) jsinitWithData: (NSData *) data encoding: (NSStringEncoding) encoding );
-(NSComparisonResult) caseInsensitiveCompare: (NSString *) string ;
-(NSString *) stringByReplacingCharactersInRange: (NSRange) range withString: (NSString *) replacement ;
-(NSComparisonResult) compare: (NSString *) string options: (NSStringCompareOptions) mask ;
-(NSString *) stringByFoldingWithOptions: (NSStringCompareOptions) options locale: (NSLocale *) locale ;
JSExportAs(initWithFormat,
-(id) jsinitWithFormat: (NSString *) format arguments: (NSArray *) args );
-(NSRange) localizedStandardRangeOfString: (NSString *) str ;
-(NSString *) stringByAppendingString: (NSString *) aString ;
-(NSString *) capitalizedStringWithLocale: (NSLocale *) locale ;
-(NSRange) rangeOfCharacterFromSet: (NSCharacterSet *) searchSet ;
-(NSData *) dataUsingEncoding: (NSStringEncoding) encoding ;
-(NSRange) rangeOfCharacterFromSet: (NSCharacterSet *) searchSet options: (NSStringCompareOptions) mask range: (NSRange) rangeOfReceiverToSearch ;
-(NSData *) dataUsingEncoding: (NSStringEncoding) encoding allowLossyConversion: (BOOL) lossy ;
-(NSComparisonResult) localizedStandardCompare: (NSString *) string ;
-(NSArray *) componentsSeparatedByCharactersInSet: (NSCharacterSet *) separator ;
-(NSRange) lineRangeForRange: (NSRange) range ;
-(NSUInteger) lengthOfBytesUsingEncoding: (NSStringEncoding) enc ;
-(NSString *) substringToIndex: (NSUInteger) to ;
JSExportAs(writeToFileAtomicallyEncodingError,
-(BOOL) jswriteToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile encoding: (NSStringEncoding) enc error: (JSValue *) error );
-(BOOL) hasSuffix: (NSString *) str ;
-(NSRange) rangeOfString: (NSString *) searchString options: (NSStringCompareOptions) mask range: (NSRange) rangeOfReceiverToSearch locale: (NSLocale *) locale ;
-(NSComparisonResult) localizedCompare: (NSString *) string ;
-(NSRange) rangeOfString: (NSString *) searchString options: (NSStringCompareOptions) mask range: (NSRange) rangeOfReceiverToSearch ;
-(BOOL) localizedCaseInsensitiveContainsString: (NSString *) str ;
-(BOOL) hasPrefix: (NSString *) str ;
-(NSArray *) componentsSeparatedByString: (NSString *) separator ;
-(NSUInteger) maximumLengthOfBytesUsingEncoding: (NSStringEncoding) enc ;
-(NSString *) stringByTrimmingCharactersInSet: (NSCharacterSet *) set ;
-(NSString *) stringByReplacingOccurrencesOfString: (NSString *) target withString: (NSString *) replacement ;
JSExportAs(initWithContentsOfURLEncodingError,
-(id) jsinitWithContentsOfURL: (NSURL *) url encoding: (NSStringEncoding) enc error: (JSValue *) error );
-(BOOL) canBeConvertedToEncoding: (NSStringEncoding) encoding ;
-(NSRange) rangeOfString: (NSString *) searchString options: (NSStringCompareOptions) mask ;
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) aString );
-(NSComparisonResult) compare: (NSString *) string options: (NSStringCompareOptions) mask range: (NSRange) rangeOfReceiverToCompare locale: (id) locale ;
-(NSRange) rangeOfString: (NSString *) searchString ;
-(NSComparisonResult) compare: (NSString *) string options: (NSStringCompareOptions) mask range: (NSRange) rangeOfReceiverToCompare ;
-(BOOL) localizedStandardContainsString: (NSString *) str ;
JSExportAs(stringByAppendingFormat,
-(NSString *) jsstringByAppendingFormat: (NSString *) format arguments: (NSArray *) args );
-(BOOL) isEqualToString: (NSString *) aString ;
-(NSRange) rangeOfComposedCharacterSequenceAtIndex: (NSUInteger) index ;
JSExportAs(writeToURLAtomicallyEncodingError,
-(BOOL) jswriteToURL: (NSURL *) url atomically: (BOOL) useAuxiliaryFile encoding: (NSStringEncoding) enc error: (JSValue *) error );
-(NSString *) stringByPaddingToLength: (NSUInteger) newLength withString: (NSString *) padString startingAtIndex: (NSUInteger) padIndex ;
-(NSString *) substringFromIndex: (NSUInteger) from ;
-(NSRange) paragraphRangeForRange: (NSRange) range ;
-(NSComparisonResult) compare: (NSString *) string ;
-(NSString *) uppercaseStringWithLocale: (NSLocale *) locale ;
@end
@protocol NSStringNSStringExtensionMethodsCategoryClassExports<JSExport>
+(NSStringEncoding) defaultCStringEncoding;
JSExportAs(localizedStringWithFormat,
+(id) jslocalizedStringWithFormat: (NSString *) format arguments: (NSArray *) args );
+(id) string;
+(NSString *) localizedNameOfStringEncoding: (NSStringEncoding) encoding ;
+(id) stringWithString: (NSString *) string ;
JSExportAs(stringWithFormat,
+(id) jsstringWithFormat: (NSString *) format arguments: (NSArray *) args );
JSExportAs(stringWithContentsOfURLEncodingError,
+(id) jsstringWithContentsOfURL: (NSURL *) url encoding: (NSStringEncoding) enc error: (JSValue *) error );
JSExportAs(stringWithContentsOfFileEncodingError,
+(id) jsstringWithContentsOfFile: (NSString *) path encoding: (NSStringEncoding) enc error: (JSValue *) error );
@end
@protocol NSStringNSStringDeprecatedCategoryInstanceExports<JSExport>
-(BOOL) writeToURL: (NSURL *) url atomically: (BOOL) atomically ;
JSExportAs(initWithContentsOfURL,
-(id) jsinitWithContentsOfURL: (NSURL *) url );
-(BOOL) writeToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile ;
-(NSUInteger) cStringLength;
JSExportAs(initWithContentsOfFile,
-(id) jsinitWithContentsOfFile: (NSString *) path );
@end
@protocol NSStringNSStringDeprecatedCategoryClassExports<JSExport>
+(id) stringWithContentsOfFile: (NSString *) path ;
+(id) stringWithContentsOfURL: (NSURL *) url ;
@end
@protocol NSMutableStringNSMutableStringExtensionMethodsCategoryInstanceExports<JSExport>
-(void) insertString: (NSString *) aString atIndex: (NSUInteger) loc ;
-(void) appendString: (NSString *) aString ;
JSExportAs(initWithCapacity,
-(NSMutableString *) jsinitWithCapacity: (NSUInteger) capacity );
-(NSUInteger) replaceOccurrencesOfString: (NSString *) target withString: (NSString *) replacement options: (NSStringCompareOptions) options range: (NSRange) searchRange ;
-(void) setString: (NSString *) aString ;
JSExportAs(appendFormat,
-(void) jsappendFormat: (NSString *) format arguments: (NSArray *) args );
-(void) deleteCharactersInRange: (NSRange) range ;
@end
@protocol NSMutableStringNSMutableStringExtensionMethodsCategoryClassExports<JSExport>
+(NSMutableString *) stringWithCapacity: (NSUInteger) capacity ;
@end
@protocol NSStringNSStringEncodingDetectionCategoryInstanceExports<JSExport>
@end
@protocol NSStringNSStringEncodingDetectionCategoryClassExports<JSExport>
@end
@protocol NSSimpleCStringInstanceExports<JSExport>
@end
@protocol NSSimpleCStringClassExports<JSExport>
@end
@protocol NSMutableStringInstanceExports<JSExport>
-(void) replaceCharactersInRange: (NSRange) range withString: (NSString *) aString ;
@end
@protocol NSMutableStringClassExports<JSExport>
@end
#pragma clang diagnostic pop