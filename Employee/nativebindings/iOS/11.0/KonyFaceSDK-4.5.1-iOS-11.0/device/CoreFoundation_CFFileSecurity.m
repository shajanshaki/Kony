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
	context[@"CFFileSecuritySetGroupUUID"] = ^Boolean(id arg0, id arg1) {
		return CFFileSecuritySetGroupUUID(arg0, arg1);
	};
	context[@"CFFileSecurityClearProperties"] = ^Boolean(id arg0, CFFileSecurityClearOptions arg1) {
		return CFFileSecurityClearProperties(arg0, arg1);
	};
	context[@"CFFileSecuritySetMode"] = ^Boolean(id arg0, mode_t arg1) {
		return CFFileSecuritySetMode(arg0, arg1);
	};
	context[@"CFFileSecuritySetOwner"] = ^Boolean(id arg0, uid_t arg1) {
		return CFFileSecuritySetOwner(arg0, arg1);
	};
	context[@"CFFileSecuritySetOwnerUUID"] = ^Boolean(id arg0, id arg1) {
		return CFFileSecuritySetOwnerUUID(arg0, arg1);
	};
	context[@"CFFileSecurityCreate"] = ^id(id arg0) {
		return CFFileSecurityCreate(arg0);
	};
	context[@"CFFileSecuritySetGroup"] = ^Boolean(id arg0, gid_t arg1) {
		return CFFileSecuritySetGroup(arg0, arg1);
	};
	context[@"CFFileSecurityCreateCopy"] = ^id(id arg0, id arg1) {
		return CFFileSecurityCreateCopy(arg0, arg1);
	};
	context[@"CFFileSecurityGetTypeID"] = ^CFTypeID() {
		return CFFileSecurityGetTypeID();
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFFileSecurityClearOwner"] = @1UL;
	context[@"kCFFileSecurityClearGroup"] = @2UL;
	context[@"kCFFileSecurityClearMode"] = @4UL;
	context[@"kCFFileSecurityClearOwnerUUID"] = @8UL;
	context[@"kCFFileSecurityClearGroupUUID"] = @16UL;
	context[@"kCFFileSecurityClearAccessControlList"] = @32UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFFileSecurity_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
