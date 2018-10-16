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
	context[@"SecAccessControlGetTypeID"] = ^CFTypeID() {
		return SecAccessControlGetTypeID();
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kSecAccessControlUserPresence"] = @1UL;
	context[@"kSecAccessControlTouchIDAny"] = @2UL;
	context[@"kSecAccessControlTouchIDCurrentSet"] = @8UL;
	context[@"kSecAccessControlDevicePasscode"] = @16UL;
	context[@"kSecAccessControlOr"] = @16384UL;
	context[@"kSecAccessControlAnd"] = @32768UL;
	context[@"kSecAccessControlPrivateKeyUsage"] = @1073741824UL;
	context[@"kSecAccessControlApplicationPassword"] = @-2147483648UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Security_SecAccessControl_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
