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
	context[@"CFStringCreateMutableCopy"] = ^id(id arg0, CFIndex arg1, id arg2) {
		return CFStringCreateMutableCopy(arg0, arg1, arg2);
	};
	context[@"CFStringGetMaximumSizeOfFileSystemRepresentation"] = ^CFIndex(id arg0) {
		return CFStringGetMaximumSizeOfFileSystemRepresentation(arg0);
	};
	context[@"CFStringIsSurrogateLowCharacter"] = ^Boolean(UniChar arg0) {
		return CFStringIsSurrogateLowCharacter(arg0);
	};
	context[@"CFStringTrim"] = ^void(id arg0, id arg1) {
		CFStringTrim(arg0, arg1);
	};
	context[@"CFStringGetMaximumSizeForEncoding"] = ^CFIndex(CFIndex arg0, CFStringEncoding arg1) {
		return CFStringGetMaximumSizeForEncoding(arg0, arg1);
	};
	context[@"CFStringAppend"] = ^void(id arg0, id arg1) {
		CFStringAppend(arg0, arg1);
	};
	context[@"CFStringConvertIANACharSetNameToEncoding"] = ^CFStringEncoding(id arg0) {
		return CFStringConvertIANACharSetNameToEncoding(arg0);
	};
	context[@"CFStringCreateWithSubstring"] = ^id(id arg0, id arg1, CFRange arg2) {
		return CFStringCreateWithSubstring(arg0, arg1, arg2);
	};
	context[@"CFStringPad"] = ^void(id arg0, id arg1, CFIndex arg2, CFIndex arg3) {
		CFStringPad(arg0, arg1, arg2, arg3);
	};
	context[@"CFStringConvertEncodingToWindowsCodepage"] = ^UInt32(CFStringEncoding arg0) {
		return CFStringConvertEncodingToWindowsCodepage(arg0);
	};
	context[@"CFStringIsEncodingAvailable"] = ^Boolean(CFStringEncoding arg0) {
		return CFStringIsEncodingAvailable(arg0);
	};
	context[@"CFStringReplace"] = ^void(id arg0, CFRange arg1, id arg2) {
		CFStringReplace(arg0, arg1, arg2);
	};
	context[@"CFStringHasPrefix"] = ^Boolean(id arg0, id arg1) {
		return CFStringHasPrefix(arg0, arg1);
	};
	context[@"CFStringGetMostCompatibleMacStringEncoding"] = ^CFStringEncoding(CFStringEncoding arg0) {
		return CFStringGetMostCompatibleMacStringEncoding(arg0);
	};
	context[@"CFStringInsert"] = ^void(id arg0, CFIndex arg1, id arg2) {
		CFStringInsert(arg0, arg1, arg2);
	};
	context[@"CFStringGetLength"] = ^CFIndex(id arg0) {
		return CFStringGetLength(arg0);
	};
	context[@"CFStringConvertWindowsCodepageToEncoding"] = ^CFStringEncoding(UInt32 arg0) {
		return CFStringConvertWindowsCodepageToEncoding(arg0);
	};
	context[@"CFStringCreateByCombiningStrings"] = ^id(id arg0, id arg1, id arg2) {
		return CFStringCreateByCombiningStrings(arg0, arg1, arg2);
	};
	context[@"CFStringCreateArrayBySeparatingStrings"] = ^id(id arg0, id arg1, id arg2) {
		return CFStringCreateArrayBySeparatingStrings(arg0, arg1, arg2);
	};
	context[@"CFStringGetDoubleValue"] = ^double(id arg0) {
		return CFStringGetDoubleValue(arg0);
	};
	context[@"CFStringCreateMutable"] = ^id(id arg0, CFIndex arg1) {
		return CFStringCreateMutable(arg0, arg1);
	};
	context[@"CFStringCompareWithOptionsAndLocale"] = ^CFComparisonResult(id arg0, id arg1, CFRange arg2, CFStringCompareFlags arg3, id arg4) {
		return CFStringCompareWithOptionsAndLocale(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CFStringUppercase"] = ^void(id arg0, id arg1) {
		CFStringUppercase(arg0, arg1);
	};
	context[@"CFStringHasSuffix"] = ^Boolean(id arg0, id arg1) {
		return CFStringHasSuffix(arg0, arg1);
	};
	context[@"CFStringFold"] = ^void(id arg0, CFStringCompareFlags arg1, id arg2) {
		CFStringFold(arg0, arg1, arg2);
	};
	context[@"CFStringConvertEncodingToIANACharSetName"] = ^id(CFStringEncoding arg0) {
		return CFStringConvertEncodingToIANACharSetName(arg0);
	};
	context[@"CFStringConvertEncodingToNSStringEncoding"] = ^unsigned long(CFStringEncoding arg0) {
		return CFStringConvertEncodingToNSStringEncoding(arg0);
	};
	context[@"CFStringGetNameOfEncoding"] = ^id(CFStringEncoding arg0) {
		return CFStringGetNameOfEncoding(arg0);
	};
	context[@"CFStringIsHyphenationAvailableForLocale"] = ^Boolean(id arg0) {
		return CFStringIsHyphenationAvailableForLocale(arg0);
	};
	context[@"CFStringReplaceAll"] = ^void(id arg0, id arg1) {
		CFStringReplaceAll(arg0, arg1);
	};
	context[@"CFStringIsSurrogateHighCharacter"] = ^Boolean(UniChar arg0) {
		return CFStringIsSurrogateHighCharacter(arg0);
	};
	context[@"CFShow"] = ^void(id arg0) {
		CFShow(arg0);
	};
	context[@"CFStringLowercase"] = ^void(id arg0, id arg1) {
		CFStringLowercase(arg0, arg1);
	};
	context[@"CFStringGetRangeOfComposedCharactersAtIndex"] = ^CFRange(id arg0, CFIndex arg1) {
		return CFStringGetRangeOfComposedCharactersAtIndex(arg0, arg1);
	};
	context[@"CFStringCompareWithOptions"] = ^CFComparisonResult(id arg0, id arg1, CFRange arg2, CFStringCompareFlags arg3) {
		return CFStringCompareWithOptions(arg0, arg1, arg2, arg3);
	};
	context[@"CFStringFind"] = ^CFRange(id arg0, id arg1, CFStringCompareFlags arg2) {
		return CFStringFind(arg0, arg1, arg2);
	};
	context[@"CFStringGetSystemEncoding"] = ^CFStringEncoding() {
		return CFStringGetSystemEncoding();
	};
	context[@"CFStringGetIntValue"] = ^SInt32(id arg0) {
		return CFStringGetIntValue(arg0);
	};
	context[@"CFStringCompare"] = ^CFComparisonResult(id arg0, id arg1, CFStringCompareFlags arg2) {
		return CFStringCompare(arg0, arg1, arg2);
	};
	context[@"CFStringGetCharacterAtIndex"] = ^UniChar(id arg0, CFIndex arg1) {
		return CFStringGetCharacterAtIndex(arg0, arg1);
	};
	context[@"CFStringCreateCopy"] = ^id(id arg0, id arg1) {
		return CFStringCreateCopy(arg0, arg1);
	};
	context[@"CFStringFindAndReplace"] = ^CFIndex(id arg0, id arg1, id arg2, CFRange arg3, CFStringCompareFlags arg4) {
		return CFStringFindAndReplace(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CFStringTrimWhitespace"] = ^void(id arg0) {
		CFStringTrimWhitespace(arg0);
	};
	context[@"CFStringDelete"] = ^void(id arg0, CFRange arg1) {
		CFStringDelete(arg0, arg1);
	};
	context[@"CFStringCreateExternalRepresentation"] = ^id(id arg0, id arg1, CFStringEncoding arg2, UInt8 arg3) {
		return CFStringCreateExternalRepresentation(arg0, arg1, arg2, arg3);
	};
	context[@"CFShowStr"] = ^void(id arg0) {
		CFShowStr(arg0);
	};
	context[@"CFStringGetLongCharacterForSurrogatePair"] = ^UTF32Char(UniChar arg0, UniChar arg1) {
		return CFStringGetLongCharacterForSurrogatePair(arg0, arg1);
	};
	context[@"CFStringCreateFromExternalRepresentation"] = ^id(id arg0, id arg1, CFStringEncoding arg2) {
		return CFStringCreateFromExternalRepresentation(arg0, arg1, arg2);
	};
	context[@"CFStringNormalize"] = ^void(id arg0, CFStringNormalizationForm arg1) {
		CFStringNormalize(arg0, arg1);
	};
	context[@"CFStringCreateArrayWithFindResults"] = ^id(id arg0, id arg1, id arg2, CFRange arg3, CFStringCompareFlags arg4) {
		return CFStringCreateArrayWithFindResults(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CFStringConvertNSStringEncodingToEncoding"] = ^CFStringEncoding(unsigned long arg0) {
		return CFStringConvertNSStringEncodingToEncoding(arg0);
	};
	context[@"CFStringCapitalize"] = ^void(id arg0, id arg1) {
		CFStringCapitalize(arg0, arg1);
	};
	context[@"CFStringGetSmallestEncoding"] = ^CFStringEncoding(id arg0) {
		return CFStringGetSmallestEncoding(arg0);
	};
	context[@"CFStringGetTypeID"] = ^CFTypeID() {
		return CFStringGetTypeID();
	};
	context[@"CFStringGetFastestEncoding"] = ^CFStringEncoding(id arg0) {
		return CFStringGetFastestEncoding(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFStringEncodingMacRoman"] = @0U;
	context[@"kCFStringEncodingWindowsLatin1"] = @1280U;
	context[@"kCFStringEncodingISOLatin1"] = @513U;
	context[@"kCFStringEncodingNextStepLatin"] = @2817U;
	context[@"kCFStringEncodingASCII"] = @1536U;
	context[@"kCFStringEncodingUnicode"] = @256U;
	context[@"kCFStringEncodingUTF8"] = @134217984U;
	context[@"kCFStringEncodingNonLossyASCII"] = @3071U;
	context[@"kCFStringEncodingUTF16"] = @256U;
	context[@"kCFStringEncodingUTF16BE"] = @268435712U;
	context[@"kCFStringEncodingUTF16LE"] = @335544576U;
	context[@"kCFStringEncodingUTF32"] = @201326848U;
	context[@"kCFStringEncodingUTF32BE"] = @402653440U;
	context[@"kCFStringEncodingUTF32LE"] = @469762304U;

	context[@"kCFCompareCaseInsensitive"] = @1UL;
	context[@"kCFCompareBackwards"] = @4UL;
	context[@"kCFCompareAnchored"] = @8UL;
	context[@"kCFCompareNonliteral"] = @16UL;
	context[@"kCFCompareLocalized"] = @32UL;
	context[@"kCFCompareNumerically"] = @64UL;
	context[@"kCFCompareDiacriticInsensitive"] = @128UL;
	context[@"kCFCompareWidthInsensitive"] = @256UL;
	context[@"kCFCompareForcedOrdering"] = @512UL;

	context[@"kCFStringNormalizationFormD"] = @0L;
	context[@"kCFStringNormalizationFormKD"] = @1L;
	context[@"kCFStringNormalizationFormC"] = @2L;
	context[@"kCFStringNormalizationFormKC"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStringTransformToLatin;
	if (p != NULL) context[@"kCFStringTransformToLatin"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformToLatin inContext: context];
	p = (void*) &kCFStringTransformStripCombiningMarks;
	if (p != NULL) context[@"kCFStringTransformStripCombiningMarks"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformStripCombiningMarks inContext: context];
	p = (void*) &kCFStringTransformLatinHiragana;
	if (p != NULL) context[@"kCFStringTransformLatinHiragana"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinHiragana inContext: context];
	p = (void*) &kCFStringTransformToXMLHex;
	if (p != NULL) context[@"kCFStringTransformToXMLHex"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformToXMLHex inContext: context];
	p = (void*) &kCFStringTransformLatinThai;
	if (p != NULL) context[@"kCFStringTransformLatinThai"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinThai inContext: context];
	p = (void*) &kCFStringTransformHiraganaKatakana;
	if (p != NULL) context[@"kCFStringTransformHiraganaKatakana"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformHiraganaKatakana inContext: context];
	p = (void*) &kCFStringTransformLatinHangul;
	if (p != NULL) context[@"kCFStringTransformLatinHangul"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinHangul inContext: context];
	p = (void*) &kCFStringTransformLatinCyrillic;
	if (p != NULL) context[@"kCFStringTransformLatinCyrillic"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinCyrillic inContext: context];
	p = (void*) &kCFStringTransformLatinArabic;
	if (p != NULL) context[@"kCFStringTransformLatinArabic"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinArabic inContext: context];
	p = (void*) &kCFStringTransformLatinGreek;
	if (p != NULL) context[@"kCFStringTransformLatinGreek"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinGreek inContext: context];
	p = (void*) &kCFStringTransformLatinHebrew;
	if (p != NULL) context[@"kCFStringTransformLatinHebrew"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinHebrew inContext: context];
	p = (void*) &kCFStringTransformLatinKatakana;
	if (p != NULL) context[@"kCFStringTransformLatinKatakana"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinKatakana inContext: context];
	p = (void*) &kCFStringTransformToUnicodeName;
	if (p != NULL) context[@"kCFStringTransformToUnicodeName"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformToUnicodeName inContext: context];
	p = (void*) &kCFStringTransformFullwidthHalfwidth;
	if (p != NULL) context[@"kCFStringTransformFullwidthHalfwidth"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformFullwidthHalfwidth inContext: context];
	p = (void*) &kCFStringTransformStripDiacritics;
	if (p != NULL) context[@"kCFStringTransformStripDiacritics"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformStripDiacritics inContext: context];
	p = (void*) &kCFStringTransformMandarinLatin;
	if (p != NULL) context[@"kCFStringTransformMandarinLatin"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformMandarinLatin inContext: context];
}
void load_CoreFoundation_CFString_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
