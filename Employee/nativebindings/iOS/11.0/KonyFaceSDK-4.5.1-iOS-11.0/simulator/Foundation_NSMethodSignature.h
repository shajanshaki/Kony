#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSMethodSignature_symbols(JSContext*);
@protocol NSMethodSignatureInstanceExports<JSExport>
@property (readonly) NSUInteger numberOfArguments;
@property (readonly) NSUInteger methodReturnLength;
@property (readonly) NSUInteger frameLength;
-(BOOL) isOneway;
@end
@protocol NSMethodSignatureClassExports<JSExport>
@end
#pragma clang diagnostic pop