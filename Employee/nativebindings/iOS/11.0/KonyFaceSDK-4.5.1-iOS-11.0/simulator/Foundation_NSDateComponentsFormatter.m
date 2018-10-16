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
	class_addProtocol([NSDateComponentsFormatter class], @protocol(NSDateComponentsFormatterInstanceExports));
	class_addProtocol([NSDateComponentsFormatter class], @protocol(NSDateComponentsFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSDateComponentsFormatterUnitsStylePositional"] = @0L;
	context[@"NSDateComponentsFormatterUnitsStyleAbbreviated"] = @1L;
	context[@"NSDateComponentsFormatterUnitsStyleShort"] = @2L;
	context[@"NSDateComponentsFormatterUnitsStyleFull"] = @3L;
	context[@"NSDateComponentsFormatterUnitsStyleSpellOut"] = @4L;
	context[@"NSDateComponentsFormatterUnitsStyleBrief"] = @5L;

	context[@"NSDateComponentsFormatterZeroFormattingBehaviorNone"] = @0UL;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorDefault"] = @1UL;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorDropLeading"] = @2UL;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorDropMiddle"] = @4UL;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorDropTrailing"] = @8UL;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorDropAll"] = @14UL;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorPad"] = @65536UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSDateComponentsFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
