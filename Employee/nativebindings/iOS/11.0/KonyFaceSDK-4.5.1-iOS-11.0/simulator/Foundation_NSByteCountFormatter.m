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
	class_addProtocol([NSByteCountFormatter class], @protocol(NSByteCountFormatterInstanceExports));
	class_addProtocol([NSByteCountFormatter class], @protocol(NSByteCountFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSByteCountFormatterUseDefault"] = @0UL;
	context[@"NSByteCountFormatterUseBytes"] = @1UL;
	context[@"NSByteCountFormatterUseKB"] = @2UL;
	context[@"NSByteCountFormatterUseMB"] = @4UL;
	context[@"NSByteCountFormatterUseGB"] = @8UL;
	context[@"NSByteCountFormatterUseTB"] = @16UL;
	context[@"NSByteCountFormatterUsePB"] = @32UL;
	context[@"NSByteCountFormatterUseEB"] = @64UL;
	context[@"NSByteCountFormatterUseZB"] = @128UL;
	context[@"NSByteCountFormatterUseYBOrHigher"] = @65280UL;
	context[@"NSByteCountFormatterUseAll"] = @65535UL;

	context[@"NSByteCountFormatterCountStyleFile"] = @0L;
	context[@"NSByteCountFormatterCountStyleMemory"] = @1L;
	context[@"NSByteCountFormatterCountStyleDecimal"] = @2L;
	context[@"NSByteCountFormatterCountStyleBinary"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSByteCountFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
