#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSUserDefaults (Exports)
-(id) jsinitWithSuiteName: (NSString *) suitename 
{
	id resultVal__;
	resultVal__ = [[self initWithSuiteName: suitename ] autorelease];
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithUser: (NSString *) username 
{
	id resultVal__;
	resultVal__ = [[self initWithUser: username ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSUserDefaults class], @protocol(NSUserDefaultsInstanceExports));
	class_addProtocol([NSUserDefaults class], @protocol(NSUserDefaultsClassExports));
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
	p = (void*) &NSRegistrationDomain;
	if (p != NULL) context[@"NSRegistrationDomain"] = NSRegistrationDomain;
	p = (void*) &NSUbiquitousUserDefaultsNoCloudAccountNotification;
	if (p != NULL) context[@"NSUbiquitousUserDefaultsNoCloudAccountNotification"] = NSUbiquitousUserDefaultsNoCloudAccountNotification;
	p = (void*) &NSUserDefaultsDidChangeNotification;
	if (p != NULL) context[@"NSUserDefaultsDidChangeNotification"] = NSUserDefaultsDidChangeNotification;
	p = (void*) &NSArgumentDomain;
	if (p != NULL) context[@"NSArgumentDomain"] = NSArgumentDomain;
	p = (void*) &NSUbiquitousUserDefaultsCompletedInitialSyncNotification;
	if (p != NULL) context[@"NSUbiquitousUserDefaultsCompletedInitialSyncNotification"] = NSUbiquitousUserDefaultsCompletedInitialSyncNotification;
	p = (void*) &NSGlobalDomain;
	if (p != NULL) context[@"NSGlobalDomain"] = NSGlobalDomain;
	p = (void*) &NSUserDefaultsSizeLimitExceededNotification;
	if (p != NULL) context[@"NSUserDefaultsSizeLimitExceededNotification"] = NSUserDefaultsSizeLimitExceededNotification;
	p = (void*) &NSUbiquitousUserDefaultsDidChangeAccountsNotification;
	if (p != NULL) context[@"NSUbiquitousUserDefaultsDidChangeAccountsNotification"] = NSUbiquitousUserDefaultsDidChangeAccountsNotification;
}
void load_Foundation_NSUserDefaults_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
