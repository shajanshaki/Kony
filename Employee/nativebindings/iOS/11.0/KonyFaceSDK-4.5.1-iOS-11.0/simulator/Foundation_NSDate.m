#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSDate (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithTimeIntervalSinceReferenceDate: (NSTimeInterval) ti 
{
	id resultVal__;
	resultVal__ = [[self initWithTimeIntervalSinceReferenceDate: ti ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSDate (NSDateNSDateCreationCategoryExports)
-(id) jsinitWithTimeInterval: (NSTimeInterval) secsToBeAdded sinceDate: (NSDate *) date 
{
	id resultVal__;
	resultVal__ = [[self initWithTimeInterval: secsToBeAdded sinceDate: date ] autorelease];
	return resultVal__;
}
-(id) jsinitWithTimeIntervalSince1970: (NSTimeInterval) secs 
{
	id resultVal__;
	resultVal__ = [[self initWithTimeIntervalSince1970: secs ] autorelease];
	return resultVal__;
}
-(id) jsinitWithTimeIntervalSinceNow: (NSTimeInterval) secs 
{
	id resultVal__;
	resultVal__ = [[self initWithTimeIntervalSinceNow: secs ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSDate class], @protocol(NSDateInstanceExports));
	class_addProtocol([NSDate class], @protocol(NSDateClassExports));
	class_addProtocol([NSDate class], @protocol(NSDateNSExtendedDateCategoryInstanceExports));
	class_addProtocol([NSDate class], @protocol(NSDateNSExtendedDateCategoryClassExports));
	class_addProtocol([NSDate class], @protocol(NSDateNSDateCreationCategoryInstanceExports));
	class_addProtocol([NSDate class], @protocol(NSDateNSDateCreationCategoryClassExports));
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
	p = (void*) &NSSystemClockDidChangeNotification;
	if (p != NULL) context[@"NSSystemClockDidChangeNotification"] = NSSystemClockDidChangeNotification;
}
void load_Foundation_NSDate_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
