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
	context[@"CFBundleCopyPrivateFrameworksURL"] = ^id(id arg0) {
		return CFBundleCopyPrivateFrameworksURL(arg0);
	};
	context[@"CFBundleGetMainBundle"] = ^id() {
		return CFBundleGetMainBundle();
	};
	context[@"CFBundleCopyExecutableArchitectures"] = ^id(id arg0) {
		return CFBundleCopyExecutableArchitectures(arg0);
	};
	context[@"CFBundleCopyAuxiliaryExecutableURL"] = ^id(id arg0, id arg1) {
		return CFBundleCopyAuxiliaryExecutableURL(arg0, arg1);
	};
	context[@"CFBundleCopyExecutableURL"] = ^id(id arg0) {
		return CFBundleCopyExecutableURL(arg0);
	};
	context[@"CFBundleCopyResourceURLsOfType"] = ^id(id arg0, id arg1, id arg2) {
		return CFBundleCopyResourceURLsOfType(arg0, arg1, arg2);
	};
	context[@"CFBundleGetTypeID"] = ^CFTypeID() {
		return CFBundleGetTypeID();
	};
	context[@"CFBundleGetBundleWithIdentifier"] = ^id(id arg0) {
		return CFBundleGetBundleWithIdentifier(arg0);
	};
	context[@"CFBundleCreateBundlesFromDirectory"] = ^id(id arg0, id arg1, id arg2) {
		return CFBundleCreateBundlesFromDirectory(arg0, arg1, arg2);
	};
	context[@"CFBundleGetPlugIn"] = ^id(id arg0) {
		return CFBundleGetPlugIn(arg0);
	};
	context[@"CFBundleGetInfoDictionary"] = ^id(id arg0) {
		return CFBundleGetInfoDictionary(arg0);
	};
	context[@"CFBundleCopyInfoDictionaryForURL"] = ^id(id arg0) {
		return CFBundleCopyInfoDictionaryForURL(arg0);
	};
	context[@"CFBundleCopySupportFilesDirectoryURL"] = ^id(id arg0) {
		return CFBundleCopySupportFilesDirectoryURL(arg0);
	};
	context[@"CFBundleCopyResourceURLForLocalization"] = ^id(id arg0, id arg1, id arg2, id arg3, id arg4) {
		return CFBundleCopyResourceURLForLocalization(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CFBundleCopyLocalizationsForURL"] = ^id(id arg0) {
		return CFBundleCopyLocalizationsForURL(arg0);
	};
	context[@"CFBundleGetVersionNumber"] = ^UInt32(id arg0) {
		return CFBundleGetVersionNumber(arg0);
	};
	context[@"CFBundleCopyLocalizationsForPreferences"] = ^id(id arg0, id arg1) {
		return CFBundleCopyLocalizationsForPreferences(arg0, arg1);
	};
	context[@"CFBundleCopyBundleLocalizations"] = ^id(id arg0) {
		return CFBundleCopyBundleLocalizations(arg0);
	};
	context[@"CFBundleCopyExecutableArchitecturesForURL"] = ^id(id arg0) {
		return CFBundleCopyExecutableArchitecturesForURL(arg0);
	};
	context[@"CFBundleCreate"] = ^id(id arg0, id arg1) {
		return CFBundleCreate(arg0, arg1);
	};
	context[@"CFBundleGetAllBundles"] = ^id() {
		return CFBundleGetAllBundles();
	};
	context[@"CFBundleCopyLocalizedString"] = ^id(id arg0, id arg1, id arg2, id arg3) {
		return CFBundleCopyLocalizedString(arg0, arg1, arg2, arg3);
	};
	context[@"CFBundleLoadExecutable"] = ^Boolean(id arg0) {
		return CFBundleLoadExecutable(arg0);
	};
	context[@"CFBundleCopyResourceURLsOfTypeForLocalization"] = ^id(id arg0, id arg1, id arg2, id arg3) {
		return CFBundleCopyResourceURLsOfTypeForLocalization(arg0, arg1, arg2, arg3);
	};
	context[@"CFBundleCopyPreferredLocalizationsFromArray"] = ^id(id arg0) {
		return CFBundleCopyPreferredLocalizationsFromArray(arg0);
	};
	context[@"CFBundleGetDevelopmentRegion"] = ^id(id arg0) {
		return CFBundleGetDevelopmentRegion(arg0);
	};
	context[@"CFBundleUnloadExecutable"] = ^void(id arg0) {
		CFBundleUnloadExecutable(arg0);
	};
	context[@"CFBundleCopyResourceURLInDirectory"] = ^id(id arg0, id arg1, id arg2, id arg3) {
		return CFBundleCopyResourceURLInDirectory(arg0, arg1, arg2, arg3);
	};
	context[@"CFBundleCopySharedFrameworksURL"] = ^id(id arg0) {
		return CFBundleCopySharedFrameworksURL(arg0);
	};
	context[@"CFBundleCopyResourceURL"] = ^id(id arg0, id arg1, id arg2, id arg3) {
		return CFBundleCopyResourceURL(arg0, arg1, arg2, arg3);
	};
	context[@"CFBundleGetIdentifier"] = ^id(id arg0) {
		return CFBundleGetIdentifier(arg0);
	};
	context[@"CFBundleCopyResourceURLsOfTypeInDirectory"] = ^id(id arg0, id arg1, id arg2) {
		return CFBundleCopyResourceURLsOfTypeInDirectory(arg0, arg1, arg2);
	};
	context[@"CFBundleCopyBundleURL"] = ^id(id arg0) {
		return CFBundleCopyBundleURL(arg0);
	};
	context[@"CFBundleGetValueForInfoDictionaryKey"] = ^id(id arg0, id arg1) {
		return CFBundleGetValueForInfoDictionaryKey(arg0, arg1);
	};
	context[@"CFBundleCopyBuiltInPlugInsURL"] = ^id(id arg0) {
		return CFBundleCopyBuiltInPlugInsURL(arg0);
	};
	context[@"CFBundleIsExecutableLoaded"] = ^Boolean(id arg0) {
		return CFBundleIsExecutableLoaded(arg0);
	};
	context[@"CFBundleCopyResourcesDirectoryURL"] = ^id(id arg0) {
		return CFBundleCopyResourcesDirectoryURL(arg0);
	};
	context[@"CFBundleCopyInfoDictionaryInDirectory"] = ^id(id arg0) {
		return CFBundleCopyInfoDictionaryInDirectory(arg0);
	};
	context[@"CFBundleCopySharedSupportURL"] = ^id(id arg0) {
		return CFBundleCopySharedSupportURL(arg0);
	};
	context[@"CFBundleGetLocalInfoDictionary"] = ^id(id arg0) {
		return CFBundleGetLocalInfoDictionary(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFBundleExecutableArchitectureI386"] = @7;
	context[@"kCFBundleExecutableArchitecturePPC"] = @18;
	context[@"kCFBundleExecutableArchitectureX86_64"] = @16777223;
	context[@"kCFBundleExecutableArchitecturePPC64"] = @16777234;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFBundleIdentifierKey;
	if (p != NULL) context[@"kCFBundleIdentifierKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleIdentifierKey inContext: context];
	p = (void*) &kCFBundleInfoDictionaryVersionKey;
	if (p != NULL) context[@"kCFBundleInfoDictionaryVersionKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleInfoDictionaryVersionKey inContext: context];
	p = (void*) &kCFBundleVersionKey;
	if (p != NULL) context[@"kCFBundleVersionKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleVersionKey inContext: context];
	p = (void*) &kCFBundleNameKey;
	if (p != NULL) context[@"kCFBundleNameKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleNameKey inContext: context];
	p = (void*) &kCFBundleDevelopmentRegionKey;
	if (p != NULL) context[@"kCFBundleDevelopmentRegionKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleDevelopmentRegionKey inContext: context];
	p = (void*) &kCFBundleLocalizationsKey;
	if (p != NULL) context[@"kCFBundleLocalizationsKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleLocalizationsKey inContext: context];
	p = (void*) &kCFBundleExecutableKey;
	if (p != NULL) context[@"kCFBundleExecutableKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleExecutableKey inContext: context];
}
void load_CoreFoundation_CFBundle_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
