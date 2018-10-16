#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSJSONSerialization (Exports)
+(NSInteger) jswriteJSONObject: (id) obj toStream: (NSOutputStream *) stream options: (NSJSONWritingOptions) opt error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSInteger resultVal__;
	resultVal__ = [self writeJSONObject: obj toStream: stream options: opt error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(id) jsJSONObjectWithStream: (NSInputStream *) stream options: (NSJSONReadingOptions) opt error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self JSONObjectWithStream: stream options: opt error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(id) jsJSONObjectWithData: (NSData *) data options: (NSJSONReadingOptions) opt error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self JSONObjectWithData: data options: opt error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(NSData *) jsdataWithJSONObject: (id) obj options: (NSJSONWritingOptions) opt error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSData * resultVal__;
	resultVal__ = [self dataWithJSONObject: obj options: opt error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSJSONSerialization class], @protocol(NSJSONSerializationInstanceExports));
	class_addProtocol([NSJSONSerialization class], @protocol(NSJSONSerializationClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSJSONReadingMutableContainers"] = @1UL;
	context[@"NSJSONReadingMutableLeaves"] = @2UL;
	context[@"NSJSONReadingAllowFragments"] = @4UL;

	context[@"NSJSONWritingPrettyPrinted"] = @1UL;
	context[@"NSJSONWritingSortedKeys"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSJSONSerialization_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
