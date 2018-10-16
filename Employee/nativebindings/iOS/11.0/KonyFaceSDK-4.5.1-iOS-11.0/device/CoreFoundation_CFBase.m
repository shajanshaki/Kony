#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFBase)
+(JSValue*) valueWithCFRange: (CFRange) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"location": @(s.location),
		@"length": @(s.length),
	} inContext: context];
}
-(CFRange) toCFRange {
	return (CFRange) {
		(CFIndex) [self[@"location"] toDouble],
		(CFIndex) [self[@"length"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CFRangeMake"] = ^CFRange(CFIndex arg0, CFIndex arg1) {
		return CFRangeMake(arg0, arg1);
	};
	context[@"CFGetAllocator"] = ^id(id arg0) {
		return CFGetAllocator(arg0);
	};
	context[@"CFCopyDescription"] = ^id(id arg0) {
		return CFCopyDescription(arg0);
	};
	context[@"CFGetRetainCount"] = ^CFIndex(id arg0) {
		return CFGetRetainCount(arg0);
	};
	context[@"CFRelease"] = ^void(id arg0) {
		CFRelease(arg0);
	};
	context[@"CFAllocatorGetDefault"] = ^id() {
		return CFAllocatorGetDefault();
	};
	context[@"CFAllocatorSetDefault"] = ^void(id arg0) {
		CFAllocatorSetDefault(arg0);
	};
	context[@"CFEqual"] = ^Boolean(id arg0, id arg1) {
		return CFEqual(arg0, arg1);
	};
	context[@"CFAllocatorGetPreferredSizeForSize"] = ^CFIndex(id arg0, CFIndex arg1, CFOptionFlags arg2) {
		return CFAllocatorGetPreferredSizeForSize(arg0, arg1, arg2);
	};
	context[@"CFNullGetTypeID"] = ^CFTypeID() {
		return CFNullGetTypeID();
	};
	context[@"CFHash"] = ^CFHashCode(id arg0) {
		return CFHash(arg0);
	};
	context[@"CFAllocatorGetTypeID"] = ^CFTypeID() {
		return CFAllocatorGetTypeID();
	};
	context[@"CFAutorelease"] = ^id(id arg0) {
		return CFAutorelease(arg0);
	};
	context[@"CFGetTypeID"] = ^CFTypeID(id arg0) {
		return CFGetTypeID(arg0);
	};
	context[@"CFCopyTypeIDDescription"] = ^id(CFTypeID arg0) {
		return CFCopyTypeIDDescription(arg0);
	};
	context[@"__CFRangeMake"] = ^CFRange(CFIndex arg0, CFIndex arg1) {
		return __CFRangeMake(arg0, arg1);
	};
	context[@"CFMakeCollectable"] = ^id(id arg0) {
		return CFMakeCollectable(arg0);
	};
	context[@"CFRetain"] = ^id(id arg0) {
		return CFRetain(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFCompareLessThan"] = @-1L;
	context[@"kCFCompareEqualTo"] = @0L;
	context[@"kCFCompareGreaterThan"] = @1L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFNull;
	if (p != NULL) context[@"kCFNull"] = [JSValue valueWithObject: (__bridge id) kCFNull inContext: context];
	p = (void*) &kCFAllocatorMallocZone;
	if (p != NULL) context[@"kCFAllocatorMallocZone"] = [JSValue valueWithObject: (__bridge id) kCFAllocatorMallocZone inContext: context];
	p = (void*) &kCFAllocatorSystemDefault;
	if (p != NULL) context[@"kCFAllocatorSystemDefault"] = [JSValue valueWithObject: (__bridge id) kCFAllocatorSystemDefault inContext: context];
	p = (void*) &kCFAllocatorNull;
	if (p != NULL) context[@"kCFAllocatorNull"] = [JSValue valueWithObject: (__bridge id) kCFAllocatorNull inContext: context];
	p = (void*) &kCFAllocatorDefault;
	if (p != NULL) context[@"kCFAllocatorDefault"] = [JSValue valueWithObject: (__bridge id) kCFAllocatorDefault inContext: context];
	p = (void*) &kCFAllocatorMalloc;
	if (p != NULL) context[@"kCFAllocatorMalloc"] = [JSValue valueWithObject: (__bridge id) kCFAllocatorMalloc inContext: context];
	p = (void*) &kCFNotFound;
	if (p != NULL) context[@"kCFNotFound"] = @(kCFNotFound);
	p = (void*) &kCFCoreFoundationVersionNumber;
	if (p != NULL) context[@"kCFCoreFoundationVersionNumber"] = @(kCFCoreFoundationVersionNumber);
}
void load_CoreFoundation_CFBase_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
