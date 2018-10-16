#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSInvocation (Exports)
-(NSString *) getJsSelector
{
	return NSStringFromSelector(self.selector);
}
-(void) setJsSelector: (NSString *) value
{
	self.selector = NSSelectorFromString(value);
}
@end
static void addProtocols()
{
	class_addProtocol([NSInvocation class], @protocol(NSInvocationInstanceExports));
	class_addProtocol([NSInvocation class], @protocol(NSInvocationClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSInvocation_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
