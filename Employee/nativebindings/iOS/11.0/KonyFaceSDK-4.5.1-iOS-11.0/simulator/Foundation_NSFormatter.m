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
	context[@"NSFormattingContextUnknown"] = @0L;
	context[@"NSFormattingContextDynamic"] = @1L;
	context[@"NSFormattingContextStandalone"] = @2L;
	context[@"NSFormattingContextListItem"] = @3L;
	context[@"NSFormattingContextBeginningOfSentence"] = @4L;
	context[@"NSFormattingContextMiddleOfSentence"] = @5L;

	context[@"NSFormattingUnitStyleShort"] = @1L;
	context[@"NSFormattingUnitStyleMedium"] = @2L;
	context[@"NSFormattingUnitStyleLong"] = @3L;

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
