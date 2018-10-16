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
	context[@"CFRunLoopRunInMode"] = ^CFRunLoopRunResult(id arg0, CFTimeInterval arg1, Boolean arg2) {
		return CFRunLoopRunInMode(arg0, arg1, arg2);
	};
	context[@"CFRunLoopTimerInvalidate"] = ^void(id arg0) {
		CFRunLoopTimerInvalidate(arg0);
	};
	context[@"CFRunLoopTimerGetTypeID"] = ^CFTypeID() {
		return CFRunLoopTimerGetTypeID();
	};
	context[@"CFRunLoopIsWaiting"] = ^Boolean(id arg0) {
		return CFRunLoopIsWaiting(arg0);
	};
	context[@"CFRunLoopSourceSignal"] = ^void(id arg0) {
		CFRunLoopSourceSignal(arg0);
	};
	context[@"CFRunLoopRemoveSource"] = ^void(id arg0, id arg1, id arg2) {
		CFRunLoopRemoveSource(arg0, arg1, arg2);
	};
	context[@"CFRunLoopTimerGetNextFireDate"] = ^CFAbsoluteTime(id arg0) {
		return CFRunLoopTimerGetNextFireDate(arg0);
	};
	context[@"CFRunLoopObserverIsValid"] = ^Boolean(id arg0) {
		return CFRunLoopObserverIsValid(arg0);
	};
	context[@"CFRunLoopAddTimer"] = ^void(id arg0, id arg1, id arg2) {
		CFRunLoopAddTimer(arg0, arg1, arg2);
	};
	context[@"CFRunLoopTimerSetNextFireDate"] = ^void(id arg0, CFAbsoluteTime arg1) {
		CFRunLoopTimerSetNextFireDate(arg0, arg1);
	};
	context[@"CFRunLoopGetNextTimerFireDate"] = ^CFAbsoluteTime(id arg0, id arg1) {
		return CFRunLoopGetNextTimerFireDate(arg0, arg1);
	};
	context[@"CFRunLoopCopyCurrentMode"] = ^id(id arg0) {
		return CFRunLoopCopyCurrentMode(arg0);
	};
	context[@"CFRunLoopObserverGetOrder"] = ^CFIndex(id arg0) {
		return CFRunLoopObserverGetOrder(arg0);
	};
	context[@"CFRunLoopAddSource"] = ^void(id arg0, id arg1, id arg2) {
		CFRunLoopAddSource(arg0, arg1, arg2);
	};
	context[@"CFRunLoopTimerSetTolerance"] = ^void(id arg0, CFTimeInterval arg1) {
		CFRunLoopTimerSetTolerance(arg0, arg1);
	};
	context[@"CFRunLoopWakeUp"] = ^void(id arg0) {
		CFRunLoopWakeUp(arg0);
	};
	context[@"CFRunLoopAddCommonMode"] = ^void(id arg0, id arg1) {
		CFRunLoopAddCommonMode(arg0, arg1);
	};
	context[@"CFRunLoopSourceGetTypeID"] = ^CFTypeID() {
		return CFRunLoopSourceGetTypeID();
	};
	context[@"CFRunLoopAddObserver"] = ^void(id arg0, id arg1, id arg2) {
		CFRunLoopAddObserver(arg0, arg1, arg2);
	};
	context[@"CFRunLoopObserverInvalidate"] = ^void(id arg0) {
		CFRunLoopObserverInvalidate(arg0);
	};
	context[@"CFRunLoopSourceIsValid"] = ^Boolean(id arg0) {
		return CFRunLoopSourceIsValid(arg0);
	};
	context[@"CFRunLoopContainsObserver"] = ^Boolean(id arg0, id arg1, id arg2) {
		return CFRunLoopContainsObserver(arg0, arg1, arg2);
	};
	context[@"CFRunLoopRemoveTimer"] = ^void(id arg0, id arg1, id arg2) {
		CFRunLoopRemoveTimer(arg0, arg1, arg2);
	};
	context[@"CFRunLoopTimerGetInterval"] = ^CFTimeInterval(id arg0) {
		return CFRunLoopTimerGetInterval(arg0);
	};
	context[@"CFRunLoopSourceInvalidate"] = ^void(id arg0) {
		CFRunLoopSourceInvalidate(arg0);
	};
	context[@"CFRunLoopObserverDoesRepeat"] = ^Boolean(id arg0) {
		return CFRunLoopObserverDoesRepeat(arg0);
	};
	context[@"CFRunLoopTimerGetTolerance"] = ^CFTimeInterval(id arg0) {
		return CFRunLoopTimerGetTolerance(arg0);
	};
	context[@"CFRunLoopSourceGetOrder"] = ^CFIndex(id arg0) {
		return CFRunLoopSourceGetOrder(arg0);
	};
	context[@"CFRunLoopContainsTimer"] = ^Boolean(id arg0, id arg1, id arg2) {
		return CFRunLoopContainsTimer(arg0, arg1, arg2);
	};
	context[@"CFRunLoopTimerIsValid"] = ^Boolean(id arg0) {
		return CFRunLoopTimerIsValid(arg0);
	};
	context[@"CFRunLoopObserverGetActivities"] = ^CFOptionFlags(id arg0) {
		return CFRunLoopObserverGetActivities(arg0);
	};
	context[@"CFRunLoopContainsSource"] = ^Boolean(id arg0, id arg1, id arg2) {
		return CFRunLoopContainsSource(arg0, arg1, arg2);
	};
	context[@"CFRunLoopGetTypeID"] = ^CFTypeID() {
		return CFRunLoopGetTypeID();
	};
	context[@"CFRunLoopCopyAllModes"] = ^id(id arg0) {
		return CFRunLoopCopyAllModes(arg0);
	};
	context[@"CFRunLoopRun"] = ^void() {
		CFRunLoopRun();
	};
	context[@"CFRunLoopTimerDoesRepeat"] = ^Boolean(id arg0) {
		return CFRunLoopTimerDoesRepeat(arg0);
	};
	context[@"CFRunLoopStop"] = ^void(id arg0) {
		CFRunLoopStop(arg0);
	};
	context[@"CFRunLoopGetMain"] = ^id() {
		return CFRunLoopGetMain();
	};
	context[@"CFRunLoopRemoveObserver"] = ^void(id arg0, id arg1, id arg2) {
		CFRunLoopRemoveObserver(arg0, arg1, arg2);
	};
	context[@"CFRunLoopObserverGetTypeID"] = ^CFTypeID() {
		return CFRunLoopObserverGetTypeID();
	};
	context[@"CFRunLoopGetCurrent"] = ^id() {
		return CFRunLoopGetCurrent();
	};
	context[@"CFRunLoopTimerGetOrder"] = ^CFIndex(id arg0) {
		return CFRunLoopTimerGetOrder(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFRunLoopRunFinished"] = @1L;
	context[@"kCFRunLoopRunStopped"] = @2L;
	context[@"kCFRunLoopRunTimedOut"] = @3L;
	context[@"kCFRunLoopRunHandledSource"] = @4L;

	context[@"kCFRunLoopEntry"] = @1UL;
	context[@"kCFRunLoopBeforeTimers"] = @2UL;
	context[@"kCFRunLoopBeforeSources"] = @4UL;
	context[@"kCFRunLoopBeforeWaiting"] = @32UL;
	context[@"kCFRunLoopAfterWaiting"] = @64UL;
	context[@"kCFRunLoopExit"] = @128UL;
	context[@"kCFRunLoopAllActivities"] = @268435455UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFRunLoopDefaultMode;
	if (p != NULL) context[@"kCFRunLoopDefaultMode"] = [JSValue valueWithObject: (__bridge id) kCFRunLoopDefaultMode inContext: context];
	p = (void*) &kCFRunLoopCommonModes;
	if (p != NULL) context[@"kCFRunLoopCommonModes"] = [JSValue valueWithObject: (__bridge id) kCFRunLoopCommonModes inContext: context];
}
void load_CoreFoundation_CFRunLoop_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
