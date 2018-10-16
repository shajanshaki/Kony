#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([NSDateIntervalFormatter class], @protocol(NSDateIntervalFormatterInstanceExports));
	class_addProtocol([NSDateIntervalFormatter class], @protocol(NSDateIntervalFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSDateIntervalFormatterNoStyle"] = @0U;
	context[@"NSDateIntervalFormatterShortStyle"] = @1U;
	context[@"NSDateIntervalFormatterMediumStyle"] = @2U;
	context[@"NSDateIntervalFormatterLongStyle"] = @3U;
	context[@"NSDateIntervalFormatterFullStyle"] = @4U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSDateIntervalFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
