#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSPointerFunctions_symbols(JSContext*);
@protocol NSPointerFunctionsInstanceExports<JSExport, NSCopyingInstanceExports_>
@property () BOOL usesStrongWriteBarrier;
@property () BOOL usesWeakReadAndWriteBarriers;
JSExportAs(initWithOptions,
-(id) jsinitWithOptions: (NSPointerFunctionsOptions) options );
@end
@protocol NSPointerFunctionsClassExports<JSExport, NSCopyingClassExports_>
+(NSPointerFunctions *) pointerFunctionsWithOptions: (NSPointerFunctionsOptions) options ;
@end
#pragma clang diagnostic pop