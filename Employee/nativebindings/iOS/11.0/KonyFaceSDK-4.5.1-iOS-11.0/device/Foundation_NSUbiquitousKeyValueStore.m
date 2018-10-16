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
	class_addProtocol([NSUbiquitousKeyValueStore class], @protocol(NSUbiquitousKeyValueStoreInstanceExports));
	class_addProtocol([NSUbiquitousKeyValueStore class], @protocol(NSUbiquitousKeyValueStoreClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSUbiquitousKeyValueStoreServerChange"] = @0;
	context[@"NSUbiquitousKeyValueStoreInitialSyncChange"] = @1;
	context[@"NSUbiquitousKeyValueStoreQuotaViolationChange"] = @2;
	context[@"NSUbiquitousKeyValueStoreAccountChange"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSUbiquitousKeyValueStoreDidChangeExternallyNotification;
	if (p != NULL) context[@"NSUbiquitousKeyValueStoreDidChangeExternallyNotification"] = NSUbiquitousKeyValueStoreDidChangeExternallyNotification;
	p = (void*) &NSUbiquitousKeyValueStoreChangeReasonKey;
	if (p != NULL) context[@"NSUbiquitousKeyValueStoreChangeReasonKey"] = NSUbiquitousKeyValueStoreChangeReasonKey;
	p = (void*) &NSUbiquitousKeyValueStoreChangedKeysKey;
	if (p != NULL) context[@"NSUbiquitousKeyValueStoreChangedKeysKey"] = NSUbiquitousKeyValueStoreChangedKeysKey;
}
void load_Foundation_NSUbiquitousKeyValueStore_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
