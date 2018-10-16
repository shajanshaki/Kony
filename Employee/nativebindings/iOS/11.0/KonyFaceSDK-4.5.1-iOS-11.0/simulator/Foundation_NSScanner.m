#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSScanner (Exports)
-(id) jsinitWithString: (NSString *) string 
{
	id resultVal__;
	resultVal__ = [[self initWithString: string ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSScanner class], @protocol(NSScannerInstanceExports));
	class_addProtocol([NSScanner class], @protocol(NSScannerClassExports));
	class_addProtocol([NSScanner class], @protocol(NSScannerNSExtendedScannerCategoryInstanceExports));
	class_addProtocol([NSScanner class], @protocol(NSScannerNSExtendedScannerCategoryClassExports));
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
void load_Foundation_NSScanner_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
