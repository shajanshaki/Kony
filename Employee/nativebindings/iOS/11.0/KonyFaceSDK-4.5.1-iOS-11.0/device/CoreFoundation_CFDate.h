#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreFoundation_CFDate_symbols(JSContext*);
@interface JSValue (CoreFoundation_CFDate)
+(JSValue*) valueWithCFGregorianUnits: (CFGregorianUnits) s inContext: (JSContext*) context;
-(CFGregorianUnits) toCFGregorianUnits;
+(JSValue*) valueWithCFGregorianDate: (CFGregorianDate) s inContext: (JSContext*) context;
-(CFGregorianDate) toCFGregorianDate;
@end
#pragma clang diagnostic pop