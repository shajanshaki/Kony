#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSFileVersion (Exports)
-(NSURL *) jsreplaceItemAtURL: (NSURL *) url options: (NSFileVersionReplacingOptions) options error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSURL * resultVal__;
	resultVal__ = [self replaceItemAtURL: url options: options error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jsremoveAndReturnError: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self removeAndReturnError: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
+(void) jsgetNonlocalVersionsOfItemAtURL: (NSURL *) url completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSArray * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSArray * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getNonlocalVersionsOfItemAtURL: url completionHandler: completionHandler_ ];
}
+(BOOL) jsremoveOtherVersionsOfItemAtURL: (NSURL *) url error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self removeOtherVersionsOfItemAtURL: url error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSFileVersion class], @protocol(NSFileVersionInstanceExports));
	class_addProtocol([NSFileVersion class], @protocol(NSFileVersionClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSFileVersionAddingByMoving"] = @1UL;

	context[@"NSFileVersionReplacingByMoving"] = @1UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSFileVersion_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
