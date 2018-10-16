#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreFoundation_CFStream_symbols(JSContext*);
@interface JSValue (CoreFoundation_CFStream)
+(JSValue*) valueWithCFStreamError: (CFStreamError) s inContext: (JSContext*) context;
-(CFStreamError) toCFStreamError;
@end
#pragma clang diagnostic pop