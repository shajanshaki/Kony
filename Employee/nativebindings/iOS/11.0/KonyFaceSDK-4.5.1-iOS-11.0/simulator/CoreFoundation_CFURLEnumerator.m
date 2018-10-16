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
	context[@"CFURLEnumeratorCreateForMountedVolumes"] = ^id(id arg0, CFURLEnumeratorOptions arg1, id arg2) {
		return CFURLEnumeratorCreateForMountedVolumes(arg0, arg1, arg2);
	};
	context[@"CFURLEnumeratorGetSourceDidChange"] = ^Boolean(id arg0) {
		return CFURLEnumeratorGetSourceDidChange(arg0);
	};
	context[@"CFURLEnumeratorGetTypeID"] = ^CFTypeID() {
		return CFURLEnumeratorGetTypeID();
	};
	context[@"CFURLEnumeratorSkipDescendents"] = ^void(id arg0) {
		CFURLEnumeratorSkipDescendents(arg0);
	};
	context[@"CFURLEnumeratorGetDescendentLevel"] = ^CFIndex(id arg0) {
		return CFURLEnumeratorGetDescendentLevel(arg0);
	};
	context[@"CFURLEnumeratorCreateForDirectoryURL"] = ^id(id arg0, id arg1, CFURLEnumeratorOptions arg2, id arg3) {
		return CFURLEnumeratorCreateForDirectoryURL(arg0, arg1, arg2, arg3);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFURLEnumeratorDefaultBehavior"] = @0UL;
	context[@"kCFURLEnumeratorDescendRecursively"] = @1UL;
	context[@"kCFURLEnumeratorSkipInvisibles"] = @2UL;
	context[@"kCFURLEnumeratorGenerateFileReferenceURLs"] = @4UL;
	context[@"kCFURLEnumeratorSkipPackageContents"] = @8UL;
	context[@"kCFURLEnumeratorIncludeDirectoriesPreOrder"] = @16UL;
	context[@"kCFURLEnumeratorIncludeDirectoriesPostOrder"] = @32UL;

	context[@"kCFURLEnumeratorSuccess"] = @1L;
	context[@"kCFURLEnumeratorEnd"] = @2L;
	context[@"kCFURLEnumeratorError"] = @3L;
	context[@"kCFURLEnumeratorDirectoryPostOrderSuccess"] = @4L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFURLEnumerator_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
