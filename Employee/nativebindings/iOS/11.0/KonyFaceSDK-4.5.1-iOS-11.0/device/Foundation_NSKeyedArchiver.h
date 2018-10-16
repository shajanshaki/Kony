#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSKeyedArchiver_symbols(JSContext*);
@protocol NSKeyedUnarchiverInstanceExports<JSExport>
@property (readwrite) BOOL requiresSecureCoding;
@property (readwrite) NSDecodingFailurePolicy decodingFailurePolicy;
@property (assign) id delegate;
-(void) finishDecoding;
JSExportAs(initForReadingWithData,
-(id) jsinitForReadingWithData: (NSData *) data );
-(int64_t) decodeInt64ForKey: (NSString *) key ;
-(BOOL) decodeBoolForKey: (NSString *) key ;
JSExportAs(setClassForClassName,
-(void) jssetClass: (JSValue *) cls forClassName: (NSString *) codedName );
-(id) decodeObjectForKey: (NSString *) key ;
-(int) decodeIntForKey: (NSString *) key ;
-(double) decodeDoubleForKey: (NSString *) key ;
-(int32_t) decodeInt32ForKey: (NSString *) key ;
-(BOOL) containsValueForKey: (NSString *) key ;
-(id) classForClassName: (NSString *) codedName ;
-(float) decodeFloatForKey: (NSString *) key ;
@end
@protocol NSKeyedUnarchiverClassExports<JSExport>
JSExportAs(setClassForClassName,
+(void) jssetClass: (JSValue *) cls forClassName: (NSString *) codedName );
+(id) unarchiveObjectWithData: (NSData *) data ;
JSExportAs(unarchiveTopLevelObjectWithDataError,
+(id) jsunarchiveTopLevelObjectWithData: (NSData *) data error: (JSValue *) error );
+(id) unarchiveObjectWithFile: (NSString *) path ;
+(id) classForClassName: (NSString *) codedName ;
@end
@protocol NSObjectNSKeyedUnarchiverObjectSubstitutionCategoryInstanceExports<JSExport>
@end
@protocol NSObjectNSKeyedUnarchiverObjectSubstitutionCategoryClassExports<JSExport>
+(id) classForKeyedUnarchiver;
@end
@protocol NSObjectNSKeyedArchiverObjectSubstitutionCategoryInstanceExports<JSExport>
@property (readonly,getter=getJsClassForKeyedArchiver) JSValue* jsclassForKeyedArchiver;
-(id) replacementObjectForKeyedArchiver: (NSKeyedArchiver *) archiver ;
@end
@protocol NSObjectNSKeyedArchiverObjectSubstitutionCategoryClassExports<JSExport>
+(NSArray *) classFallbacksForKeyedArchiver;
@end
@protocol NSKeyedArchiverInstanceExports<JSExport>
@property (readwrite) BOOL requiresSecureCoding;
@property () NSPropertyListFormat outputFormat;
@property (assign) id delegate;
@property (readonly,strong) NSData * encodedData;
JSExportAs(initForWritingWithMutableData,
-(id) jsinitForWritingWithMutableData: (NSMutableData *) data );
JSExportAs(classNameForClass,
-(NSString *) jsclassNameForClass: (JSValue *) cls );
-(void) encodeBool: (BOOL) value forKey: (NSString *) key ;
-(void) encodeObject: (id) object forKey: (NSString *) key ;
-(void) encodeFloat: (float) value forKey: (NSString *) key ;
-(id) jsinit;
-(void) finishEncoding;
-(void) encodeInt: (int) value forKey: (NSString *) key ;
-(void) encodeDouble: (double) value forKey: (NSString *) key ;
JSExportAs(setClassNameForClass,
-(void) jssetClassName: (NSString *) codedName forClass: (JSValue *) cls );
-(void) encodeInt32: (int32_t) value forKey: (NSString *) key ;
-(void) encodeInt64: (int64_t) value forKey: (NSString *) key ;
-(void) encodeConditionalObject: (id) object forKey: (NSString *) key ;
@end
@protocol NSKeyedArchiverClassExports<JSExport>
JSExportAs(setClassNameForClass,
+(void) jssetClassName: (NSString *) codedName forClass: (JSValue *) cls );
+(NSData *) archivedDataWithRootObject: (id) rootObject ;
+(BOOL) archiveRootObject: (id) rootObject toFile: (NSString *) path ;
JSExportAs(classNameForClass,
+(NSString *) jsclassNameForClass: (JSValue *) cls );
@end
@protocol NSKeyedArchiverDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) archiver: (NSKeyedArchiver *) archiver didEncodeObject: (id) object ;
-(void) archiver: (NSKeyedArchiver *) archiver willReplaceObject: (id) object withObject: (id) newObject ;
-(void) archiverDidFinish: (NSKeyedArchiver *) archiver ;
-(void) archiverWillFinish: (NSKeyedArchiver *) archiver ;
-(id) archiver: (NSKeyedArchiver *) archiver willEncodeObject: (id) object ;
@end
@protocol NSKeyedArchiverDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSKeyedUnarchiverDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(id) unarchiver: (NSKeyedUnarchiver *) unarchiver didDecodeObject: (id) object ;
-(void) unarchiver: (NSKeyedUnarchiver *) unarchiver willReplaceObject: (id) object withObject: (id) newObject ;
-(void) unarchiverDidFinish: (NSKeyedUnarchiver *) unarchiver ;
-(id) unarchiver: (NSKeyedUnarchiver *) unarchiver cannotDecodeObjectOfClassName: (NSString *) name originalClasses: (NSArray *) classNames ;
-(void) unarchiverWillFinish: (NSKeyedUnarchiver *) unarchiver ;
@end
@protocol NSKeyedUnarchiverDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop