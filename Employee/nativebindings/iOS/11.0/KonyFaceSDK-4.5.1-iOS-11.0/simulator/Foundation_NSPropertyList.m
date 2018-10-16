#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSPropertyListSerialization (Exports)
+(NSData *) jsdataWithPropertyList: (id) plist format: (NSPropertyListFormat) format options: (NSPropertyListWriteOptions) opt error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSData * resultVal__;
	resultVal__ = [self dataWithPropertyList: plist format: format options: opt error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(NSInteger) jswritePropertyList: (id) plist toStream: (NSOutputStream *) stream format: (NSPropertyListFormat) format options: (NSPropertyListWriteOptions) opt error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSInteger resultVal__;
	resultVal__ = [self writePropertyList: plist toStream: stream format: format options: opt error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSPropertyListSerialization class], @protocol(NSPropertyListSerializationInstanceExports));
	class_addProtocol([NSPropertyListSerialization class], @protocol(NSPropertyListSerializationClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSPropertyListImmutable"] = @0UL;
	context[@"NSPropertyListMutableContainers"] = @1UL;
	context[@"NSPropertyListMutableContainersAndLeaves"] = @2UL;

	context[@"NSPropertyListOpenStepFormat"] = @1UL;
	context[@"NSPropertyListXMLFormat_v1_0"] = @100UL;
	context[@"NSPropertyListBinaryFormat_v1_0"] = @200UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSPropertyList_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
