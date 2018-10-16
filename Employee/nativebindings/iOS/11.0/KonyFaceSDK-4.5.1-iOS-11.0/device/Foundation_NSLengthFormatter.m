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
	class_addProtocol([NSLengthFormatter class], @protocol(NSLengthFormatterInstanceExports));
	class_addProtocol([NSLengthFormatter class], @protocol(NSLengthFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSLengthFormatterUnitMillimeter"] = @8;
	context[@"NSLengthFormatterUnitCentimeter"] = @9;
	context[@"NSLengthFormatterUnitMeter"] = @11;
	context[@"NSLengthFormatterUnitKilometer"] = @14;
	context[@"NSLengthFormatterUnitInch"] = @1281;
	context[@"NSLengthFormatterUnitFoot"] = @1282;
	context[@"NSLengthFormatterUnitYard"] = @1283;
	context[@"NSLengthFormatterUnitMile"] = @1284;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSLengthFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
