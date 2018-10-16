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
	class_addProtocol([NSDateFormatter class], @protocol(NSDateFormatterInstanceExports));
	class_addProtocol([NSDateFormatter class], @protocol(NSDateFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSDateFormatterNoStyle"] = @0UL;
	context[@"NSDateFormatterShortStyle"] = @1UL;
	context[@"NSDateFormatterMediumStyle"] = @2UL;
	context[@"NSDateFormatterLongStyle"] = @3UL;
	context[@"NSDateFormatterFullStyle"] = @4UL;

	context[@"NSDateFormatterBehaviorDefault"] = @0UL;
	context[@"NSDateFormatterBehavior10_4"] = @1040UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSDateFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
