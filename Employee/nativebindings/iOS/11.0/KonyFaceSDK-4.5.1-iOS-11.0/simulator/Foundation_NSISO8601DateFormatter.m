#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSISO8601DateFormatter (Exports)
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
@end
static void addProtocols()
{
	class_addProtocol([NSISO8601DateFormatter class], @protocol(NSISO8601DateFormatterInstanceExports));
	class_addProtocol([NSISO8601DateFormatter class], @protocol(NSISO8601DateFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSISO8601DateFormatWithYear"] = @1UL;
	context[@"NSISO8601DateFormatWithMonth"] = @2UL;
	context[@"NSISO8601DateFormatWithWeekOfYear"] = @4UL;
	context[@"NSISO8601DateFormatWithDay"] = @16UL;
	context[@"NSISO8601DateFormatWithTime"] = @32UL;
	context[@"NSISO8601DateFormatWithTimeZone"] = @64UL;
	context[@"NSISO8601DateFormatWithSpaceBetweenDateAndTime"] = @128UL;
	context[@"NSISO8601DateFormatWithDashSeparatorInDate"] = @256UL;
	context[@"NSISO8601DateFormatWithColonSeparatorInTime"] = @512UL;
	context[@"NSISO8601DateFormatWithColonSeparatorInTimeZone"] = @1024UL;
	context[@"NSISO8601DateFormatWithFractionalSeconds"] = @2048UL;
	context[@"NSISO8601DateFormatWithFullDate"] = @275UL;
	context[@"NSISO8601DateFormatWithFullTime"] = @1632UL;
	context[@"NSISO8601DateFormatWithInternetDateTime"] = @1907UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSISO8601DateFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
