#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (Foundation_NSProcessInfo)
+(JSValue*) valueWithNSOperatingSystemVersion: (NSOperatingSystemVersion) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"majorVersion": @(s.majorVersion),
		@"minorVersion": @(s.minorVersion),
		@"patchVersion": @(s.patchVersion),
	} inContext: context];
}
-(NSOperatingSystemVersion) toNSOperatingSystemVersion {
	return (NSOperatingSystemVersion) {
		(NSInteger) [self[@"majorVersion"] toDouble],
		(NSInteger) [self[@"minorVersion"] toDouble],
		(NSInteger) [self[@"patchVersion"] toDouble],
	};
}
@end
@implementation NSProcessInfo (NSProcessInfoNSProcessInfoActivityCategoryExports)
-(void) jsperformExpiringActivityWithReason: (NSString *) reason usingBlock: (JSValue *) block 
{
	void (^ block_)(BOOL) = nil;
	if (!block.isUndefined) {
		block_ = ^void(BOOL arg0) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self performExpiringActivityWithReason: reason usingBlock: block_ ];
}
-(void) jsperformActivityWithOptions: (NSActivityOptions) options reason: (NSString *) reason usingBlock: (JSValue *) block 
{
	void (^ block_)(void) = nil;
	if (!block.isUndefined) {
		block_ = ^void() {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self performActivityWithOptions: options reason: reason usingBlock: block_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSProcessInfo class], @protocol(NSProcessInfoNSProcessInfoActivityCategoryInstanceExports));
	class_addProtocol([NSProcessInfo class], @protocol(NSProcessInfoNSProcessInfoActivityCategoryClassExports));
	class_addProtocol([NSProcessInfo class], @protocol(NSProcessInfoNSUserInformationCategoryInstanceExports));
	class_addProtocol([NSProcessInfo class], @protocol(NSProcessInfoNSUserInformationCategoryClassExports));
	class_addProtocol([NSProcessInfo class], @protocol(NSProcessInfoNSProcessInfoPowerStateCategoryInstanceExports));
	class_addProtocol([NSProcessInfo class], @protocol(NSProcessInfoNSProcessInfoPowerStateCategoryClassExports));
	class_addProtocol([NSProcessInfo class], @protocol(NSProcessInfoInstanceExports));
	class_addProtocol([NSProcessInfo class], @protocol(NSProcessInfoClassExports));
	class_addProtocol([NSProcessInfo class], @protocol(NSProcessInfoNSProcessInfoThermalStateCategoryInstanceExports));
	class_addProtocol([NSProcessInfo class], @protocol(NSProcessInfoNSProcessInfoThermalStateCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSWindowsNTOperatingSystem"] = @1;
	context[@"NSWindows95OperatingSystem"] = @2;
	context[@"NSSolarisOperatingSystem"] = @3;
	context[@"NSHPUXOperatingSystem"] = @4;
	context[@"NSMACHOperatingSystem"] = @5;
	context[@"NSSunOSOperatingSystem"] = @6;
	context[@"NSOSF1OperatingSystem"] = @7;

	context[@"NSActivityIdleDisplaySleepDisabled"] = @1099511627776ULL;
	context[@"NSActivityIdleSystemSleepDisabled"] = @1048576ULL;
	context[@"NSActivitySuddenTerminationDisabled"] = @16384ULL;
	context[@"NSActivityAutomaticTerminationDisabled"] = @32768ULL;
	context[@"NSActivityUserInitiated"] = @16777215ULL;
	context[@"NSActivityUserInitiatedAllowingIdleSystemSleep"] = @15728639ULL;
	context[@"NSActivityBackground"] = @255ULL;
	context[@"NSActivityLatencyCritical"] = @1095216660480ULL;

	context[@"NSProcessInfoThermalStateNominal"] = @0L;
	context[@"NSProcessInfoThermalStateFair"] = @1L;
	context[@"NSProcessInfoThermalStateSerious"] = @2L;
	context[@"NSProcessInfoThermalStateCritical"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSProcessInfoPowerStateDidChangeNotification;
	if (p != NULL) context[@"NSProcessInfoPowerStateDidChangeNotification"] = NSProcessInfoPowerStateDidChangeNotification;
	p = (void*) &NSProcessInfoThermalStateDidChangeNotification;
	if (p != NULL) context[@"NSProcessInfoThermalStateDidChangeNotification"] = NSProcessInfoThermalStateDidChangeNotification;
}
void load_Foundation_NSProcessInfo_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
