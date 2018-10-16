#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSXPCInterface (Exports)
-(void) jssetInterface: (NSXPCInterface *) ifc forSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply 
{
	SEL sel_ = NSSelectorFromString(sel);
	[self setInterface: ifc forSelector: sel_ argumentIndex: arg ofReply: ofReply ];
}
-(void) jssetClasses: (NSSet *) classes forSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply 
{
	SEL sel_ = NSSelectorFromString(sel);
	[self setClasses: classes forSelector: sel_ argumentIndex: arg ofReply: ofReply ];
}
-(NSXPCInterface *) jsinterfaceForSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply 
{
	SEL sel_ = NSSelectorFromString(sel);
	NSXPCInterface * resultVal__;
	resultVal__ = [self interfaceForSelector: sel_ argumentIndex: arg ofReply: ofReply ];
	return resultVal__;
}
-(NSSet *) jsclassesForSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply 
{
	SEL sel_ = NSSelectorFromString(sel);
	NSSet * resultVal__;
	resultVal__ = [self classesForSelector: sel_ argumentIndex: arg ofReply: ofReply ];
	return resultVal__;
}
@end
@implementation NSXPCConnection (Exports)
-(id) jssynchronousRemoteObjectProxyWithErrorHandler: (JSValue *) handler 
{
	void (^ handler_)(NSError * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(NSError * arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self synchronousRemoteObjectProxyWithErrorHandler: handler_ ];
	return resultVal__;
}
-(id) jsinitWithListenerEndpoint: (NSXPCListenerEndpoint *) endpoint 
{
	id resultVal__;
	resultVal__ = [[self initWithListenerEndpoint: endpoint ] autorelease];
	return resultVal__;
}
-(id) jsremoteObjectProxyWithErrorHandler: (JSValue *) handler 
{
	void (^ handler_)(NSError * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(NSError * arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self remoteObjectProxyWithErrorHandler: handler_ ];
	return resultVal__;
}
-(JSValue *) getJsInterruptionHandler
{
	return [JSValue valueWithObject: self.interruptionHandler inContext: [JSContext currentContext]];
}
-(void) setJsInterruptionHandler: (JSValue *) value
{
	void (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^void() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.interruptionHandler = value_;
}
-(JSValue *) getJsInvalidationHandler
{
	return [JSValue valueWithObject: self.invalidationHandler inContext: [JSContext currentContext]];
}
-(void) setJsInvalidationHandler: (JSValue *) value
{
	void (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^void() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.invalidationHandler = value_;
}
@end
@implementation NSXPCListenerEndpoint (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSXPCInterface class], @protocol(NSXPCInterfaceInstanceExports));
	class_addProtocol([NSXPCInterface class], @protocol(NSXPCInterfaceClassExports));
	class_addProtocol([NSXPCConnection class], @protocol(NSXPCConnectionInstanceExports));
	class_addProtocol([NSXPCConnection class], @protocol(NSXPCConnectionClassExports));
	class_addProtocol([NSXPCListenerEndpoint class], @protocol(NSXPCListenerEndpointInstanceExports));
	class_addProtocol([NSXPCListenerEndpoint class], @protocol(NSXPCListenerEndpointClassExports));
	class_addProtocol([NSXPCListener class], @protocol(NSXPCListenerInstanceExports));
	class_addProtocol([NSXPCListener class], @protocol(NSXPCListenerClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSXPCConnectionPrivileged"] = @4096U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Foundation_NSXPCConnectionProtocols()
{
	(void)@protocol(NSXPCListenerDelegate);
	(void)@protocol(NSXPCProxyCreating);
}
void load_Foundation_NSXPCConnection_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
