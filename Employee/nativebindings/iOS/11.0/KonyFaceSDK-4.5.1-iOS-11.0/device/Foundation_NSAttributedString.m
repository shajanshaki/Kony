#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSAttributedString (NSAttributedStringNSExtendedAttributedStringCategoryExports)
-(id) jsinitWithAttributedString: (NSAttributedString *) attrStr 
{
	id resultVal__;
	resultVal__ = [[self initWithAttributedString: attrStr ] autorelease];
	return resultVal__;
}
-(void) jsenumerateAttributesInRange: (NSRange) enumerationRange options: (NSAttributedStringEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(NSDictionary * , NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSDictionary * arg0, NSRange arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithRange: arg1 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateAttributesInRange: enumerationRange options: opts usingBlock: block_ ];
}
-(id) jsinitWithString: (NSString *) str attributes: (NSDictionary *) attrs 
{
	id resultVal__;
	resultVal__ = [[self initWithString: str attributes: attrs ] autorelease];
	return resultVal__;
}
-(void) jsenumerateAttribute: (NSAttributedStringKey) attrName inRange: (NSRange) enumerationRange options: (NSAttributedStringEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(id , NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(id arg0, NSRange arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithRange: arg1 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateAttribute: attrName inRange: enumerationRange options: opts usingBlock: block_ ];
}
-(id) jsinitWithString: (NSString *) str 
{
	id resultVal__;
	resultVal__ = [[self initWithString: str ] autorelease];
	return resultVal__;
}
@end
@implementation NSAttributedString (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSExtendedAttributedStringCategoryInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSExtendedAttributedStringCategoryClassExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSExtendedMutableAttributedStringCategoryInstanceExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSExtendedMutableAttributedStringCategoryClassExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringInstanceExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringClassExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSAttributedStringEnumerationReverse"] = @2U;
	context[@"NSAttributedStringEnumerationLongestEffectiveRangeNotRequired"] = @1048576U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSAttributedString_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
