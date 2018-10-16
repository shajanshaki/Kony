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
@implementation NSSocketPort (Exports)
-(id) jsinitWithProtocolFamily: (int) family socketType: (int) type protocol: (int) protocol address: (NSData *) address 
{
	id resultVal__;
	resultVal__ = [[self initWithProtocolFamily: family socketType: type protocol: protocol address: address ] autorelease];
	return resultVal__;
}
-(id) jsinitRemoteWithTCPPort: (unsigned short) port host: (NSString *) hostName 
{
	id resultVal__;
	resultVal__ = [[self initRemoteWithTCPPort: port host: hostName ] autorelease];
	return resultVal__;
}
-(id) jsinitWithTCPPort: (unsigned short) port 
{
	id resultVal__;
	resultVal__ = [[self initWithTCPPort: port ] autorelease];
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithProtocolFamily: (int) family socketType: (int) type protocol: (int) protocol socket: (NSSocketNativeHandle) sock 
{
	id resultVal__;
	resultVal__ = [[self initWithProtocolFamily: family socketType: type protocol: protocol socket: sock ] autorelease];
	return resultVal__;
}
-(id) jsinitRemoteWithProtocolFamily: (int) family socketType: (int) type protocol: (int) protocol address: (NSData *) address 
{
	id resultVal__;
	resultVal__ = [[self initRemoteWithProtocolFamily: family socketType: type protocol: protocol address: address ] autorelease];
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
	class_addProtocol([NSSocketPort class], @protocol(NSSocketPortInstanceExports));
	class_addProtocol([NSSocketPort class], @protocol(NSSocketPortClassExports));
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
	context[@"NSMachPortDeallocateNone"] = @0UL;
	context[@"NSMachPortDeallocateSendRight"] = @1UL;
	context[@"NSMachPortDeallocateReceiveRight"] = @2UL;

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
