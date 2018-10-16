#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFByteOrder)
+(JSValue*) valueWithCFSwappedFloat64: (CFSwappedFloat64) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"v": @(s.v),
	} inContext: context];
}
-(CFSwappedFloat64) toCFSwappedFloat64 {
	return (CFSwappedFloat64) {
		(uint64_t) [self[@"v"] toDouble],
	};
}
+(JSValue*) valueWithCFSwappedFloat32: (CFSwappedFloat32) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"v": @(s.v),
	} inContext: context];
}
-(CFSwappedFloat32) toCFSwappedFloat32 {
	return (CFSwappedFloat32) {
		(uint32_t) [self[@"v"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CFConvertDoubleSwappedToHost"] = ^double(CFSwappedFloat64 arg0) {
		return CFConvertDoubleSwappedToHost(arg0);
	};
	context[@"CFSwapInt32"] = ^uint32_t(uint32_t arg0) {
		return CFSwapInt32(arg0);
	};
	context[@"CFSwapInt32BigToHost"] = ^uint32_t(uint32_t arg0) {
		return CFSwapInt32BigToHost(arg0);
	};
	context[@"CFSwapInt64"] = ^uint64_t(uint64_t arg0) {
		return CFSwapInt64(arg0);
	};
	context[@"CFConvertFloat32SwappedToHost"] = ^Float32(CFSwappedFloat32 arg0) {
		return CFConvertFloat32SwappedToHost(arg0);
	};
	context[@"CFSwapInt32HostToLittle"] = ^uint32_t(uint32_t arg0) {
		return CFSwapInt32HostToLittle(arg0);
	};
	context[@"CFSwapInt32LittleToHost"] = ^uint32_t(uint32_t arg0) {
		return CFSwapInt32LittleToHost(arg0);
	};
	context[@"CFByteOrderGetCurrent"] = ^CFByteOrder() {
		return CFByteOrderGetCurrent();
	};
	context[@"CFSwapInt16LittleToHost"] = ^uint16_t(uint16_t arg0) {
		return CFSwapInt16LittleToHost(arg0);
	};
	context[@"CFConvertFloatSwappedToHost"] = ^float(CFSwappedFloat32 arg0) {
		return CFConvertFloatSwappedToHost(arg0);
	};
	context[@"CFConvertDoubleHostToSwapped"] = ^CFSwappedFloat64(double arg0) {
		return CFConvertDoubleHostToSwapped(arg0);
	};
	context[@"CFConvertFloat64HostToSwapped"] = ^CFSwappedFloat64(Float64 arg0) {
		return CFConvertFloat64HostToSwapped(arg0);
	};
	context[@"CFSwapInt32HostToBig"] = ^uint32_t(uint32_t arg0) {
		return CFSwapInt32HostToBig(arg0);
	};
	context[@"CFSwapInt64HostToBig"] = ^uint64_t(uint64_t arg0) {
		return CFSwapInt64HostToBig(arg0);
	};
	context[@"CFSwapInt16"] = ^uint16_t(uint16_t arg0) {
		return CFSwapInt16(arg0);
	};
	context[@"CFSwapInt16HostToLittle"] = ^uint16_t(uint16_t arg0) {
		return CFSwapInt16HostToLittle(arg0);
	};
	context[@"CFConvertFloatHostToSwapped"] = ^CFSwappedFloat32(float arg0) {
		return CFConvertFloatHostToSwapped(arg0);
	};
	context[@"CFSwapInt16HostToBig"] = ^uint16_t(uint16_t arg0) {
		return CFSwapInt16HostToBig(arg0);
	};
	context[@"CFConvertFloat32HostToSwapped"] = ^CFSwappedFloat32(Float32 arg0) {
		return CFConvertFloat32HostToSwapped(arg0);
	};
	context[@"CFConvertFloat64SwappedToHost"] = ^Float64(CFSwappedFloat64 arg0) {
		return CFConvertFloat64SwappedToHost(arg0);
	};
	context[@"CFSwapInt16BigToHost"] = ^uint16_t(uint16_t arg0) {
		return CFSwapInt16BigToHost(arg0);
	};
	context[@"CFSwapInt64LittleToHost"] = ^uint64_t(uint64_t arg0) {
		return CFSwapInt64LittleToHost(arg0);
	};
	context[@"CFSwapInt64HostToLittle"] = ^uint64_t(uint64_t arg0) {
		return CFSwapInt64HostToLittle(arg0);
	};
	context[@"CFSwapInt64BigToHost"] = ^uint64_t(uint64_t arg0) {
		return CFSwapInt64BigToHost(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"CFByteOrderUnknown"] = @0;
	context[@"CFByteOrderLittleEndian"] = @1;
	context[@"CFByteOrderBigEndian"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFByteOrder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
