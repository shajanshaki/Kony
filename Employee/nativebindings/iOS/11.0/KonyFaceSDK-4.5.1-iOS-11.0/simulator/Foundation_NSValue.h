#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSValue_symbols(JSContext*);
@protocol NSNumberNSNumberCreationCategoryInstanceExports<JSExport>
@end
@protocol NSNumberNSNumberCreationCategoryClassExports<JSExport>
+(NSNumber *) numberWithUnsignedInteger: (NSUInteger) value ;
+(NSNumber *) numberWithUnsignedShort: (unsigned short) value ;
+(NSNumber *) numberWithDouble: (double) value ;
+(NSNumber *) numberWithLongLong: (long long) value ;
+(NSNumber *) numberWithLong: (long) value ;
+(NSNumber *) numberWithChar: (char) value ;
+(NSNumber *) numberWithInt: (int) value ;
+(NSNumber *) numberWithUnsignedInt: (unsigned int) value ;
+(NSNumber *) numberWithUnsignedLong: (unsigned long) value ;
+(NSNumber *) numberWithShort: (short) value ;
+(NSNumber *) numberWithUnsignedChar: (unsigned char) value ;
+(NSNumber *) numberWithBool: (BOOL) value ;
+(NSNumber *) numberWithFloat: (float) value ;
+(NSNumber *) numberWithInteger: (NSInteger) value ;
+(NSNumber *) numberWithUnsignedLongLong: (unsigned long long) value ;
@end
@protocol NSValueNSValueExtensionMethodsCategoryInstanceExports<JSExport>
@property (readonly) id nonretainedObjectValue;
-(BOOL) isEqualToValue: (NSValue *) value ;
@end
@protocol NSValueNSValueExtensionMethodsCategoryClassExports<JSExport>
+(NSValue *) valueWithNonretainedObject: (id) anObject ;
@end
@protocol NSValueNSDeprecatedCategoryInstanceExports<JSExport>
@end
@protocol NSValueNSDeprecatedCategoryClassExports<JSExport>
@end
@protocol NSNumberInstanceExports<JSExport>
@property (readonly) long long longLongValue;
@property (readonly) unsigned long unsignedLongValue;
@property (readonly) BOOL boolValue;
@property (readonly) float floatValue;
@property (readonly) long longValue;
@property (readonly) double doubleValue;
@property (readonly) unsigned long long unsignedLongLongValue;
@property (readonly) int intValue;
@property (readonly) short shortValue;
@property (readonly) unsigned char unsignedCharValue;
@property (readonly) unsigned short unsignedShortValue;
@property (readonly) NSUInteger unsignedIntegerValue;
@property (readonly,copy) NSString * stringValue;
@property (readonly) unsigned int unsignedIntValue;
@property (readonly) NSInteger integerValue;
@property (readonly) char charValue;
JSExportAs(initWithUnsignedLong,
-(NSNumber *) jsinitWithUnsignedLong: (unsigned long) value );
JSExportAs(initWithLong,
-(NSNumber *) jsinitWithLong: (long) value );
JSExportAs(initWithInteger,
-(NSNumber *) jsinitWithInteger: (NSInteger) value );
JSExportAs(initWithDouble,
-(NSNumber *) jsinitWithDouble: (double) value );
JSExportAs(initWithChar,
-(NSNumber *) jsinitWithChar: (char) value );
JSExportAs(initWithLongLong,
-(NSNumber *) jsinitWithLongLong: (long long) value );
-(BOOL) isEqualToNumber: (NSNumber *) number ;
JSExportAs(initWithFloat,
-(NSNumber *) jsinitWithFloat: (float) value );
JSExportAs(initWithBool,
-(NSNumber *) jsinitWithBool: (BOOL) value );
-(NSString *) descriptionWithLocale: (id) locale ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
JSExportAs(initWithInt,
-(NSNumber *) jsinitWithInt: (int) value );
JSExportAs(initWithUnsignedChar,
-(NSNumber *) jsinitWithUnsignedChar: (unsigned char) value );
JSExportAs(initWithShort,
-(NSNumber *) jsinitWithShort: (short) value );
JSExportAs(initWithUnsignedInteger,
-(NSNumber *) jsinitWithUnsignedInteger: (NSUInteger) value );
JSExportAs(initWithUnsignedShort,
-(NSNumber *) jsinitWithUnsignedShort: (unsigned short) value );
JSExportAs(initWithUnsignedLongLong,
-(NSNumber *) jsinitWithUnsignedLongLong: (unsigned long long) value );
JSExportAs(initWithUnsignedInt,
-(NSNumber *) jsinitWithUnsignedInt: (unsigned int) value );
-(NSComparisonResult) compare: (NSNumber *) otherNumber ;
@end
@protocol NSNumberClassExports<JSExport>
@end
@protocol NSValueInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSValueClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSValueNSValueCreationCategoryInstanceExports<JSExport>
@end
@protocol NSValueNSValueCreationCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop