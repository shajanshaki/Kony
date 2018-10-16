#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSNotificationQueue (Exports)
-(id) jsinitWithNotificationCenter: (NSNotificationCenter *) notificationCenter 
{
	id resultVal__;
	resultVal__ = [[self initWithNotificationCenter: notificationCenter ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSNotificationQueue class], @protocol(NSNotificationQueueInstanceExports));
	class_addProtocol([NSNotificationQueue class], @protocol(NSNotificationQueueClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSPostWhenIdle"] = @1U;
	context[@"NSPostASAP"] = @2U;
	context[@"NSPostNow"] = @3U;

	context[@"NSNotificationNoCoalescing"] = @0U;
	context[@"NSNotificationCoalescingOnName"] = @1U;
	context[@"NSNotificationCoalescingOnSender"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSNotificationQueue_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
