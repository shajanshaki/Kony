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
	class_addProtocol([NSMassFormatter class], @protocol(NSMassFormatterInstanceExports));
	class_addProtocol([NSMassFormatter class], @protocol(NSMassFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSMassFormatterUnitGram"] = @11;
	context[@"NSMassFormatterUnitKilogram"] = @14;
	context[@"NSMassFormatterUnitOunce"] = @1537;
	context[@"NSMassFormatterUnitPound"] = @1538;
	context[@"NSMassFormatterUnitStone"] = @1539;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSMassFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
