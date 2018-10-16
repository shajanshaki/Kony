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
-(void) jsenumerateDatesStartingAfterDate: (NSDate *) start matchingComponents: (NSDateComponents *) comps options: (NSCalendarOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(NSDate * , BOOL, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSDate * arg0, BOOL arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateDatesStartingAfterDate: start matchingComponents: comps options: opts usingBlock: block_ ];
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
	context[@"NSCalendarUnitEra"] = @2U;
	context[@"NSCalendarUnitYear"] = @4U;
	context[@"NSCalendarUnitMonth"] = @8U;
	context[@"NSCalendarUnitDay"] = @16U;
	context[@"NSCalendarUnitHour"] = @32U;
	context[@"NSCalendarUnitMinute"] = @64U;
	context[@"NSCalendarUnitSecond"] = @128U;
	context[@"NSCalendarUnitWeekday"] = @512U;
	context[@"NSCalendarUnitWeekdayOrdinal"] = @1024U;
	context[@"NSCalendarUnitQuarter"] = @2048U;
	context[@"NSCalendarUnitWeekOfMonth"] = @4096U;
	context[@"NSCalendarUnitWeekOfYear"] = @8192U;
	context[@"NSCalendarUnitYearForWeekOfYear"] = @16384U;
	context[@"NSCalendarUnitNanosecond"] = @32768U;
	context[@"NSCalendarUnitCalendar"] = @1048576U;
	context[@"NSCalendarUnitTimeZone"] = @2097152U;
	context[@"NSEraCalendarUnit"] = @2U;
	context[@"NSYearCalendarUnit"] = @4U;
	context[@"NSMonthCalendarUnit"] = @8U;
	context[@"NSDayCalendarUnit"] = @16U;
	context[@"NSHourCalendarUnit"] = @32U;
	context[@"NSMinuteCalendarUnit"] = @64U;
	context[@"NSSecondCalendarUnit"] = @128U;
	context[@"NSWeekCalendarUnit"] = @256U;
	context[@"NSWeekdayCalendarUnit"] = @512U;
	context[@"NSWeekdayOrdinalCalendarUnit"] = @1024U;
	context[@"NSQuarterCalendarUnit"] = @2048U;
	context[@"NSWeekOfMonthCalendarUnit"] = @4096U;
	context[@"NSWeekOfYearCalendarUnit"] = @8192U;
	context[@"NSYearForWeekOfYearCalendarUnit"] = @16384U;
	context[@"NSCalendarCalendarUnit"] = @1048576U;
	context[@"NSTimeZoneCalendarUnit"] = @2097152U;

	context[@"NSCalendarWrapComponents"] = @1U;
	context[@"NSCalendarMatchStrictly"] = @2U;
	context[@"NSCalendarSearchBackwards"] = @4U;
	context[@"NSCalendarMatchPreviousTimePreservingSmallerUnits"] = @256U;
	context[@"NSCalendarMatchNextTimePreservingSmallerUnits"] = @512U;
	context[@"NSCalendarMatchNextTime"] = @1024U;
	context[@"NSCalendarMatchFirst"] = @4096U;
	context[@"NSCalendarMatchLast"] = @8192U;

	context[@"NSWrapCalendarComponents"] = @1;

	context[@"NSDateComponentUndefined"] = @2147483647;
	context[@"NSUndefinedDateComponent"] = @2147483647;

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
