#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSCoder_symbols(JSContext*);
@protocol NSCoderNSDeprecatedCategoryInstanceExports<JSExport>
@end
@protocol NSCoderNSDeprecatedCategoryClassExports<JSExport>
@end
@protocol NSCoderInstanceExports<JSExport>
-(NSInteger) versionForClassName: (NSString *) className ;
-(void) encodeDataObject: (NSData *) data ;
-(NSData *) decodeDataObject;
@end
@protocol NSCoderClassExports<JSExport>
@end
@protocol NSCoderNSExtendedCoderCategoryInstanceExports<JSExport>
@property (readonly) BOOL requiresSecureCoding;
@property (readonly,copy) NSSet * allowedClasses;
@property (readonly) NSDecodingFailurePolicy decodingFailurePolicy;
@property (readonly) unsigned int systemVersion;
@property (readonly,copy) NSError * error;
@property (readonly) BOOL allowsKeyedCoding;
JSExportAs(decodeObjectOfClassForKey,
-(id) jsdecodeObjectOfClass: (JSValue *) aClass forKey: (NSString *) key );
-(int64_t) decodeInt64ForKey: (NSString *) key ;
-(double) decodeDoubleForKey: (NSString *) key ;
-(void) encodeBool: (BOOL) value forKey: (NSString *) key ;
-(void) encodeConditionalObject: (id) object ;
-(void) failWithError: (NSError *) error ;
-(void) encodeFloat: (float) value forKey: (NSString *) key ;
-(void) encodeInt64: (int64_t) value forKey: (NSString *) key ;
-(void) encodeInt32: (int32_t) value forKey: (NSString *) key ;
-(void) encodeInteger: (NSInteger) value forKey: (NSString *) key ;
JSExportAs(decodeTopLevelObjectForKeyError,
-(id) jsdecodeTopLevelObjectForKey: (NSString *) key error: (JSValue *) error );
-(void) encodeBycopyObject: (id) anObject ;
-(void) encodeByrefObject: (id) anObject ;
-(int32_t) decodeInt32ForKey: (NSString *) key ;
-(void) encodeObject: (id) object ;
JSExportAs(decodeTopLevelObjectOfClassForKeyError,
-(id) jsdecodeTopLevelObjectOfClass: (JSValue *) aClass forKey: (NSString *) key error: (JSValue *) error );
-(BOOL) containsValueForKey: (NSString *) key ;
JSExportAs(decodeTopLevelObjectAndReturnError,
-(id) jsdecodeTopLevelObjectAndReturnError: (JSValue *) error );
-(float) decodeFloatForKey: (NSString *) key ;
-(id) decodeObjectForKey: (NSString *) key ;
-(void) encodeRootObject: (id) rootObject ;
-(BOOL) decodeBoolForKey: (NSString *) key ;
-(int) decodeIntForKey: (NSString *) key ;
-(void) encodeDouble: (double) value forKey: (NSString *) key ;
-(id) decodeObjectOfClasses: (NSSet *) classes forKey: (NSString *) key ;
-(void) encodeInt: (int) value forKey: (NSString *) key ;
JSExportAs(decodeTopLevelObjectOfClassesForKeyError,
-(id) jsdecodeTopLevelObjectOfClasses: (NSSet *) classes forKey: (NSString *) key error: (JSValue *) error );
-(void) encodeObject: (id) object forKey: (NSString *) key ;
-(id) decodeObject;
-(id) decodePropertyListForKey: (NSString *) key ;
-(NSInteger) decodeIntegerForKey: (NSString *) key ;
-(void) encodeConditionalObject: (id) object forKey: (NSString *) key ;
@end
@protocol NSCoderNSExtendedCoderCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop