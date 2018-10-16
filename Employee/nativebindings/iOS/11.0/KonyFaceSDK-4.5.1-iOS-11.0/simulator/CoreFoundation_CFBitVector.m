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
}
static void registerCFunctions(JSContext* context)
{
	context[@"CFBitVectorGetCount"] = ^CFIndex(id arg0) {
		return CFBitVectorGetCount(arg0);
	};
	context[@"CFBitVectorCreateMutable"] = ^id(id arg0, CFIndex arg1) {
		return CFBitVectorCreateMutable(arg0, arg1);
	};
	context[@"CFBitVectorSetAllBits"] = ^void(id arg0, CFBit arg1) {
		CFBitVectorSetAllBits(arg0, arg1);
	};
	context[@"CFBitVectorGetCountOfBit"] = ^CFIndex(id arg0, CFRange arg1, CFBit arg2) {
		return CFBitVectorGetCountOfBit(arg0, arg1, arg2);
	};
	context[@"CFBitVectorGetLastIndexOfBit"] = ^CFIndex(id arg0, CFRange arg1, CFBit arg2) {
		return CFBitVectorGetLastIndexOfBit(arg0, arg1, arg2);
	};
	context[@"CFBitVectorGetBitAtIndex"] = ^CFBit(id arg0, CFIndex arg1) {
		return CFBitVectorGetBitAtIndex(arg0, arg1);
	};
	context[@"CFBitVectorFlipBitAtIndex"] = ^void(id arg0, CFIndex arg1) {
		CFBitVectorFlipBitAtIndex(arg0, arg1);
	};
	context[@"CFBitVectorSetBits"] = ^void(id arg0, CFRange arg1, CFBit arg2) {
		CFBitVectorSetBits(arg0, arg1, arg2);
	};
	context[@"CFBitVectorFlipBits"] = ^void(id arg0, CFRange arg1) {
		CFBitVectorFlipBits(arg0, arg1);
	};
	context[@"CFBitVectorSetCount"] = ^void(id arg0, CFIndex arg1) {
		CFBitVectorSetCount(arg0, arg1);
	};
	context[@"CFBitVectorContainsBit"] = ^Boolean(id arg0, CFRange arg1, CFBit arg2) {
		return CFBitVectorContainsBit(arg0, arg1, arg2);
	};
	context[@"CFBitVectorCreateMutableCopy"] = ^id(id arg0, CFIndex arg1, id arg2) {
		return CFBitVectorCreateMutableCopy(arg0, arg1, arg2);
	};
	context[@"CFBitVectorCreateCopy"] = ^id(id arg0, id arg1) {
		return CFBitVectorCreateCopy(arg0, arg1);
	};
	context[@"CFBitVectorSetBitAtIndex"] = ^void(id arg0, CFIndex arg1, CFBit arg2) {
		CFBitVectorSetBitAtIndex(arg0, arg1, arg2);
	};
	context[@"CFBitVectorGetTypeID"] = ^CFTypeID() {
		return CFBitVectorGetTypeID();
	};
	context[@"CFBitVectorGetFirstIndexOfBit"] = ^CFIndex(id arg0, CFRange arg1, CFBit arg2) {
		return CFBitVectorGetFirstIndexOfBit(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFBitVector_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
