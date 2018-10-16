#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFStream)
+(JSValue*) valueWithCFStreamError: (CFStreamError) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"domain": @(s.domain),
		@"error": @(s.error),
	} inContext: context];
}
-(CFStreamError) toCFStreamError {
	return (CFStreamError) {
		(CFIndex) [self[@"domain"] toDouble],
		(SInt32) [self[@"error"] toInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CFWriteStreamScheduleWithRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFWriteStreamScheduleWithRunLoop(arg0, arg1, arg2);
	};
	context[@"CFReadStreamScheduleWithRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFReadStreamScheduleWithRunLoop(arg0, arg1, arg2);
	};
	context[@"CFWriteStreamCopyProperty"] = ^id(id arg0, id arg1) {
		return CFWriteStreamCopyProperty(arg0, arg1);
	};
	context[@"CFReadStreamSetProperty"] = ^Boolean(id arg0, id arg1, id arg2) {
		return CFReadStreamSetProperty(arg0, arg1, arg2);
	};
	context[@"CFReadStreamClose"] = ^void(id arg0) {
		CFReadStreamClose(arg0);
	};
	context[@"CFWriteStreamGetStatus"] = ^CFStreamStatus(id arg0) {
		return CFWriteStreamGetStatus(arg0);
	};
	context[@"CFWriteStreamGetTypeID"] = ^CFTypeID() {
		return CFWriteStreamGetTypeID();
	};
	context[@"CFWriteStreamClose"] = ^void(id arg0) {
		CFWriteStreamClose(arg0);
	};
	context[@"CFWriteStreamSetProperty"] = ^Boolean(id arg0, id arg1, id arg2) {
		return CFWriteStreamSetProperty(arg0, arg1, arg2);
	};
	context[@"CFWriteStreamCopyError"] = ^id(id arg0) {
		return CFWriteStreamCopyError(arg0);
	};
	context[@"CFReadStreamCopyProperty"] = ^id(id arg0, id arg1) {
		return CFReadStreamCopyProperty(arg0, arg1);
	};
	context[@"CFWriteStreamCanAcceptBytes"] = ^Boolean(id arg0) {
		return CFWriteStreamCanAcceptBytes(arg0);
	};
	context[@"CFReadStreamCopyError"] = ^id(id arg0) {
		return CFReadStreamCopyError(arg0);
	};
	context[@"CFReadStreamOpen"] = ^Boolean(id arg0) {
		return CFReadStreamOpen(arg0);
	};
	context[@"CFWriteStreamCreateWithFile"] = ^id(id arg0, id arg1) {
		return CFWriteStreamCreateWithFile(arg0, arg1);
	};
	context[@"CFReadStreamCreateWithFile"] = ^id(id arg0, id arg1) {
		return CFReadStreamCreateWithFile(arg0, arg1);
	};
	context[@"CFWriteStreamOpen"] = ^Boolean(id arg0) {
		return CFWriteStreamOpen(arg0);
	};
	context[@"CFReadStreamHasBytesAvailable"] = ^Boolean(id arg0) {
		return CFReadStreamHasBytesAvailable(arg0);
	};
	context[@"CFReadStreamUnscheduleFromRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFReadStreamUnscheduleFromRunLoop(arg0, arg1, arg2);
	};
	context[@"CFReadStreamGetStatus"] = ^CFStreamStatus(id arg0) {
		return CFReadStreamGetStatus(arg0);
	};
	context[@"CFReadStreamGetError"] = ^CFStreamError(id arg0) {
		return CFReadStreamGetError(arg0);
	};
	context[@"CFWriteStreamCreateWithAllocatedBuffers"] = ^id(id arg0, id arg1) {
		return CFWriteStreamCreateWithAllocatedBuffers(arg0, arg1);
	};
	context[@"CFReadStreamGetTypeID"] = ^CFTypeID() {
		return CFReadStreamGetTypeID();
	};
	context[@"CFWriteStreamUnscheduleFromRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFWriteStreamUnscheduleFromRunLoop(arg0, arg1, arg2);
	};
	context[@"CFWriteStreamGetError"] = ^CFStreamError(id arg0) {
		return CFWriteStreamGetError(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFStreamStatusNotOpen"] = @0L;
	context[@"kCFStreamStatusOpening"] = @1L;
	context[@"kCFStreamStatusOpen"] = @2L;
	context[@"kCFStreamStatusReading"] = @3L;
	context[@"kCFStreamStatusWriting"] = @4L;
	context[@"kCFStreamStatusAtEnd"] = @5L;
	context[@"kCFStreamStatusClosed"] = @6L;
	context[@"kCFStreamStatusError"] = @7L;

	context[@"kCFStreamEventNone"] = @0UL;
	context[@"kCFStreamEventOpenCompleted"] = @1UL;
	context[@"kCFStreamEventHasBytesAvailable"] = @2UL;
	context[@"kCFStreamEventCanAcceptBytes"] = @4UL;
	context[@"kCFStreamEventErrorOccurred"] = @8UL;
	context[@"kCFStreamEventEndEncountered"] = @16UL;

	context[@"kCFStreamErrorDomainCustom"] = @-1L;
	context[@"kCFStreamErrorDomainPOSIX"] = @1L;
	context[@"kCFStreamErrorDomainMacOSStatus"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStreamPropertyDataWritten;
	if (p != NULL) context[@"kCFStreamPropertyDataWritten"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyDataWritten inContext: context];
	p = (void*) &kCFStreamPropertyFileCurrentOffset;
	if (p != NULL) context[@"kCFStreamPropertyFileCurrentOffset"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFileCurrentOffset inContext: context];
	p = (void*) &kCFStreamPropertySocketNativeHandle;
	if (p != NULL) context[@"kCFStreamPropertySocketNativeHandle"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketNativeHandle inContext: context];
	p = (void*) &kCFStreamPropertySocketRemotePortNumber;
	if (p != NULL) context[@"kCFStreamPropertySocketRemotePortNumber"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketRemotePortNumber inContext: context];
	p = (void*) &kCFStreamPropertySocketRemoteHostName;
	if (p != NULL) context[@"kCFStreamPropertySocketRemoteHostName"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketRemoteHostName inContext: context];
	p = (void*) &kCFStreamPropertyAppendToFile;
	if (p != NULL) context[@"kCFStreamPropertyAppendToFile"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyAppendToFile inContext: context];
}
void load_CoreFoundation_CFStream_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
