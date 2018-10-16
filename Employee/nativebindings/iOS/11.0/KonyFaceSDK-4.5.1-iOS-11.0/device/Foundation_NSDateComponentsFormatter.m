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
	context[@"NSDateComponentsFormatterUnitsStylePositional"] = @0;
	context[@"NSDateComponentsFormatterUnitsStyleAbbreviated"] = @1;
	context[@"NSDateComponentsFormatterUnitsStyleShort"] = @2;
	context[@"NSDateComponentsFormatterUnitsStyleFull"] = @3;
	context[@"NSDateComponentsFormatterUnitsStyleSpellOut"] = @4;
	context[@"NSDateComponentsFormatterUnitsStyleBrief"] = @5;

	context[@"NSDateComponentsFormatterZeroFormattingBehaviorNone"] = @0U;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorDefault"] = @1U;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorDropLeading"] = @2U;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorDropMiddle"] = @4U;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorDropTrailing"] = @8U;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorDropAll"] = @14U;
	context[@"NSDateComponentsFormatterZeroFormattingBehaviorPad"] = @65536U;

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
