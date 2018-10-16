#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSDataDetector (Exports)
-(id) jsinitWithTypes: (NSTextCheckingTypes) checkingTypes error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithTypes: checkingTypes error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(NSDataDetector *) jsdataDetectorWithTypes: (NSTextCheckingTypes) checkingTypes error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSDataDetector * resultVal__;
	resultVal__ = [self dataDetectorWithTypes: checkingTypes error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
@implementation NSRegularExpression (Exports)
-(id) jsinitWithPattern: (NSString *) pattern options: (NSRegularExpressionOptions) options error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithPattern: pattern options: options error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
+(NSRegularExpression *) jsregularExpressionWithPattern: (NSString *) pattern options: (NSRegularExpressionOptions) options error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSRegularExpression * resultVal__;
	resultVal__ = [self regularExpressionWithPattern: pattern options: options error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSRegularExpression class], @protocol(NSRegularExpressionNSReplacementCategoryInstanceExports));
	class_addProtocol([NSRegularExpression class], @protocol(NSRegularExpressionNSReplacementCategoryClassExports));
	class_addProtocol([NSDataDetector class], @protocol(NSDataDetectorInstanceExports));
	class_addProtocol([NSDataDetector class], @protocol(NSDataDetectorClassExports));
	class_addProtocol([NSRegularExpression class], @protocol(NSRegularExpressionInstanceExports));
	class_addProtocol([NSRegularExpression class], @protocol(NSRegularExpressionClassExports));
	class_addProtocol([NSRegularExpression class], @protocol(NSRegularExpressionNSMatchingCategoryInstanceExports));
	class_addProtocol([NSRegularExpression class], @protocol(NSRegularExpressionNSMatchingCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSRegularExpressionCaseInsensitive"] = @1UL;
	context[@"NSRegularExpressionAllowCommentsAndWhitespace"] = @2UL;
	context[@"NSRegularExpressionIgnoreMetacharacters"] = @4UL;
	context[@"NSRegularExpressionDotMatchesLineSeparators"] = @8UL;
	context[@"NSRegularExpressionAnchorsMatchLines"] = @16UL;
	context[@"NSRegularExpressionUseUnixLineSeparators"] = @32UL;
	context[@"NSRegularExpressionUseUnicodeWordBoundaries"] = @64UL;

	context[@"NSMatchingReportProgress"] = @1UL;
	context[@"NSMatchingReportCompletion"] = @2UL;
	context[@"NSMatchingAnchored"] = @4UL;
	context[@"NSMatchingWithTransparentBounds"] = @8UL;
	context[@"NSMatchingWithoutAnchoringBounds"] = @16UL;

	context[@"NSMatchingProgress"] = @1UL;
	context[@"NSMatchingCompleted"] = @2UL;
	context[@"NSMatchingHitEnd"] = @4UL;
	context[@"NSMatchingRequiredEnd"] = @8UL;
	context[@"NSMatchingInternalError"] = @16UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSRegularExpression_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
