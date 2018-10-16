#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSProxy_symbols(JSContext*);
@protocol NSProxyInstanceExports<JSExport, NSObjectInstanceExports_>
@property (readonly,copy) NSString * debugDescription;
@property (readonly,copy) NSString * description;
-(void) finalize;
JSExportAs(methodSignatureForSelector,
-(NSMethodSignature *) jsmethodSignatureForSelector: (NSString *) sel );
-(void) forwardInvocation: (NSInvocation *) invocation ;
-(void) dealloc;
@end
@protocol NSProxyClassExports<JSExport, NSObjectClassExports_>
+(id) alloc;
JSExportAs(respondsToSelector,
+(BOOL) jsrespondsToSelector: (NSString *) aSelector );
+(id) class;
@end
#pragma clang diagnostic pop