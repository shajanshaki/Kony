#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSFormatter (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSFormatter class], @protocol(NSFormatterInstanceExports));
	class_addProtocol([NSFormatter class], @protocol(NSFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSFormattingContextUnknown"] = @0;
	context[@"NSFormattingContextDynamic"] = @1;
	context[@"NSFormattingContextStandalone"] = @2;
	context[@"NSFormattingContextListItem"] = @3;
	context[@"NSFormattingContextBeginningOfSentence"] = @4;
	context[@"NSFormattingContextMiddleOfSentence"] = @5;

	context[@"NSFormattingUnitStyleShort"] = @1;
	context[@"NSFormattingUnitStyleMedium"] = @2;
	context[@"NSFormattingUnitStyleLong"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
