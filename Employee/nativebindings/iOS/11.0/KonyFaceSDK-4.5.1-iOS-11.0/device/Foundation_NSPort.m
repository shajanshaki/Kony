#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSPort (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSMachPort (Exports)
-(id) jsinitWithMachPort: (uint32_t) machPort options: (NSMachPortOptions) f 
{
	id resultVal__;
	resultVal__ = [[self initWithMachPort: machPort options: f ] autorelease];
	return resultVal__;
}
-(id) jsinitWithMachPort: (uint32_t) machPort 
{
	id resultVal__;
	resultVal__ = [[self initWithMachPort: machPort ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSPort class], @protocol(NSPortInstanceExports));
	class_addProtocol([NSPort class], @protocol(NSPortClassExports));
	class_addProtocol([NSMachPort class], @protocol(NSMachPortInstanceExports));
	class_addProtocol([NSMachPort class], @protocol(NSMachPortClassExports));
	class_addProtocol([NSMessagePort class], @protocol(NSMessagePortInstanceExports));
	class_addProtocol([NSMessagePort class], @protocol(NSMessagePortClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSMachPortDeallocateNone"] = @0U;
	context[@"NSMachPortDeallocateSendRight"] = @1U;
	context[@"NSMachPortDeallocateReceiveRight"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSPortDidBecomeInvalidNotification;
	if (p != NULL) context[@"NSPortDidBecomeInvalidNotification"] = NSPortDidBecomeInvalidNotification;
}
void Foundation_NSPortProtocols()
{
	(void)@protocol(NSMachPortDelegate);
	(void)@protocol(NSPortDelegate);
}
void load_Foundation_NSPort_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
