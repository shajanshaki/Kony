#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSDateComponents (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSCalendar (Exports)
-(id) jsinitWithCalendarIdentifier: (NSCalendarIdentifier) ident 
{
	id resultVal__;
	resultVal__ = [[self initWithCalendarIdentifier: ident ] autorelease];
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
	class_addProtocol([NSDateComponents class], @protocol(NSDateComponentsInstanceExports));
	class_addProtocol([NSDateComponents class], @protocol(NSDateComponentsClassExports));
	class_addProtocol([NSCalendar class], @protocol(NSCalendarInstanceExports));
	class_addProtocol([NSCalendar class], @protocol(NSCalendarClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSCalendarUnitEra"] = @2UL;
	context[@"NSCalendarUnitYear"] = @4UL;
	context[@"NSCalendarUnitMonth"] = @8UL;
	context[@"NSCalendarUnitDay"] = @16UL;
	context[@"NSCalendarUnitHour"] = @32UL;
	context[@"NSCalendarUnitMinute"] = @64UL;
	context[@"NSCalendarUnitSecond"] = @128UL;
	context[@"NSCalendarUnitWeekday"] = @512UL;
	context[@"NSCalendarUnitWeekdayOrdinal"] = @1024UL;
	context[@"NSCalendarUnitQuarter"] = @2048UL;
	context[@"NSCalendarUnitWeekOfMonth"] = @4096UL;
	context[@"NSCalendarUnitWeekOfYear"] = @8192UL;
	context[@"NSCalendarUnitYearForWeekOfYear"] = @16384UL;
	context[@"NSCalendarUnitNanosecond"] = @32768UL;
	context[@"NSCalendarUnitCalendar"] = @1048576UL;
	context[@"NSCalendarUnitTimeZone"] = @2097152UL;
	context[@"NSEraCalendarUnit"] = @2UL;
	context[@"NSYearCalendarUnit"] = @4UL;
	context[@"NSMonthCalendarUnit"] = @8UL;
	context[@"NSDayCalendarUnit"] = @16UL;
	context[@"NSHourCalendarUnit"] = @32UL;
	context[@"NSMinuteCalendarUnit"] = @64UL;
	context[@"NSSecondCalendarUnit"] = @128UL;
	context[@"NSWeekCalendarUnit"] = @256UL;
	context[@"NSWeekdayCalendarUnit"] = @512UL;
	context[@"NSWeekdayOrdinalCalendarUnit"] = @1024UL;
	context[@"NSQuarterCalendarUnit"] = @2048UL;
	context[@"NSWeekOfMonthCalendarUnit"] = @4096UL;
	context[@"NSWeekOfYearCalendarUnit"] = @8192UL;
	context[@"NSYearForWeekOfYearCalendarUnit"] = @16384UL;
	context[@"NSCalendarCalendarUnit"] = @1048576UL;
	context[@"NSTimeZoneCalendarUnit"] = @2097152UL;

	context[@"NSCalendarWrapComponents"] = @1UL;
	context[@"NSCalendarMatchStrictly"] = @2UL;
	context[@"NSCalendarSearchBackwards"] = @4UL;
	context[@"NSCalendarMatchPreviousTimePreservingSmallerUnits"] = @256UL;
	context[@"NSCalendarMatchNextTimePreservingSmallerUnits"] = @512UL;
	context[@"NSCalendarMatchNextTime"] = @1024UL;
	context[@"NSCalendarMatchFirst"] = @4096UL;
	context[@"NSCalendarMatchLast"] = @8192UL;

	context[@"NSWrapCalendarComponents"] = @1;

	context[@"NSDateComponentUndefined"] = @9223372036854775807L;
	context[@"NSUndefinedDateComponent"] = @9223372036854775807L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSCalendarIdentifierIslamic;
	if (p != NULL) context[@"NSCalendarIdentifierIslamic"] = NSCalendarIdentifierIslamic;
	p = (void*) &NSCalendarIdentifierPersian;
	if (p != NULL) context[@"NSCalendarIdentifierPersian"] = NSCalendarIdentifierPersian;
	p = (void*) &NSCalendarIdentifierEthiopicAmeteMihret;
	if (p != NULL) context[@"NSCalendarIdentifierEthiopicAmeteMihret"] = NSCalendarIdentifierEthiopicAmeteMihret;
	p = (void*) &NSCalendarIdentifierIndian;
	if (p != NULL) context[@"NSCalendarIdentifierIndian"] = NSCalendarIdentifierIndian;
	p = (void*) &NSCalendarIdentifierISO8601;
	if (p != NULL) context[@"NSCalendarIdentifierISO8601"] = NSCalendarIdentifierISO8601;
	p = (void*) &NSCalendarIdentifierGregorian;
	if (p != NULL) context[@"NSCalendarIdentifierGregorian"] = NSCalendarIdentifierGregorian;
	p = (void*) &NSCalendarDayChangedNotification;
	if (p != NULL) context[@"NSCalendarDayChangedNotification"] = NSCalendarDayChangedNotification;
	p = (void*) &NSCalendarIdentifierIslamicCivil;
	if (p != NULL) context[@"NSCalendarIdentifierIslamicCivil"] = NSCalendarIdentifierIslamicCivil;
	p = (void*) &NSCalendarIdentifierChinese;
	if (p != NULL) context[@"NSCalendarIdentifierChinese"] = NSCalendarIdentifierChinese;
	p = (void*) &NSCalendarIdentifierCoptic;
	if (p != NULL) context[@"NSCalendarIdentifierCoptic"] = NSCalendarIdentifierCoptic;
	p = (void*) &NSCalendarIdentifierEthiopicAmeteAlem;
	if (p != NULL) context[@"NSCalendarIdentifierEthiopicAmeteAlem"] = NSCalendarIdentifierEthiopicAmeteAlem;
	p = (void*) &NSCalendarIdentifierRepublicOfChina;
	if (p != NULL) context[@"NSCalendarIdentifierRepublicOfChina"] = NSCalendarIdentifierRepublicOfChina;
	p = (void*) &NSCalendarIdentifierHebrew;
	if (p != NULL) context[@"NSCalendarIdentifierHebrew"] = NSCalendarIdentifierHebrew;
	p = (void*) &NSCalendarIdentifierBuddhist;
	if (p != NULL) context[@"NSCalendarIdentifierBuddhist"] = NSCalendarIdentifierBuddhist;
	p = (void*) &NSCalendarIdentifierJapanese;
	if (p != NULL) context[@"NSCalendarIdentifierJapanese"] = NSCalendarIdentifierJapanese;
	p = (void*) &NSCalendarIdentifierIslamicUmmAlQura;
	if (p != NULL) context[@"NSCalendarIdentifierIslamicUmmAlQura"] = NSCalendarIdentifierIslamicUmmAlQura;
	p = (void*) &NSCalendarIdentifierIslamicTabular;
	if (p != NULL) context[@"NSCalendarIdentifierIslamicTabular"] = NSCalendarIdentifierIslamicTabular;
}
void load_Foundation_NSCalendar_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
