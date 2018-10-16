#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSPointerFunctions (Exports)
-(id) jsinitWithOptions: (NSPointerFunctionsOptions) options 
{
	id resultVal__;
	resultVal__ = [[self initWithOptions: options ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSPointerFunctions class], @protocol(NSPointerFunctionsInstanceExports));
	class_addProtocol([NSPointerFunctions class], @protocol(NSPointerFunctionsClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSPointerFunctionsStrongMemory"] = @0U;
	context[@"NSPointerFunctionsOpaqueMemory"] = @2U;
	context[@"NSPointerFunctionsMallocMemory"] = @3U;
	context[@"NSPointerFunctionsMachVirtualMemory"] = @4U;
	context[@"NSPointerFunctionsWeakMemory"] = @5U;
	context[@"NSPointerFunctionsObjectPersonality"] = @0U;
	context[@"NSPointerFunctionsOpaquePersonality"] = @256U;
	context[@"NSPointerFunctionsObjectPointerPersonality"] = @512U;
	context[@"NSPointerFunctionsCStringPersonality"] = @768U;
	context[@"NSPointerFunctionsStructPersonality"] = @1024U;
	context[@"NSPointerFunctionsIntegerPersonality"] = @1280U;
	context[@"NSPointerFunctionsCopyIn"] = @65536U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSPointerFunctions_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
