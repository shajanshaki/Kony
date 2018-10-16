#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLProtocol (NSURLProtocolNSURLSessionTaskAdditionsCategoryExports)
-(id) jsinitWithTask: (NSURLSessionTask *) task cachedResponse: (NSCachedURLResponse *) cachedResponse client: (id) client 
{
	id resultVal__;
	resultVal__ = [[self initWithTask: task cachedResponse: cachedResponse client: client ] autorelease];
	return resultVal__;
}
@end
@implementation NSURLProtocol (Exports)
-(id) jsinitWithRequest: (NSURLRequest *) request cachedResponse: (NSCachedURLResponse *) cachedResponse client: (id) client 
{
	id resultVal__;
	resultVal__ = [[self initWithRequest: request cachedResponse: cachedResponse client: client ] autorelease];
	return resultVal__;
}
+(void) jsunregisterClass: (JSValue *) protocolClass 
{
	Class protocolClass_ = objc_getClass([[protocolClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self unregisterClass: protocolClass_ ];
}
+(BOOL) jsregisterClass: (JSValue *) protocolClass 
{
	Class protocolClass_ = objc_getClass([[protocolClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self registerClass: protocolClass_ ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSURLProtocol class], @protocol(NSURLProtocolNSURLSessionTaskAdditionsCategoryInstanceExports));
	class_addProtocol([NSURLProtocol class], @protocol(NSURLProtocolNSURLSessionTaskAdditionsCategoryClassExports));
	class_addProtocol([NSURLProtocol class], @protocol(NSURLProtocolInstanceExports));
	class_addProtocol([NSURLProtocol class], @protocol(NSURLProtocolClassExports));
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
}
void Foundation_NSURLProtocolProtocols()
{
	(void)@protocol(NSURLProtocolClient);
}
void load_Foundation_NSURLProtocol_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
