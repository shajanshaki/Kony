#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSData_symbols(JSContext*);
@protocol NSDataInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSUInteger length;
@end
@protocol NSDataClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSDataNSExtendedDataCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * description;
-(BOOL) writeToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile ;
-(NSRange) rangeOfData: (NSData *) dataToFind options: (NSDataSearchOptions) mask range: (NSRange) searchRange ;
JSExportAs(writeToFileOptionsError,
-(BOOL) jswriteToFile: (NSString *) path options: (NSDataWritingOptions) writeOptionsMask error: (JSValue *) errorPtr );
-(BOOL) writeToURL: (NSURL *) url atomically: (BOOL) atomically ;
JSExportAs(writeToURLOptionsError,
-(BOOL) jswriteToURL: (NSURL *) url options: (NSDataWritingOptions) writeOptionsMask error: (JSValue *) errorPtr );
-(BOOL) isEqualToData: (NSData *) other ;
-(NSData *) subdataWithRange: (NSRange) range ;
@end
@protocol NSDataNSExtendedDataCategoryClassExports<JSExport>
@end
@protocol NSDataNSDataCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfFileOptionsError,
-(id) jsinitWithContentsOfFile: (NSString *) path options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr );
JSExportAs(initWithData,
-(id) jsinitWithData: (NSData *) data );
JSExportAs(initWithContentsOfURL,
-(id) jsinitWithContentsOfURL: (NSURL *) url );
JSExportAs(initWithContentsOfURLOptionsError,
-(id) jsinitWithContentsOfURL: (NSURL *) url options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr );
JSExportAs(initWithContentsOfFile,
-(id) jsinitWithContentsOfFile: (NSString *) path );
@end
@protocol NSDataNSDataCreationCategoryClassExports<JSExport>
+(id) dataWithContentsOfFile: (NSString *) path ;
+(id) dataWithContentsOfURL: (NSURL *) url ;
+(id) dataWithData: (NSData *) data ;
JSExportAs(dataWithContentsOfURLOptionsError,
+(id) jsdataWithContentsOfURL: (NSURL *) url options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr );
JSExportAs(dataWithContentsOfFileOptionsError,
+(id) jsdataWithContentsOfFile: (NSString *) path options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr );
+(id) data;
@end
@protocol NSMutableDataNSExtendedMutableDataCategoryInstanceExports<JSExport>
-(void) appendData: (NSData *) other ;
-(void) resetBytesInRange: (NSRange) range ;
-(void) increaseLengthBy: (NSUInteger) extraLength ;
-(void) setData: (NSData *) data ;
@end
@protocol NSMutableDataNSExtendedMutableDataCategoryClassExports<JSExport>
@end
@protocol NSMutableDataNSMutableDataCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) capacity );
JSExportAs(initWithLength,
-(id) jsinitWithLength: (NSUInteger) length );
@end
@protocol NSMutableDataNSMutableDataCreationCategoryClassExports<JSExport>
+(id) dataWithLength: (NSUInteger) length ;
+(id) dataWithCapacity: (NSUInteger) aNumItems ;
@end
@protocol NSMutableDataInstanceExports<JSExport>
@property () NSUInteger length;
@end
@protocol NSMutableDataClassExports<JSExport>
@end
@protocol NSDataNSDeprecatedCategoryInstanceExports<JSExport>
-(NSString *) base64Encoding;
JSExportAs(initWithBase64Encoding,
-(id) jsinitWithBase64Encoding: (NSString *) base64String );
JSExportAs(initWithContentsOfMappedFile,
-(id) jsinitWithContentsOfMappedFile: (NSString *) path );
@end
@protocol NSDataNSDeprecatedCategoryClassExports<JSExport>
+(id) dataWithContentsOfMappedFile: (NSString *) path ;
@end
@protocol NSPurgeableDataInstanceExports<JSExport, NSDiscardableContentInstanceExports_>
@end
@protocol NSPurgeableDataClassExports<JSExport, NSDiscardableContentClassExports_>
@end
@protocol NSDataNSDataBase64EncodingCategoryInstanceExports<JSExport>
-(NSData *) base64EncodedDataWithOptions: (NSDataBase64EncodingOptions) options ;
-(NSString *) base64EncodedStringWithOptions: (NSDataBase64EncodingOptions) options ;
JSExportAs(initWithBase64EncodedDataOptions,
-(id) jsinitWithBase64EncodedData: (NSData *) base64Data options: (NSDataBase64DecodingOptions) options );
JSExportAs(initWithBase64EncodedStringOptions,
-(id) jsinitWithBase64EncodedString: (NSString *) base64String options: (NSDataBase64DecodingOptions) options );
@end
@protocol NSDataNSDataBase64EncodingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop