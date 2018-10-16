#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSAutoreleasePool_symbols(JSContext*);
@protocol NSAutoreleasePoolInstanceExports<JSExport>
-(void) addObject: (id) anObject ;
-(void) drain;
@end
@protocol NSAutoreleasePoolClassExports<JSExport>
+(void) addObject: (id) anObject ;
@end
#pragma clang diagnostic pop