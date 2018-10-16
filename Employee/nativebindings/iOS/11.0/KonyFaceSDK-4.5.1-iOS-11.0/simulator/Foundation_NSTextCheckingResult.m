#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSTextCheckingResult (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSTextCheckingResult class], @protocol(NSTextCheckingResultNSTextCheckingResultCreationCategoryInstanceExports));
	class_addProtocol([NSTextCheckingResult class], @protocol(NSTextCheckingResultNSTextCheckingResultCreationCategoryClassExports));
	class_addProtocol([NSTextCheckingResult class], @protocol(NSTextCheckingResultNSTextCheckingResultOptionalCategoryInstanceExports));
	class_addProtocol([NSTextCheckingResult class], @protocol(NSTextCheckingResultNSTextCheckingResultOptionalCategoryClassExports));
	class_addProtocol([NSTextCheckingResult class], @protocol(NSTextCheckingResultInstanceExports));
	class_addProtocol([NSTextCheckingResult class], @protocol(NSTextCheckingResultClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSTextCheckingTypeOrthography"] = @1ULL;
	context[@"NSTextCheckingTypeSpelling"] = @2ULL;
	context[@"NSTextCheckingTypeGrammar"] = @4ULL;
	context[@"NSTextCheckingTypeDate"] = @8ULL;
	context[@"NSTextCheckingTypeAddress"] = @16ULL;
	context[@"NSTextCheckingTypeLink"] = @32ULL;
	context[@"NSTextCheckingTypeQuote"] = @64ULL;
	context[@"NSTextCheckingTypeDash"] = @128ULL;
	context[@"NSTextCheckingTypeReplacement"] = @256ULL;
	context[@"NSTextCheckingTypeCorrection"] = @512ULL;
	context[@"NSTextCheckingTypeRegularExpression"] = @1024ULL;
	context[@"NSTextCheckingTypePhoneNumber"] = @2048ULL;
	context[@"NSTextCheckingTypeTransitInformation"] = @4096ULL;

	context[@"NSTextCheckingAllSystemTypes"] = @4294967295ULL;
	context[@"NSTextCheckingAllCustomTypes"] = @-4294967296ULL;
	context[@"NSTextCheckingAllTypes"] = @-1ULL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSTextCheckingStateKey;
	if (p != NULL) context[@"NSTextCheckingStateKey"] = NSTextCheckingStateKey;
	p = (void*) &NSTextCheckingStreetKey;
	if (p != NULL) context[@"NSTextCheckingStreetKey"] = NSTextCheckingStreetKey;
	p = (void*) &NSTextCheckingFlightKey;
	if (p != NULL) context[@"NSTextCheckingFlightKey"] = NSTextCheckingFlightKey;
	p = (void*) &NSTextCheckingCityKey;
	if (p != NULL) context[@"NSTextCheckingCityKey"] = NSTextCheckingCityKey;
	p = (void*) &NSTextCheckingCountryKey;
	if (p != NULL) context[@"NSTextCheckingCountryKey"] = NSTextCheckingCountryKey;
	p = (void*) &NSTextCheckingAirlineKey;
	if (p != NULL) context[@"NSTextCheckingAirlineKey"] = NSTextCheckingAirlineKey;
	p = (void*) &NSTextCheckingZIPKey;
	if (p != NULL) context[@"NSTextCheckingZIPKey"] = NSTextCheckingZIPKey;
	p = (void*) &NSTextCheckingJobTitleKey;
	if (p != NULL) context[@"NSTextCheckingJobTitleKey"] = NSTextCheckingJobTitleKey;
	p = (void*) &NSTextCheckingOrganizationKey;
	if (p != NULL) context[@"NSTextCheckingOrganizationKey"] = NSTextCheckingOrganizationKey;
	p = (void*) &NSTextCheckingNameKey;
	if (p != NULL) context[@"NSTextCheckingNameKey"] = NSTextCheckingNameKey;
	p = (void*) &NSTextCheckingPhoneKey;
	if (p != NULL) context[@"NSTextCheckingPhoneKey"] = NSTextCheckingPhoneKey;
}
void load_Foundation_NSTextCheckingResult_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
