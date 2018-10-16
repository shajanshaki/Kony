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
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFURLUnknownError"] = @-10L;
	context[@"kCFURLUnknownSchemeError"] = @-11L;
	context[@"kCFURLResourceNotFoundError"] = @-12L;
	context[@"kCFURLResourceAccessViolationError"] = @-13L;
	context[@"kCFURLRemoteHostUnavailableError"] = @-14L;
	context[@"kCFURLImproperArgumentsError"] = @-15L;
	context[@"kCFURLUnknownPropertyKeyError"] = @-16L;
	context[@"kCFURLPropertyKeyUnavailableError"] = @-17L;
	context[@"kCFURLTimeoutError"] = @-18L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFURLFileLength;
	if (p != NULL) context[@"kCFURLFileLength"] = [JSValue valueWithObject: (__bridge id) kCFURLFileLength inContext: context];
	p = (void*) &kCFURLFileOwnerID;
	if (p != NULL) context[@"kCFURLFileOwnerID"] = [JSValue valueWithObject: (__bridge id) kCFURLFileOwnerID inContext: context];
	p = (void*) &kCFURLHTTPStatusLine;
	if (p != NULL) context[@"kCFURLHTTPStatusLine"] = [JSValue valueWithObject: (__bridge id) kCFURLHTTPStatusLine inContext: context];
	p = (void*) &kCFURLFilePOSIXMode;
	if (p != NULL) context[@"kCFURLFilePOSIXMode"] = [JSValue valueWithObject: (__bridge id) kCFURLFilePOSIXMode inContext: context];
	p = (void*) &kCFURLFileExists;
	if (p != NULL) context[@"kCFURLFileExists"] = [JSValue valueWithObject: (__bridge id) kCFURLFileExists inContext: context];
	p = (void*) &kCFURLFileDirectoryContents;
	if (p != NULL) context[@"kCFURLFileDirectoryContents"] = [JSValue valueWithObject: (__bridge id) kCFURLFileDirectoryContents inContext: context];
	p = (void*) &kCFURLFileLastModificationTime;
	if (p != NULL) context[@"kCFURLFileLastModificationTime"] = [JSValue valueWithObject: (__bridge id) kCFURLFileLastModificationTime inContext: context];
	p = (void*) &kCFURLHTTPStatusCode;
	if (p != NULL) context[@"kCFURLHTTPStatusCode"] = [JSValue valueWithObject: (__bridge id) kCFURLHTTPStatusCode inContext: context];
}
void load_CoreFoundation_CFURLAccess_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
