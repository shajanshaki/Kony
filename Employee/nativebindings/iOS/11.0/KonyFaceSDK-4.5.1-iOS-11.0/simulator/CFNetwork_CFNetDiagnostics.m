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
	context[@"CFNetDiagnosticCreateWithStreams"] = ^id(id arg0, id arg1, id arg2) {
		return CFNetDiagnosticCreateWithStreams(arg0, arg1, arg2);
	};
	context[@"CFNetDiagnosticDiagnoseProblemInteractively"] = ^CFNetDiagnosticStatus(id arg0) {
		return CFNetDiagnosticDiagnoseProblemInteractively(arg0);
	};
	context[@"CFNetDiagnosticSetName"] = ^void(id arg0, id arg1) {
		CFNetDiagnosticSetName(arg0, arg1);
	};
	context[@"CFNetDiagnosticCreateWithURL"] = ^id(id arg0, id arg1) {
		return CFNetDiagnosticCreateWithURL(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFNetDiagnosticNoErr"] = @0;
	context[@"kCFNetDiagnosticErr"] = @-66560;
	context[@"kCFNetDiagnosticConnectionUp"] = @-66559;
	context[@"kCFNetDiagnosticConnectionIndeterminate"] = @-66558;
	context[@"kCFNetDiagnosticConnectionDown"] = @-66557;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CFNetwork_CFNetDiagnostics_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
