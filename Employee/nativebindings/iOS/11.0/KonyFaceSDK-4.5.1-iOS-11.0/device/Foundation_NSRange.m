#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([NSValue class], @protocol(NSValueNSValueRangeExtensionsCategoryInstanceExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSValueRangeExtensionsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
	context[@"NSStringFromRange"] = ^NSString *(NSRange arg0) {
		return NSStringFromRange(arg0);
	};
	context[@"NSUnionRange"] = ^NSRange(NSRange arg0, NSRange arg1) {
		return NSUnionRange(arg0, arg1);
	};
	context[@"NSMakeRange"] = ^NSRange(NSUInteger arg0, NSUInteger arg1) {
		return NSMakeRange(arg0, arg1);
	};
	context[@"NSEqualRanges"] = ^BOOL(NSRange arg0, NSRange arg1) {
		return NSEqualRanges(arg0, arg1);
	};
	context[@"NSRangeFromString"] = ^NSRange(NSString * arg0) {
		return NSRangeFromString(arg0);
	};
	context[@"NSLocationInRange"] = ^BOOL(NSUInteger arg0, NSRange arg1) {
		return NSLocationInRange(arg0, arg1);
	};
	context[@"NSIntersectionRange"] = ^NSRange(NSRange arg0, NSRange arg1) {
		return NSIntersectionRange(arg0, arg1);
	};
	context[@"NSMaxRange"] = ^NSUInteger(NSRange arg0) {
		return NSMaxRange(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSRange_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
