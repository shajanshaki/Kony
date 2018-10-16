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
	context[@"SecCertificateCopySerialNumber"] = ^id(id arg0) {
		return SecCertificateCopySerialNumber(arg0);
	};
	context[@"SecCertificateCopyData"] = ^id(id arg0) {
		return SecCertificateCopyData(arg0);
	};
	context[@"SecCertificateCreateWithData"] = ^id(id arg0, id arg1) {
		return SecCertificateCreateWithData(arg0, arg1);
	};
	context[@"SecCertificateCopyPublicKey"] = ^id(id arg0) {
		return SecCertificateCopyPublicKey(arg0);
	};
	context[@"SecCertificateCopyNormalizedIssuerSequence"] = ^id(id arg0) {
		return SecCertificateCopyNormalizedIssuerSequence(arg0);
	};
	context[@"SecCertificateCopyNormalizedSubjectSequence"] = ^id(id arg0) {
		return SecCertificateCopyNormalizedSubjectSequence(arg0);
	};
	context[@"SecCertificateCopySubjectSummary"] = ^id(id arg0) {
		return SecCertificateCopySubjectSummary(arg0);
	};
	context[@"SecCertificateGetTypeID"] = ^CFTypeID() {
		return SecCertificateGetTypeID();
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Security_SecCertificate_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
