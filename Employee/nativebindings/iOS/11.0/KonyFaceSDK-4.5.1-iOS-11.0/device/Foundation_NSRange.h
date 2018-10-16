#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSRange_symbols(JSContext*);
@protocol NSValueNSValueRangeExtensionsCategoryInstanceExports<JSExport>
@property (readonly) NSRange rangeValue;
@end
@protocol NSValueNSValueRangeExtensionsCategoryClassExports<JSExport>
+(NSValue *) valueWithRange: (NSRange) range ;
@end
#pragma clang diagnostic pop