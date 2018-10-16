#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSInvocation_symbols(JSContext*);
@protocol NSInvocationInstanceExports<JSExport>
@property (readonly) BOOL argumentsRetained;
@property (readonly,retain) NSMethodSignature * methodSignature;
@property (assign) id target;
@property (getter=getJsSelector,setter=setJsSelector:) NSString* jsselector;
-(void) invoke;
-(void) retainArguments;
-(void) invokeWithTarget: (id) target ;
@end
@protocol NSInvocationClassExports<JSExport>
+(NSInvocation *) invocationWithMethodSignature: (NSMethodSignature *) sig ;
@end
#pragma clang diagnostic pop