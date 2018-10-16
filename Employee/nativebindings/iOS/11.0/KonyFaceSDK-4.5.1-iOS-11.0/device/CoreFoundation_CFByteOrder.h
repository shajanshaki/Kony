#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreFoundation_CFByteOrder_symbols(JSContext*);
@interface JSValue (CoreFoundation_CFByteOrder)
+(JSValue*) valueWithCFSwappedFloat64: (CFSwappedFloat64) s inContext: (JSContext*) context;
-(CFSwappedFloat64) toCFSwappedFloat64;
+(JSValue*) valueWithCFSwappedFloat32: (CFSwappedFloat32) s inContext: (JSContext*) context;
-(CFSwappedFloat32) toCFSwappedFloat32;
@end
#pragma clang diagnostic pop