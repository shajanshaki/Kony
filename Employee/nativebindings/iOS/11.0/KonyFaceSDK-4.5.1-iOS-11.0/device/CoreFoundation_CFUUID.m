#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFUUID)
+(JSValue*) valueWithCFUUIDBytes: (CFUUIDBytes) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"byte0": @(s.byte0),
		@"byte1": @(s.byte1),
		@"byte2": @(s.byte2),
		@"byte3": @(s.byte3),
		@"byte4": @(s.byte4),
		@"byte5": @(s.byte5),
		@"byte6": @(s.byte6),
		@"byte7": @(s.byte7),
		@"byte8": @(s.byte8),
		@"byte9": @(s.byte9),
		@"byte10": @(s.byte10),
		@"byte11": @(s.byte11),
		@"byte12": @(s.byte12),
		@"byte13": @(s.byte13),
		@"byte14": @(s.byte14),
		@"byte15": @(s.byte15),
	} inContext: context];
}
-(CFUUIDBytes) toCFUUIDBytes {
	return (CFUUIDBytes) {
		(UInt8) [self[@"byte0"] toUInt32],
		(UInt8) [self[@"byte1"] toUInt32],
		(UInt8) [self[@"byte2"] toUInt32],
		(UInt8) [self[@"byte3"] toUInt32],
		(UInt8) [self[@"byte4"] toUInt32],
		(UInt8) [self[@"byte5"] toUInt32],
		(UInt8) [self[@"byte6"] toUInt32],
		(UInt8) [self[@"byte7"] toUInt32],
		(UInt8) [self[@"byte8"] toUInt32],
		(UInt8) [self[@"byte9"] toUInt32],
		(UInt8) [self[@"byte10"] toUInt32],
		(UInt8) [self[@"byte11"] toUInt32],
		(UInt8) [self[@"byte12"] toUInt32],
		(UInt8) [self[@"byte13"] toUInt32],
		(UInt8) [self[@"byte14"] toUInt32],
		(UInt8) [self[@"byte15"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CFUUIDGetUUIDBytes"] = ^CFUUIDBytes(id arg0) {
		return CFUUIDGetUUIDBytes(arg0);
	};
	context[@"CFUUIDCreate"] = ^id(id arg0) {
		return CFUUIDCreate(arg0);
	};
	context[@"CFUUIDGetConstantUUIDWithBytes"] = ^id(id arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt8 arg4, UInt8 arg5, UInt8 arg6, UInt8 arg7, UInt8 arg8, UInt8 arg9, UInt8 arg10, UInt8 arg11, UInt8 arg12, UInt8 arg13, UInt8 arg14, UInt8 arg15, UInt8 arg16) {
		return CFUUIDGetConstantUUIDWithBytes(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16);
	};
	context[@"CFUUIDCreateWithBytes"] = ^id(id arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt8 arg4, UInt8 arg5, UInt8 arg6, UInt8 arg7, UInt8 arg8, UInt8 arg9, UInt8 arg10, UInt8 arg11, UInt8 arg12, UInt8 arg13, UInt8 arg14, UInt8 arg15, UInt8 arg16) {
		return CFUUIDCreateWithBytes(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16);
	};
	context[@"CFUUIDCreateFromString"] = ^id(id arg0, id arg1) {
		return CFUUIDCreateFromString(arg0, arg1);
	};
	context[@"CFUUIDCreateString"] = ^id(id arg0, id arg1) {
		return CFUUIDCreateString(arg0, arg1);
	};
	context[@"CFUUIDGetTypeID"] = ^CFTypeID() {
		return CFUUIDGetTypeID();
	};
	context[@"CFUUIDCreateFromUUIDBytes"] = ^id(id arg0, CFUUIDBytes arg1) {
		return CFUUIDCreateFromUUIDBytes(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFUUID_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
