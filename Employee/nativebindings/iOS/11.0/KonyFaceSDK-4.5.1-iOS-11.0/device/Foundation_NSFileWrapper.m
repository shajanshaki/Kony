#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSFileWrapper (Exports)
-(id) jsinitSymbolicLinkWithDestinationURL: (NSURL *) url 
{
	id resultVal__;
	resultVal__ = [[self initSymbolicLinkWithDestinationURL: url ] autorelease];
	return resultVal__;
}
-(id) jsinitDirectoryWithFileWrappers: (NSDictionary *) childrenByPreferredName 
{
	id resultVal__;
	resultVal__ = [[self initDirectoryWithFileWrappers: childrenByPreferredName ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(BOOL) jswriteToURL: (NSURL *) url options: (NSFileWrapperWritingOptions) options originalContentsURL: (NSURL *) originalContentsURL error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self writeToURL: url options: options originalContentsURL: originalContentsURL error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsreadFromURL: (NSURL *) url options: (NSFileWrapperReadingOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self readFromURL: url options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinitWithSerializedRepresentation: (NSData *) serializeRepresentation 
{
	id resultVal__;
	resultVal__ = [[self initWithSerializedRepresentation: serializeRepresentation ] autorelease];
	return resultVal__;
}
-(id) jsinitWithURL: (NSURL *) url options: (NSFileWrapperReadingOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithURL: url options: options error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinitRegularFileWithContents: (NSData *) contents 
{
	id resultVal__;
	resultVal__ = [[self initRegularFileWithContents: contents ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSFileWrapper class], @protocol(NSFileWrapperInstanceExports));
	class_addProtocol([NSFileWrapper class], @protocol(NSFileWrapperClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSFileWrapperReadingImmediate"] = @1U;
	context[@"NSFileWrapperReadingWithoutMapping"] = @2U;

	context[@"NSFileWrapperWritingAtomic"] = @1U;
	context[@"NSFileWrapperWritingWithNameUpdating"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSFileWrapper_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
