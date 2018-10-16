#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreFoundation_CFBase_symbols(JSContext*);
@interface JSValue (CoreFoundation_CFBase)
+(JSValue*) valueWithCFRange: (CFRange) s inContext: (JSContext*) context;
-(CFRange) toCFRange;
@end
#pragma clang diagnostic pop