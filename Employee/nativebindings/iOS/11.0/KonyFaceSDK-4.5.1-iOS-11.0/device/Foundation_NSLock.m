#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSConditionLock (Exports)
-(id) jsinitWithCondition: (NSInteger) condition 
{
	id resultVal__;
	resultVal__ = [[self initWithCondition: condition ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSCondition class], @protocol(NSConditionInstanceExports));
	class_addProtocol([NSCondition class], @protocol(NSConditionClassExports));
	class_addProtocol([NSRecursiveLock class], @protocol(NSRecursiveLockInstanceExports));
	class_addProtocol([NSRecursiveLock class], @protocol(NSRecursiveLockClassExports));
	class_addProtocol([NSLock class], @protocol(NSLockInstanceExports));
	class_addProtocol([NSLock class], @protocol(NSLockClassExports));
	class_addProtocol([NSConditionLock class], @protocol(NSConditionLockInstanceExports));
	class_addProtocol([NSConditionLock class], @protocol(NSConditionLockClassExports));
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
void Foundation_NSLockProtocols()
{
	(void)@protocol(NSLocking);
}
void load_Foundation_NSLock_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
