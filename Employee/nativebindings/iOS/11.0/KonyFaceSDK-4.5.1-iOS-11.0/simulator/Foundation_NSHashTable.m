#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSHashTable (Exports)
-(id) jsinitWithOptions: (NSPointerFunctionsOptions) options capacity: (NSUInteger) initialCapacity 
{
	id resultVal__;
	resultVal__ = [[self initWithOptions: options capacity: initialCapacity ] autorelease];
	return resultVal__;
}
-(id) jsinitWithPointerFunctions: (NSPointerFunctions *) functions capacity: (NSUInteger) initialCapacity 
{
	id resultVal__;
	resultVal__ = [[self initWithPointerFunctions: functions capacity: initialCapacity ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSHashTable class], @protocol(NSHashTableInstanceExports));
	class_addProtocol([NSHashTable class], @protocol(NSHashTableClassExports));
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
	p = (void*) &NSHashTableStrongMemory;
	if (p != NULL) context[@"NSHashTableStrongMemory"] = @(NSHashTableStrongMemory);
	p = (void*) &NSHashTableCopyIn;
	if (p != NULL) context[@"NSHashTableCopyIn"] = @(NSHashTableCopyIn);
	p = (void*) &NSHashTableObjectPointerPersonality;
	if (p != NULL) context[@"NSHashTableObjectPointerPersonality"] = @(NSHashTableObjectPointerPersonality);
	p = (void*) &NSHashTableWeakMemory;
	if (p != NULL) context[@"NSHashTableWeakMemory"] = @(NSHashTableWeakMemory);
}
void load_Foundation_NSHashTable_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
