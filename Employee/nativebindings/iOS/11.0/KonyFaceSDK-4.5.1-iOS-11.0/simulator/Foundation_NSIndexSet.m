#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSIndexSet (Exports)
-(id) jsinitWithIndexSet: (NSIndexSet *) indexSet 
{
	id resultVal__;
	resultVal__ = [[self initWithIndexSet: indexSet ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithIndex: (NSUInteger) value 
{
	id resultVal__;
	resultVal__ = [[self initWithIndex: value ] autorelease];
	return resultVal__;
}
-(id) jsinitWithIndexesInRange: (NSRange) range 
{
	id resultVal__;
	resultVal__ = [[self initWithIndexesInRange: range ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSIndexSet class], @protocol(NSIndexSetInstanceExports));
	class_addProtocol([NSIndexSet class], @protocol(NSIndexSetClassExports));
	class_addProtocol([NSMutableIndexSet class], @protocol(NSMutableIndexSetInstanceExports));
	class_addProtocol([NSMutableIndexSet class], @protocol(NSMutableIndexSetClassExports));
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
void load_Foundation_NSIndexSet_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
