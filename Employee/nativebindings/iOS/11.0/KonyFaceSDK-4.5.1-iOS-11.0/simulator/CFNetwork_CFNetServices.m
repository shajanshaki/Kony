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
	context[@"CFNetServiceUnscheduleFromRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFNetServiceUnscheduleFromRunLoop(arg0, arg1, arg2);
	};
	context[@"CFNetServiceCreate"] = ^id(id arg0, id arg1, id arg2, id arg3, SInt32 arg4) {
		return CFNetServiceCreate(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CFNetServiceGetAddressing"] = ^id(id arg0) {
		return CFNetServiceGetAddressing(arg0);
	};
	context[@"CFNetServiceCreateTXTDataWithDictionary"] = ^id(id arg0, id arg1) {
		return CFNetServiceCreateTXTDataWithDictionary(arg0, arg1);
	};
	context[@"CFNetServiceGetTargetHost"] = ^id(id arg0) {
		return CFNetServiceGetTargetHost(arg0);
	};
	context[@"CFNetServiceBrowserScheduleWithRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFNetServiceBrowserScheduleWithRunLoop(arg0, arg1, arg2);
	};
	context[@"CFNetServiceCreateCopy"] = ^id(id arg0, id arg1) {
		return CFNetServiceCreateCopy(arg0, arg1);
	};
	context[@"CFNetServiceBrowserUnscheduleFromRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFNetServiceBrowserUnscheduleFromRunLoop(arg0, arg1, arg2);
	};
	context[@"CFNetServiceSetTXTData"] = ^Boolean(id arg0, id arg1) {
		return CFNetServiceSetTXTData(arg0, arg1);
	};
	context[@"CFNetServiceGetName"] = ^id(id arg0) {
		return CFNetServiceGetName(arg0);
	};
	context[@"CFNetServiceBrowserInvalidate"] = ^void(id arg0) {
		CFNetServiceBrowserInvalidate(arg0);
	};
	context[@"CFNetServiceGetTypeID"] = ^CFTypeID() {
		return CFNetServiceGetTypeID();
	};
	context[@"CFNetServiceGetType"] = ^id(id arg0) {
		return CFNetServiceGetType(arg0);
	};
	context[@"CFNetServiceMonitorGetTypeID"] = ^CFTypeID() {
		return CFNetServiceMonitorGetTypeID();
	};
	context[@"CFNetServiceMonitorUnscheduleFromRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFNetServiceMonitorUnscheduleFromRunLoop(arg0, arg1, arg2);
	};
	context[@"CFNetServiceGetDomain"] = ^id(id arg0) {
		return CFNetServiceGetDomain(arg0);
	};
	context[@"CFNetServiceGetPortNumber"] = ^SInt32(id arg0) {
		return CFNetServiceGetPortNumber(arg0);
	};
	context[@"CFNetServiceCreateDictionaryWithTXTData"] = ^id(id arg0, id arg1) {
		return CFNetServiceCreateDictionaryWithTXTData(arg0, arg1);
	};
	context[@"CFNetServiceCancel"] = ^void(id arg0) {
		CFNetServiceCancel(arg0);
	};
	context[@"CFNetServiceBrowserGetTypeID"] = ^CFTypeID() {
		return CFNetServiceBrowserGetTypeID();
	};
	context[@"CFNetServiceMonitorInvalidate"] = ^void(id arg0) {
		CFNetServiceMonitorInvalidate(arg0);
	};
	context[@"CFNetServiceScheduleWithRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFNetServiceScheduleWithRunLoop(arg0, arg1, arg2);
	};
	context[@"CFNetServiceGetTXTData"] = ^id(id arg0) {
		return CFNetServiceGetTXTData(arg0);
	};
	context[@"CFNetServiceMonitorScheduleWithRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFNetServiceMonitorScheduleWithRunLoop(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFNetServicesErrorUnknown"] = @-72000;
	context[@"kCFNetServicesErrorCollision"] = @-72001;
	context[@"kCFNetServicesErrorNotFound"] = @-72002;
	context[@"kCFNetServicesErrorInProgress"] = @-72003;
	context[@"kCFNetServicesErrorBadArgument"] = @-72004;
	context[@"kCFNetServicesErrorCancel"] = @-72005;
	context[@"kCFNetServicesErrorInvalid"] = @-72006;
	context[@"kCFNetServicesErrorTimeout"] = @-72007;

	context[@"kCFNetServiceMonitorTXT"] = @1;

	context[@"kCFNetServiceFlagNoAutoRename"] = @1UL;

	context[@"kCFNetServiceFlagMoreComing"] = @1UL;
	context[@"kCFNetServiceFlagIsDomain"] = @2UL;
	context[@"kCFNetServiceFlagIsDefault"] = @4UL;
	context[@"kCFNetServiceFlagIsRegistrationDomain"] = @4UL;
	context[@"kCFNetServiceFlagRemove"] = @8UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStreamErrorDomainMach;
	if (p != NULL) context[@"kCFStreamErrorDomainMach"] = @(kCFStreamErrorDomainMach);
	p = (void*) &kCFStreamErrorDomainNetServices;
	if (p != NULL) context[@"kCFStreamErrorDomainNetServices"] = @(kCFStreamErrorDomainNetServices);
}
void load_CFNetwork_CFNetServices_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
