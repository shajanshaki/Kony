#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (Foundation_NSByteOrder)
+(JSValue*) valueWithNSSwappedDouble: (NSSwappedDouble) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"v": @(s.v),
	} inContext: context];
}
-(NSSwappedDouble) toNSSwappedDouble {
	return (NSSwappedDouble) {
		(unsigned long long) [self[@"v"] toDouble],
	};
}
+(JSValue*) valueWithNSSwappedFloat: (NSSwappedFloat) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"v": @(s.v),
	} inContext: context];
}
-(NSSwappedFloat) toNSSwappedFloat {
	return (NSSwappedFloat) {
		(unsigned int) [self[@"v"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"NSSwapDouble"] = ^NSSwappedDouble(NSSwappedDouble arg0) {
		return NSSwapDouble(arg0);
	};
	context[@"NSSwapBigLongLongToHost"] = ^unsigned long long(unsigned long long arg0) {
		return NSSwapBigLongLongToHost(arg0);
	};
	context[@"NSSwapBigShortToHost"] = ^unsigned short(unsigned short arg0) {
		return NSSwapBigShortToHost(arg0);
	};
	context[@"NSSwapLittleLongToHost"] = ^unsigned long(unsigned long arg0) {
		return NSSwapLittleLongToHost(arg0);
	};
	context[@"NSSwapHostFloatToBig"] = ^NSSwappedFloat(float arg0) {
		return NSSwapHostFloatToBig(arg0);
	};
	context[@"NSConvertHostFloatToSwapped"] = ^NSSwappedFloat(float arg0) {
		return NSConvertHostFloatToSwapped(arg0);
	};
	context[@"NSSwapBigIntToHost"] = ^unsigned int(unsigned int arg0) {
		return NSSwapBigIntToHost(arg0);
	};
	context[@"NSConvertSwappedFloatToHost"] = ^float(NSSwappedFloat arg0) {
		return NSConvertSwappedFloatToHost(arg0);
	};
	context[@"NSSwapBigDoubleToHost"] = ^double(NSSwappedDouble arg0) {
		return NSSwapBigDoubleToHost(arg0);
	};
	context[@"NSSwapHostDoubleToBig"] = ^NSSwappedDouble(double arg0) {
		return NSSwapHostDoubleToBig(arg0);
	};
	context[@"NSSwapLittleIntToHost"] = ^unsigned int(unsigned int arg0) {
		return NSSwapLittleIntToHost(arg0);
	};
	context[@"NSSwapLittleLongLongToHost"] = ^unsigned long long(unsigned long long arg0) {
		return NSSwapLittleLongLongToHost(arg0);
	};
	context[@"NSSwapHostIntToBig"] = ^unsigned int(unsigned int arg0) {
		return NSSwapHostIntToBig(arg0);
	};
	context[@"NSHostByteOrder"] = ^long() {
		return NSHostByteOrder();
	};
	context[@"NSSwapHostLongToBig"] = ^unsigned long(unsigned long arg0) {
		return NSSwapHostLongToBig(arg0);
	};
	context[@"NSSwapLong"] = ^unsigned long(unsigned long arg0) {
		return NSSwapLong(arg0);
	};
	context[@"NSSwapFloat"] = ^NSSwappedFloat(NSSwappedFloat arg0) {
		return NSSwapFloat(arg0);
	};
	context[@"NSSwapLittleFloatToHost"] = ^float(NSSwappedFloat arg0) {
		return NSSwapLittleFloatToHost(arg0);
	};
	context[@"NSSwapHostShortToLittle"] = ^unsigned short(unsigned short arg0) {
		return NSSwapHostShortToLittle(arg0);
	};
	context[@"NSConvertSwappedDoubleToHost"] = ^double(NSSwappedDouble arg0) {
		return NSConvertSwappedDoubleToHost(arg0);
	};
	context[@"NSSwapHostShortToBig"] = ^unsigned short(unsigned short arg0) {
		return NSSwapHostShortToBig(arg0);
	};
	context[@"NSSwapInt"] = ^unsigned int(unsigned int arg0) {
		return NSSwapInt(arg0);
	};
	context[@"NSSwapLittleDoubleToHost"] = ^double(NSSwappedDouble arg0) {
		return NSSwapLittleDoubleToHost(arg0);
	};
	context[@"NSSwapHostIntToLittle"] = ^unsigned int(unsigned int arg0) {
		return NSSwapHostIntToLittle(arg0);
	};
	context[@"NSSwapShort"] = ^unsigned short(unsigned short arg0) {
		return NSSwapShort(arg0);
	};
	context[@"NSSwapHostLongToLittle"] = ^unsigned long(unsigned long arg0) {
		return NSSwapHostLongToLittle(arg0);
	};
	context[@"NSSwapBigLongToHost"] = ^unsigned long(unsigned long arg0) {
		return NSSwapBigLongToHost(arg0);
	};
	context[@"NSSwapLongLong"] = ^unsigned long long(unsigned long long arg0) {
		return NSSwapLongLong(arg0);
	};
	context[@"NSSwapHostLongLongToLittle"] = ^unsigned long long(unsigned long long arg0) {
		return NSSwapHostLongLongToLittle(arg0);
	};
	context[@"NSSwapLittleShortToHost"] = ^unsigned short(unsigned short arg0) {
		return NSSwapLittleShortToHost(arg0);
	};
	context[@"NSConvertHostDoubleToSwapped"] = ^NSSwappedDouble(double arg0) {
		return NSConvertHostDoubleToSwapped(arg0);
	};
	context[@"NSSwapHostDoubleToLittle"] = ^NSSwappedDouble(double arg0) {
		return NSSwapHostDoubleToLittle(arg0);
	};
	context[@"NSSwapBigFloatToHost"] = ^float(NSSwappedFloat arg0) {
		return NSSwapBigFloatToHost(arg0);
	};
	context[@"NSSwapHostLongLongToBig"] = ^unsigned long long(unsigned long long arg0) {
		return NSSwapHostLongLongToBig(arg0);
	};
	context[@"NSSwapHostFloatToLittle"] = ^NSSwappedFloat(float arg0) {
		return NSSwapHostFloatToLittle(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NS_UnknownByteOrder"] = @0;
	context[@"NS_LittleEndian"] = @1;
	context[@"NS_BigEndian"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSByteOrder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
