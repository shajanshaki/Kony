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
	context[@"CFSocketConnectToAddress"] = ^CFSocketError(id arg0, id arg1, CFTimeInterval arg2) {
		return CFSocketConnectToAddress(arg0, arg1, arg2);
	};
	context[@"CFSocketGetNative"] = ^CFSocketNativeHandle(id arg0) {
		return CFSocketGetNative(arg0);
	};
	context[@"CFSocketSetSocketFlags"] = ^void(id arg0, CFOptionFlags arg1) {
		CFSocketSetSocketFlags(arg0, arg1);
	};
	context[@"CFSocketInvalidate"] = ^void(id arg0) {
		CFSocketInvalidate(arg0);
	};
	context[@"CFSocketCopyPeerAddress"] = ^id(id arg0) {
		return CFSocketCopyPeerAddress(arg0);
	};
	context[@"CFSocketGetTypeID"] = ^CFTypeID() {
		return CFSocketGetTypeID();
	};
	context[@"CFSocketDisableCallBacks"] = ^void(id arg0, CFOptionFlags arg1) {
		CFSocketDisableCallBacks(arg0, arg1);
	};
	context[@"CFSocketGetDefaultNameRegistryPortNumber"] = ^UInt16() {
		return CFSocketGetDefaultNameRegistryPortNumber();
	};
	context[@"CFSocketCopyAddress"] = ^id(id arg0) {
		return CFSocketCopyAddress(arg0);
	};
	context[@"CFSocketSetDefaultNameRegistryPortNumber"] = ^void(UInt16 arg0) {
		CFSocketSetDefaultNameRegistryPortNumber(arg0);
	};
	context[@"CFSocketSendData"] = ^CFSocketError(id arg0, id arg1, id arg2, CFTimeInterval arg3) {
		return CFSocketSendData(arg0, arg1, arg2, arg3);
	};
	context[@"CFSocketSetAddress"] = ^CFSocketError(id arg0, id arg1) {
		return CFSocketSetAddress(arg0, arg1);
	};
	context[@"CFSocketEnableCallBacks"] = ^void(id arg0, CFOptionFlags arg1) {
		CFSocketEnableCallBacks(arg0, arg1);
	};
	context[@"CFSocketCreateRunLoopSource"] = ^id(id arg0, id arg1, CFIndex arg2) {
		return CFSocketCreateRunLoopSource(arg0, arg1, arg2);
	};
	context[@"CFSocketGetSocketFlags"] = ^CFOptionFlags(id arg0) {
		return CFSocketGetSocketFlags(arg0);
	};
	context[@"CFSocketIsValid"] = ^Boolean(id arg0) {
		return CFSocketIsValid(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFSocketSuccess"] = @0L;
	context[@"kCFSocketError"] = @-1L;
	context[@"kCFSocketTimeout"] = @-2L;

	context[@"kCFSocketNoCallBack"] = @0UL;
	context[@"kCFSocketReadCallBack"] = @1UL;
	context[@"kCFSocketAcceptCallBack"] = @2UL;
	context[@"kCFSocketDataCallBack"] = @3UL;
	context[@"kCFSocketConnectCallBack"] = @4UL;
	context[@"kCFSocketWriteCallBack"] = @8UL;

	context[@"kCFSocketAutomaticallyReenableReadCallBack"] = @1UL;
	context[@"kCFSocketAutomaticallyReenableAcceptCallBack"] = @2UL;
	context[@"kCFSocketAutomaticallyReenableDataCallBack"] = @3UL;
	context[@"kCFSocketAutomaticallyReenableWriteCallBack"] = @8UL;
	context[@"kCFSocketLeaveErrors"] = @64UL;
	context[@"kCFSocketCloseOnInvalidate"] = @128UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFSocketNameKey;
	if (p != NULL) context[@"kCFSocketNameKey"] = [JSValue valueWithObject: (__bridge id) kCFSocketNameKey inContext: context];
	p = (void*) &kCFSocketCommandKey;
	if (p != NULL) context[@"kCFSocketCommandKey"] = [JSValue valueWithObject: (__bridge id) kCFSocketCommandKey inContext: context];
	p = (void*) &kCFSocketResultKey;
	if (p != NULL) context[@"kCFSocketResultKey"] = [JSValue valueWithObject: (__bridge id) kCFSocketResultKey inContext: context];
	p = (void*) &kCFSocketValueKey;
	if (p != NULL) context[@"kCFSocketValueKey"] = [JSValue valueWithObject: (__bridge id) kCFSocketValueKey inContext: context];
	p = (void*) &kCFSocketRegisterCommand;
	if (p != NULL) context[@"kCFSocketRegisterCommand"] = [JSValue valueWithObject: (__bridge id) kCFSocketRegisterCommand inContext: context];
	p = (void*) &kCFSocketErrorKey;
	if (p != NULL) context[@"kCFSocketErrorKey"] = [JSValue valueWithObject: (__bridge id) kCFSocketErrorKey inContext: context];
	p = (void*) &kCFSocketRetrieveCommand;
	if (p != NULL) context[@"kCFSocketRetrieveCommand"] = [JSValue valueWithObject: (__bridge id) kCFSocketRetrieveCommand inContext: context];
}
void load_CoreFoundation_CFSocket_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
