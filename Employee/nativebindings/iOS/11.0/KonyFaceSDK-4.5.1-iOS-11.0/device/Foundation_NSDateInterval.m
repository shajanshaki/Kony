#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSDateInterval (Exports)
-(id) jsinitWithStartDate: (NSDate *) startDate endDate: (NSDate *) endDate 
{
	id resultVal__;
	resultVal__ = [[self initWithStartDate: startDate endDate: endDate ] autorelease];
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithStartDate: (NSDate *) startDate duration: (NSTimeInterval) duration 
{
	id resultVal__;
	resultVal__ = [[self initWithStartDate: startDate duration: duration ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSDateInterval class], @protocol(NSDateIntervalInstanceExports));
	class_addProtocol([NSDateInterval class], @protocol(NSDateIntervalClassExports));
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
void load_Foundation_NSDateInterval_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
