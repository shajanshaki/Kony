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
	class_addProtocol([NSEnergyFormatter class], @protocol(NSEnergyFormatterInstanceExports));
	class_addProtocol([NSEnergyFormatter class], @protocol(NSEnergyFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSEnergyFormatterUnitJoule"] = @11;
	context[@"NSEnergyFormatterUnitKilojoule"] = @14;
	context[@"NSEnergyFormatterUnitCalorie"] = @1793;
	context[@"NSEnergyFormatterUnitKilocalorie"] = @1794;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSEnergyFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
