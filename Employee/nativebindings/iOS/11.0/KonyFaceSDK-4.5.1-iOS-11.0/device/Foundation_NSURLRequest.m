#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLRequest (Exports)
-(id) jsinitWithURL: (NSURL *) URL 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL ] autorelease];
	return resultVal__;
}
-(id) jsinitWithURL: (NSURL *) URL cachePolicy: (NSURLRequestCachePolicy) cachePolicy timeoutInterval: (NSTimeInterval) timeoutInterval 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL cachePolicy: cachePolicy timeoutInterval: timeoutInterval ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSMutableURLRequest class], @protocol(NSMutableURLRequestNSMutableHTTPURLRequestCategoryInstanceExports));
	class_addProtocol([NSMutableURLRequest class], @protocol(NSMutableURLRequestNSMutableHTTPURLRequestCategoryClassExports));
	class_addProtocol([NSMutableURLRequest class], @protocol(NSMutableURLRequestInstanceExports));
	class_addProtocol([NSMutableURLRequest class], @protocol(NSMutableURLRequestClassExports));
	class_addProtocol([NSURLRequest class], @protocol(NSURLRequestNSHTTPURLRequestCategoryInstanceExports));
	class_addProtocol([NSURLRequest class], @protocol(NSURLRequestNSHTTPURLRequestCategoryClassExports));
	class_addProtocol([NSURLRequest class], @protocol(NSURLRequestInstanceExports));
	class_addProtocol([NSURLRequest class], @protocol(NSURLRequestClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSURLRequestUseProtocolCachePolicy"] = @0U;
	context[@"NSURLRequestReloadIgnoringLocalCacheData"] = @1U;
	context[@"NSURLRequestReloadIgnoringLocalAndRemoteCacheData"] = @4U;
	context[@"NSURLRequestReloadIgnoringCacheData"] = @1U;
	context[@"NSURLRequestReturnCacheDataElseLoad"] = @2U;
	context[@"NSURLRequestReturnCacheDataDontLoad"] = @3U;
	context[@"NSURLRequestReloadRevalidatingCacheData"] = @5U;

	context[@"NSURLNetworkServiceTypeDefault"] = @0U;
	context[@"NSURLNetworkServiceTypeVoIP"] = @1U;
	context[@"NSURLNetworkServiceTypeVideo"] = @2U;
	context[@"NSURLNetworkServiceTypeBackground"] = @3U;
	context[@"NSURLNetworkServiceTypeVoice"] = @4U;
	context[@"NSURLNetworkServiceTypeCallSignaling"] = @11U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSURLRequest_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
