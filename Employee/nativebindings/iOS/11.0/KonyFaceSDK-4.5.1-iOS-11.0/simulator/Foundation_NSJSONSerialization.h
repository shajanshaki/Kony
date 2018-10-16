#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSJSONSerialization_symbols(JSContext*);
@protocol NSJSONSerializationInstanceExports<JSExport>
@end
@protocol NSJSONSerializationClassExports<JSExport>
JSExportAs(writeJSONObjectToStreamOptionsError,
+(NSInteger) jswriteJSONObject: (id) obj toStream: (NSOutputStream *) stream options: (NSJSONWritingOptions) opt error: (JSValue *) error );
JSExportAs(JSONObjectWithStreamOptionsError,
+(id) jsJSONObjectWithStream: (NSInputStream *) stream options: (NSJSONReadingOptions) opt error: (JSValue *) error );
JSExportAs(JSONObjectWithDataOptionsError,
+(id) jsJSONObjectWithData: (NSData *) data options: (NSJSONReadingOptions) opt error: (JSValue *) error );
+(BOOL) isValidJSONObject: (id) obj ;
JSExportAs(dataWithJSONObjectOptionsError,
+(NSData *) jsdataWithJSONObject: (id) obj options: (NSJSONWritingOptions) opt error: (JSValue *) error );
@end
#pragma clang diagnostic pop