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
	context[@"NSPointerFunctionsStrongMemory"] = @0UL;
	context[@"NSPointerFunctionsOpaqueMemory"] = @2UL;
	context[@"NSPointerFunctionsMallocMemory"] = @3UL;
	context[@"NSPointerFunctionsMachVirtualMemory"] = @4UL;
	context[@"NSPointerFunctionsWeakMemory"] = @5UL;
	context[@"NSPointerFunctionsObjectPersonality"] = @0UL;
	context[@"NSPointerFunctionsOpaquePersonality"] = @256UL;
	context[@"NSPointerFunctionsObjectPointerPersonality"] = @512UL;
	context[@"NSPointerFunctionsCStringPersonality"] = @768UL;
	context[@"NSPointerFunctionsStructPersonality"] = @1024UL;
	context[@"NSPointerFunctionsIntegerPersonality"] = @1280UL;
	context[@"NSPointerFunctionsCopyIn"] = @65536UL;

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
