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
	context[@"NSByteCountFormatterUseDefault"] = @0U;
	context[@"NSByteCountFormatterUseBytes"] = @1U;
	context[@"NSByteCountFormatterUseKB"] = @2U;
	context[@"NSByteCountFormatterUseMB"] = @4U;
	context[@"NSByteCountFormatterUseGB"] = @8U;
	context[@"NSByteCountFormatterUseTB"] = @16U;
	context[@"NSByteCountFormatterUsePB"] = @32U;
	context[@"NSByteCountFormatterUseEB"] = @64U;
	context[@"NSByteCountFormatterUseZB"] = @128U;
	context[@"NSByteCountFormatterUseYBOrHigher"] = @65280U;
	context[@"NSByteCountFormatterUseAll"] = @65535U;

	context[@"NSByteCountFormatterCountStyleFile"] = @0;
	context[@"NSByteCountFormatterCountStyleMemory"] = @1;
	context[@"NSByteCountFormatterCountStyleDecimal"] = @2;
	context[@"NSByteCountFormatterCountStyleBinary"] = @3;

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
