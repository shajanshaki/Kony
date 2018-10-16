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
}
static void registerCFunctions(JSContext* context)
{
	context[@"CFStringTokenizerCopyBestStringLanguage"] = ^id(id arg0, CFRange arg1) {
		return CFStringTokenizerCopyBestStringLanguage(arg0, arg1);
	};
	context[@"CFStringTokenizerAdvanceToNextToken"] = ^CFStringTokenizerTokenType(id arg0) {
		return CFStringTokenizerAdvanceToNextToken(arg0);
	};
	context[@"CFStringTokenizerCopyCurrentTokenAttribute"] = ^id(id arg0, CFOptionFlags arg1) {
		return CFStringTokenizerCopyCurrentTokenAttribute(arg0, arg1);
	};
	context[@"CFStringTokenizerGetCurrentTokenRange"] = ^CFRange(id arg0) {
		return CFStringTokenizerGetCurrentTokenRange(arg0);
	};
	context[@"CFStringTokenizerCreate"] = ^id(id arg0, id arg1, CFRange arg2, CFOptionFlags arg3, id arg4) {
		return CFStringTokenizerCreate(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CFStringTokenizerGetTypeID"] = ^CFTypeID() {
		return CFStringTokenizerGetTypeID();
	};
	context[@"CFStringTokenizerGoToTokenAtIndex"] = ^CFStringTokenizerTokenType(id arg0, CFIndex arg1) {
		return CFStringTokenizerGoToTokenAtIndex(arg0, arg1);
	};
	context[@"CFStringTokenizerSetString"] = ^void(id arg0, id arg1, CFRange arg2) {
		CFStringTokenizerSetString(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFStringTokenizerUnitWord"] = @0UL;
	context[@"kCFStringTokenizerUnitSentence"] = @1UL;
	context[@"kCFStringTokenizerUnitParagraph"] = @2UL;
	context[@"kCFStringTokenizerUnitLineBreak"] = @3UL;
	context[@"kCFStringTokenizerUnitWordBoundary"] = @4UL;
	context[@"kCFStringTokenizerAttributeLatinTranscription"] = @65536UL;
	context[@"kCFStringTokenizerAttributeLanguage"] = @131072UL;

	context[@"kCFStringTokenizerTokenNone"] = @0UL;
	context[@"kCFStringTokenizerTokenNormal"] = @1UL;
	context[@"kCFStringTokenizerTokenHasSubTokensMask"] = @2UL;
	context[@"kCFStringTokenizerTokenHasDerivedSubTokensMask"] = @4UL;
	context[@"kCFStringTokenizerTokenHasHasNumbersMask"] = @8UL;
	context[@"kCFStringTokenizerTokenHasNonLettersMask"] = @16UL;
	context[@"kCFStringTokenizerTokenIsCJWordMask"] = @32UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFStringTokenizer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
