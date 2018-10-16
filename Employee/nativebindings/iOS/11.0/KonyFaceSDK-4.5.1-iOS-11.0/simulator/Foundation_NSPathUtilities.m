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
	class_addProtocol([NSArray class], @protocol(NSArrayNSArrayPathExtensionsCategoryInstanceExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSArrayPathExtensionsCategoryClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringPathExtensionsCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringPathExtensionsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
	context[@"NSUserName"] = ^NSString *() {
		return NSUserName();
	};
	context[@"NSHomeDirectory"] = ^NSString *() {
		return NSHomeDirectory();
	};
	context[@"NSHomeDirectoryForUser"] = ^NSString *(NSString * arg0) {
		return NSHomeDirectoryForUser(arg0);
	};
	context[@"NSOpenStepRootDirectory"] = ^NSString *() {
		return NSOpenStepRootDirectory();
	};
	context[@"NSFullUserName"] = ^NSString *() {
		return NSFullUserName();
	};
	context[@"NSTemporaryDirectory"] = ^NSString *() {
		return NSTemporaryDirectory();
	};
	context[@"NSSearchPathForDirectoriesInDomains"] = ^NSArray *(NSSearchPathDirectory arg0, NSSearchPathDomainMask arg1, BOOL arg2) {
		return NSSearchPathForDirectoriesInDomains(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSApplicationDirectory"] = @1UL;
	context[@"NSDemoApplicationDirectory"] = @2UL;
	context[@"NSDeveloperApplicationDirectory"] = @3UL;
	context[@"NSAdminApplicationDirectory"] = @4UL;
	context[@"NSLibraryDirectory"] = @5UL;
	context[@"NSDeveloperDirectory"] = @6UL;
	context[@"NSUserDirectory"] = @7UL;
	context[@"NSDocumentationDirectory"] = @8UL;
	context[@"NSDocumentDirectory"] = @9UL;
	context[@"NSCoreServiceDirectory"] = @10UL;
	context[@"NSAutosavedInformationDirectory"] = @11UL;
	context[@"NSDesktopDirectory"] = @12UL;
	context[@"NSCachesDirectory"] = @13UL;
	context[@"NSApplicationSupportDirectory"] = @14UL;
	context[@"NSDownloadsDirectory"] = @15UL;
	context[@"NSInputMethodsDirectory"] = @16UL;
	context[@"NSMoviesDirectory"] = @17UL;
	context[@"NSMusicDirectory"] = @18UL;
	context[@"NSPicturesDirectory"] = @19UL;
	context[@"NSPrinterDescriptionDirectory"] = @20UL;
	context[@"NSSharedPublicDirectory"] = @21UL;
	context[@"NSPreferencePanesDirectory"] = @22UL;
	context[@"NSItemReplacementDirectory"] = @99UL;
	context[@"NSAllApplicationsDirectory"] = @100UL;
	context[@"NSAllLibrariesDirectory"] = @101UL;
	context[@"NSTrashDirectory"] = @102UL;

	context[@"NSUserDomainMask"] = @1UL;
	context[@"NSLocalDomainMask"] = @2UL;
	context[@"NSNetworkDomainMask"] = @4UL;
	context[@"NSSystemDomainMask"] = @8UL;
	context[@"NSAllDomainsMask"] = @65535UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSPathUtilities_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
