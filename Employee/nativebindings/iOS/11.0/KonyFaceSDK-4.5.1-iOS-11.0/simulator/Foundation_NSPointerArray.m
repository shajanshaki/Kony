#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSPointerArray (Exports)
-(id) jsinitWithOptions: (NSPointerFunctionsOptions) options 
{
	id resultVal__;
	resultVal__ = [[self initWithOptions: options ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithPointerFunctions: (NSPointerFunctions *) functions 
{
	id resultVal__;
	resultVal__ = [[self initWithPointerFunctions: functions ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSPointerArray class], @protocol(NSPointerArrayInstanceExports));
	class_addProtocol([NSPointerArray class], @protocol(NSPointerArrayClassExports));
	class_addProtocol([NSPointerArray class], @protocol(NSPointerArrayNSPointerArrayConveniencesCategoryInstanceExports));
	class_addProtocol([NSPointerArray class], @protocol(NSPointerArrayNSPointerArrayConveniencesCategoryClassExports));
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
void load_Foundation_NSPointerArray_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
