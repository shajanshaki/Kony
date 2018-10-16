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
	class_addProtocol([NSValueTransformer class], @protocol(NSValueTransformerInstanceExports));
	class_addProtocol([NSValueTransformer class], @protocol(NSValueTransformerClassExports));
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
	p = (void*) &NSKeyedUnarchiveFromDataTransformerName;
	if (p != NULL) context[@"NSKeyedUnarchiveFromDataTransformerName"] = NSKeyedUnarchiveFromDataTransformerName;
	p = (void*) &NSIsNilTransformerName;
	if (p != NULL) context[@"NSIsNilTransformerName"] = NSIsNilTransformerName;
	p = (void*) &NSIsNotNilTransformerName;
	if (p != NULL) context[@"NSIsNotNilTransformerName"] = NSIsNotNilTransformerName;
	p = (void*) &NSNegateBooleanTransformerName;
	if (p != NULL) context[@"NSNegateBooleanTransformerName"] = NSNegateBooleanTransformerName;
	p = (void*) &NSUnarchiveFromDataTransformerName;
	if (p != NULL) context[@"NSUnarchiveFromDataTransformerName"] = NSUnarchiveFromDataTransformerName;
}
void load_Foundation_NSValueTransformer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
