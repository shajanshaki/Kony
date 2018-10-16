#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSPropertyList_symbols(JSContext*);
@protocol NSPropertyListSerializationInstanceExports<JSExport>
@end
@protocol NSPropertyListSerializationClassExports<JSExport>
+(BOOL) propertyList: (id) plist isValidForFormat: (NSPropertyListFormat) format ;
JSExportAs(writePropertyListToStreamFormatOptionsError,
+(NSInteger) jswritePropertyList: (id) plist toStream: (NSOutputStream *) stream format: (NSPropertyListFormat) format options: (NSPropertyListWriteOptions) opt error: (JSValue *) error );
JSExportAs(dataWithPropertyListFormatOptionsError,
+(NSData *) jsdataWithPropertyList: (id) plist format: (NSPropertyListFormat) format options: (NSPropertyListWriteOptions) opt error: (JSValue *) error );
@end
#pragma clang diagnostic pop