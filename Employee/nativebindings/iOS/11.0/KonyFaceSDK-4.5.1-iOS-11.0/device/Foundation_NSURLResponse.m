#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLResponse (Exports)
-(id) jsinitWithURL: (NSURL *) URL MIMEType: (NSString *) MIMEType expectedContentLength: (NSInteger) length textEncodingName: (NSString *) name 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL MIMEType: MIMEType expectedContentLength: length textEncodingName: name ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSHTTPURLResponse (Exports)
-(id) jsinitWithURL: (NSURL *) url statusCode: (NSInteger) statusCode HTTPVersion: (NSString *) HTTPVersion headerFields: (NSDictionary *) headerFields 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: url statusCode: statusCode HTTPVersion: HTTPVersion headerFields: headerFields ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSURLResponse class], @protocol(NSURLResponseInstanceExports));
	class_addProtocol([NSURLResponse class], @protocol(NSURLResponseClassExports));
	class_addProtocol([NSHTTPURLResponse class], @protocol(NSHTTPURLResponseInstanceExports));
	class_addProtocol([NSHTTPURLResponse class], @protocol(NSHTTPURLResponseClassExports));
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
void load_Foundation_NSURLResponse_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
