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
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kSecImportItemTrust;
	if (p != NULL) context[@"kSecImportItemTrust"] = [JSValue valueWithObject: (__bridge id) kSecImportItemTrust inContext: context];
	p = (void*) &kSecImportItemCertChain;
	if (p != NULL) context[@"kSecImportItemCertChain"] = [JSValue valueWithObject: (__bridge id) kSecImportItemCertChain inContext: context];
	p = (void*) &kSecImportItemLabel;
	if (p != NULL) context[@"kSecImportItemLabel"] = [JSValue valueWithObject: (__bridge id) kSecImportItemLabel inContext: context];
	p = (void*) &kSecImportItemKeyID;
	if (p != NULL) context[@"kSecImportItemKeyID"] = [JSValue valueWithObject: (__bridge id) kSecImportItemKeyID inContext: context];
	p = (void*) &kSecImportItemIdentity;
	if (p != NULL) context[@"kSecImportItemIdentity"] = [JSValue valueWithObject: (__bridge id) kSecImportItemIdentity inContext: context];
	p = (void*) &kSecImportExportPassphrase;
	if (p != NULL) context[@"kSecImportExportPassphrase"] = [JSValue valueWithObject: (__bridge id) kSecImportExportPassphrase inContext: context];
}
void load_Security_SecImportExport_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
