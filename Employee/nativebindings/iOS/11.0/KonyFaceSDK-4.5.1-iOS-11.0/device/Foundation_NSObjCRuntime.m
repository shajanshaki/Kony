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
	context[@"NSStringFromProtocol"] = ^NSString *(Protocol * arg0) {
		return NSStringFromProtocol(arg0);
	};
	context[@"NSProtocolFromString"] = ^Protocol *(NSString * arg0) {
		return NSProtocolFromString(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSOrderedAscending"] = @-1;
	context[@"NSOrderedSame"] = @0;
	context[@"NSOrderedDescending"] = @1;

	context[@"NSEnumerationConcurrent"] = @1U;
	context[@"NSEnumerationReverse"] = @2U;

	context[@"NSSortConcurrent"] = @1U;
	context[@"NSSortStable"] = @16U;

	context[@"NSQualityOfServiceUserInteractive"] = @33;
	context[@"NSQualityOfServiceUserInitiated"] = @25;
	context[@"NSQualityOfServiceUtility"] = @17;
	context[@"NSQualityOfServiceBackground"] = @9;
	context[@"NSQualityOfServiceDefault"] = @-1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSFoundationVersionNumber;
	if (p != NULL) context[@"NSFoundationVersionNumber"] = @(NSFoundationVersionNumber);
	p = (void*) &NSNotFound;
	if (p != NULL) context[@"NSNotFound"] = @(NSNotFound);
}
void load_Foundation_NSObjCRuntime_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
