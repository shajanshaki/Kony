#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([NSPersonNameComponentsFormatter class], @protocol(NSPersonNameComponentsFormatterInstanceExports));
	class_addProtocol([NSPersonNameComponentsFormatter class], @protocol(NSPersonNameComponentsFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSPersonNameComponentsFormatterStyleDefault"] = @0L;
	context[@"NSPersonNameComponentsFormatterStyleShort"] = @1L;
	context[@"NSPersonNameComponentsFormatterStyleMedium"] = @2L;
	context[@"NSPersonNameComponentsFormatterStyleLong"] = @3L;
	context[@"NSPersonNameComponentsFormatterStyleAbbreviated"] = @4L;

	context[@"NSPersonNameComponentsFormatterPhonetic"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSPersonNameComponentMiddleName;
	if (p != NULL) context[@"NSPersonNameComponentMiddleName"] = NSPersonNameComponentMiddleName;
	p = (void*) &NSPersonNameComponentFamilyName;
	if (p != NULL) context[@"NSPersonNameComponentFamilyName"] = NSPersonNameComponentFamilyName;
	p = (void*) &NSPersonNameComponentDelimiter;
	if (p != NULL) context[@"NSPersonNameComponentDelimiter"] = NSPersonNameComponentDelimiter;
	p = (void*) &NSPersonNameComponentKey;
	if (p != NULL) context[@"NSPersonNameComponentKey"] = NSPersonNameComponentKey;
	p = (void*) &NSPersonNameComponentGivenName;
	if (p != NULL) context[@"NSPersonNameComponentGivenName"] = NSPersonNameComponentGivenName;
	p = (void*) &NSPersonNameComponentPrefix;
	if (p != NULL) context[@"NSPersonNameComponentPrefix"] = NSPersonNameComponentPrefix;
	p = (void*) &NSPersonNameComponentSuffix;
	if (p != NULL) context[@"NSPersonNameComponentSuffix"] = NSPersonNameComponentSuffix;
	p = (void*) &NSPersonNameComponentNickname;
	if (p != NULL) context[@"NSPersonNameComponentNickname"] = NSPersonNameComponentNickname;
}
void load_Foundation_NSPersonNameComponentsFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
