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
@implementation NSRegularExpression (NSRegularExpressionNSMatchingCategoryExports)
-(void) jsenumerateMatchesInString: (NSString *) string options: (NSMatchingOptions) options range: (NSRange) range usingBlock: (JSValue *) block 
{
	void (^ block_)(NSTextCheckingResult * , NSMatchingFlags, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSTextCheckingResult * arg0, NSMatchingFlags arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateMatchesInString: string options: options range: range usingBlock: block_ ];
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
	context[@"NSRegularExpressionCaseInsensitive"] = @1U;
	context[@"NSRegularExpressionAllowCommentsAndWhitespace"] = @2U;
	context[@"NSRegularExpressionIgnoreMetacharacters"] = @4U;
	context[@"NSRegularExpressionDotMatchesLineSeparators"] = @8U;
	context[@"NSRegularExpressionAnchorsMatchLines"] = @16U;
	context[@"NSRegularExpressionUseUnixLineSeparators"] = @32U;
	context[@"NSRegularExpressionUseUnicodeWordBoundaries"] = @64U;

	context[@"NSMatchingReportProgress"] = @1U;
	context[@"NSMatchingReportCompletion"] = @2U;
	context[@"NSMatchingAnchored"] = @4U;
	context[@"NSMatchingWithTransparentBounds"] = @8U;
	context[@"NSMatchingWithoutAnchoringBounds"] = @16U;

	context[@"NSMatchingProgress"] = @1U;
	context[@"NSMatchingCompleted"] = @2U;
	context[@"NSMatchingHitEnd"] = @4U;
	context[@"NSMatchingRequiredEnd"] = @8U;
	context[@"NSMatchingInternalError"] = @16U;

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
