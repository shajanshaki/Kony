#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSString (Exports)
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
@implementation NSString (NSStringNSItemProviderCategoryExports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(NSProgress *) jsloadDataWithTypeIdentifier: (NSString *) typeIdentifier forItemProviderCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSData * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSProgress * resultVal__;
	resultVal__ = [self loadDataWithTypeIdentifier: typeIdentifier forItemProviderCompletionHandler: completionHandler_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
+(id) jsobjectWithItemProviderData: (NSData *) data typeIdentifier: (NSString *) typeIdentifier error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self objectWithItemProviderData: data typeIdentifier: typeIdentifier error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation NSString (NSStringNSStringExtensionMethodsCategoryExports)
-(BOOL) jswriteToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile encoding: (NSStringEncoding) enc error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self writeToFile: path atomically: useAuxiliaryFile encoding: enc error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithData: (NSData *) data encoding: (NSStringEncoding) encoding 
{
	id resultVal__;
	resultVal__ = [[self initWithData: data encoding: encoding ] autorelease];
	return resultVal__;
}
-(NSString *) jsstringByAppendingFormat: (NSString *) format arguments: (NSArray *) args 
{
	NSString * resultVal__;
	if ([args count] == 0) resultVal__ = [self stringByAppendingFormat: format ];
	else if ([args count] == 1) resultVal__ = [self stringByAppendingFormat: format , args[0]];
	else if ([args count] == 2) resultVal__ = [self stringByAppendingFormat: format , args[0], args[1]];
	else if ([args count] == 3) resultVal__ = [self stringByAppendingFormat: format , args[0], args[1], args[2]];
	else if ([args count] == 4) resultVal__ = [self stringByAppendingFormat: format , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) resultVal__ = [self stringByAppendingFormat: format , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) resultVal__ = [self stringByAppendingFormat: format , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) resultVal__ = [self stringByAppendingFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) resultVal__ = [self stringByAppendingFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) resultVal__ = [self stringByAppendingFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) resultVal__ = [self stringByAppendingFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
	return resultVal__;
}
-(id) jsinitWithContentsOfFile: (NSString *) path encoding: (NSStringEncoding) enc error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithContentsOfFile: path encoding: enc error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithFormat: (NSString *) format locale: (id) locale arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [[self initWithFormat: format locale: locale ] autorelease];
	else if ([args count] == 1) resultVal__ = [[self initWithFormat: format locale: locale , args[0]] autorelease];
	else if ([args count] == 2) resultVal__ = [[self initWithFormat: format locale: locale , args[0], args[1]] autorelease];
	else if ([args count] == 3) resultVal__ = [[self initWithFormat: format locale: locale , args[0], args[1], args[2]] autorelease];
	else if ([args count] == 4) resultVal__ = [[self initWithFormat: format locale: locale , args[0], args[1], args[2], args[3]] autorelease];
	else if ([args count] == 5) resultVal__ = [[self initWithFormat: format locale: locale , args[0], args[1], args[2], args[3], args[4]] autorelease];
	else if ([args count] == 6) resultVal__ = [[self initWithFormat: format locale: locale , args[0], args[1], args[2], args[3], args[4], args[5]] autorelease];
	else if ([args count] == 7) resultVal__ = [[self initWithFormat: format locale: locale , args[0], args[1], args[2], args[3], args[4], args[5], args[6]] autorelease];
	else if ([args count] == 8) resultVal__ = [[self initWithFormat: format locale: locale , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]] autorelease];
	else if ([args count] == 9) resultVal__ = [[self initWithFormat: format locale: locale , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]] autorelease];
	else if ([args count] >= 10) resultVal__ = [[self initWithFormat: format locale: locale , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]] autorelease];
	return resultVal__;
}
-(id) jsinitWithContentsOfURL: (NSURL *) url encoding: (NSStringEncoding) enc error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithContentsOfURL: url encoding: enc error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithFormat: (NSString *) format arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [[self initWithFormat: format ] autorelease];
	else if ([args count] == 1) resultVal__ = [[self initWithFormat: format , args[0]] autorelease];
	else if ([args count] == 2) resultVal__ = [[self initWithFormat: format , args[0], args[1]] autorelease];
	else if ([args count] == 3) resultVal__ = [[self initWithFormat: format , args[0], args[1], args[2]] autorelease];
	else if ([args count] == 4) resultVal__ = [[self initWithFormat: format , args[0], args[1], args[2], args[3]] autorelease];
	else if ([args count] == 5) resultVal__ = [[self initWithFormat: format , args[0], args[1], args[2], args[3], args[4]] autorelease];
	else if ([args count] == 6) resultVal__ = [[self initWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5]] autorelease];
	else if ([args count] == 7) resultVal__ = [[self initWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6]] autorelease];
	else if ([args count] == 8) resultVal__ = [[self initWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]] autorelease];
	else if ([args count] == 9) resultVal__ = [[self initWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]] autorelease];
	else if ([args count] >= 10) resultVal__ = [[self initWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]] autorelease];
	return resultVal__;
}
-(id) jsinitWithString: (NSString *) aString 
{
	id resultVal__;
	resultVal__ = [[self initWithString: aString ] autorelease];
	return resultVal__;
}
-(BOOL) jswriteToURL: (NSURL *) url atomically: (BOOL) useAuxiliaryFile encoding: (NSStringEncoding) enc error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self writeToURL: url atomically: useAuxiliaryFile encoding: enc error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(id) jsstringWithFormat: (NSString *) format arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [self stringWithFormat: format ];
	else if ([args count] == 1) resultVal__ = [self stringWithFormat: format , args[0]];
	else if ([args count] == 2) resultVal__ = [self stringWithFormat: format , args[0], args[1]];
	else if ([args count] == 3) resultVal__ = [self stringWithFormat: format , args[0], args[1], args[2]];
	else if ([args count] == 4) resultVal__ = [self stringWithFormat: format , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) resultVal__ = [self stringWithFormat: format , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) resultVal__ = [self stringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) resultVal__ = [self stringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) resultVal__ = [self stringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) resultVal__ = [self stringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) resultVal__ = [self stringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
	return resultVal__;
}
+(id) jslocalizedStringWithFormat: (NSString *) format arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [self localizedStringWithFormat: format ];
	else if ([args count] == 1) resultVal__ = [self localizedStringWithFormat: format , args[0]];
	else if ([args count] == 2) resultVal__ = [self localizedStringWithFormat: format , args[0], args[1]];
	else if ([args count] == 3) resultVal__ = [self localizedStringWithFormat: format , args[0], args[1], args[2]];
	else if ([args count] == 4) resultVal__ = [self localizedStringWithFormat: format , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) resultVal__ = [self localizedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) resultVal__ = [self localizedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) resultVal__ = [self localizedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) resultVal__ = [self localizedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) resultVal__ = [self localizedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) resultVal__ = [self localizedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
	return resultVal__;
}
+(id) jsstringWithContentsOfFile: (NSString *) path encoding: (NSStringEncoding) enc error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self stringWithContentsOfFile: path encoding: enc error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(id) jsstringWithContentsOfURL: (NSURL *) url encoding: (NSStringEncoding) enc error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self stringWithContentsOfURL: url encoding: enc error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
@implementation NSString (NSStringNSStringDeprecatedCategoryExports)
-(id) jsinitWithContentsOfURL: (NSURL *) url 
{
	id resultVal__;
	resultVal__ = [[self initWithContentsOfURL: url ] autorelease];
	return resultVal__;
}
-(id) jsinitWithContentsOfFile: (NSString *) path 
{
	id resultVal__;
	resultVal__ = [[self initWithContentsOfFile: path ] autorelease];
	return resultVal__;
}
@end
@implementation NSMutableString (NSMutableStringNSMutableStringExtensionMethodsCategoryExports)
-(NSMutableString *) jsinitWithCapacity: (NSUInteger) capacity 
{
	NSMutableString * resultVal__;
	resultVal__ = [[self initWithCapacity: capacity ] autorelease];
	return resultVal__;
}
-(void) jsappendFormat: (NSString *) format arguments: (NSArray *) args 
{
	if ([args count] == 0) [self appendFormat: format ];
	else if ([args count] == 1) [self appendFormat: format , args[0]];
	else if ([args count] == 2) [self appendFormat: format , args[0], args[1]];
	else if ([args count] == 3) [self appendFormat: format , args[0], args[1], args[2]];
	else if ([args count] == 4) [self appendFormat: format , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) [self appendFormat: format , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) [self appendFormat: format , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) [self appendFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) [self appendFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) [self appendFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) [self appendFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
}
@end
static void addProtocols()
{
	class_addProtocol([NSString class], @protocol(NSStringInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringClassExports));
	class_addProtocol([NSConstantString class], @protocol(NSConstantStringInstanceExports));
	class_addProtocol([NSConstantString class], @protocol(NSConstantStringClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSItemProviderCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSItemProviderCategoryClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSExtendedStringPropertyListParsingCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSExtendedStringPropertyListParsingCategoryClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringExtensionMethodsCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringExtensionMethodsCategoryClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringDeprecatedCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringDeprecatedCategoryClassExports));
	class_addProtocol([NSMutableString class], @protocol(NSMutableStringNSMutableStringExtensionMethodsCategoryInstanceExports));
	class_addProtocol([NSMutableString class], @protocol(NSMutableStringNSMutableStringExtensionMethodsCategoryClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringEncodingDetectionCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringEncodingDetectionCategoryClassExports));
	class_addProtocol([NSSimpleCString class], @protocol(NSSimpleCStringInstanceExports));
	class_addProtocol([NSSimpleCString class], @protocol(NSSimpleCStringClassExports));
	class_addProtocol([NSMutableString class], @protocol(NSMutableStringInstanceExports));
	class_addProtocol([NSMutableString class], @protocol(NSMutableStringClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSCaseInsensitiveSearch"] = @1UL;
	context[@"NSLiteralSearch"] = @2UL;
	context[@"NSBackwardsSearch"] = @4UL;
	context[@"NSAnchoredSearch"] = @8UL;
	context[@"NSNumericSearch"] = @64UL;
	context[@"NSDiacriticInsensitiveSearch"] = @128UL;
	context[@"NSWidthInsensitiveSearch"] = @256UL;
	context[@"NSForcedOrderingSearch"] = @512UL;
	context[@"NSRegularExpressionSearch"] = @1024UL;

	context[@"NSASCIIStringEncoding"] = @1UL;
	context[@"NSNEXTSTEPStringEncoding"] = @2UL;
	context[@"NSJapaneseEUCStringEncoding"] = @3UL;
	context[@"NSUTF8StringEncoding"] = @4UL;
	context[@"NSISOLatin1StringEncoding"] = @5UL;
	context[@"NSSymbolStringEncoding"] = @6UL;
	context[@"NSNonLossyASCIIStringEncoding"] = @7UL;
	context[@"NSShiftJISStringEncoding"] = @8UL;
	context[@"NSISOLatin2StringEncoding"] = @9UL;
	context[@"NSUnicodeStringEncoding"] = @10UL;
	context[@"NSWindowsCP1251StringEncoding"] = @11UL;
	context[@"NSWindowsCP1252StringEncoding"] = @12UL;
	context[@"NSWindowsCP1253StringEncoding"] = @13UL;
	context[@"NSWindowsCP1254StringEncoding"] = @14UL;
	context[@"NSWindowsCP1250StringEncoding"] = @15UL;
	context[@"NSISO2022JPStringEncoding"] = @21UL;
	context[@"NSMacOSRomanStringEncoding"] = @30UL;
	context[@"NSUTF16StringEncoding"] = @10UL;
	context[@"NSUTF16BigEndianStringEncoding"] = @2415919360UL;
	context[@"NSUTF16LittleEndianStringEncoding"] = @2483028224UL;
	context[@"NSUTF32StringEncoding"] = @2348810496UL;
	context[@"NSUTF32BigEndianStringEncoding"] = @2550137088UL;
	context[@"NSUTF32LittleEndianStringEncoding"] = @2617245952UL;

	context[@"NSStringEncodingConversionAllowLossy"] = @1UL;
	context[@"NSStringEncodingConversionExternalRepresentation"] = @2UL;

	context[@"NSStringEnumerationByLines"] = @0UL;
	context[@"NSStringEnumerationByParagraphs"] = @1UL;
	context[@"NSStringEnumerationByComposedCharacterSequences"] = @2UL;
	context[@"NSStringEnumerationByWords"] = @3UL;
	context[@"NSStringEnumerationBySentences"] = @4UL;
	context[@"NSStringEnumerationReverse"] = @256UL;
	context[@"NSStringEnumerationSubstringNotRequired"] = @512UL;
	context[@"NSStringEnumerationLocalized"] = @1024UL;

	context[@"NSProprietaryStringEncoding"] = @65536UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSStringEncodingDetectionAllowLossyKey;
	if (p != NULL) context[@"NSStringEncodingDetectionAllowLossyKey"] = NSStringEncodingDetectionAllowLossyKey;
	p = (void*) &NSStringEncodingDetectionDisallowedEncodingsKey;
	if (p != NULL) context[@"NSStringEncodingDetectionDisallowedEncodingsKey"] = NSStringEncodingDetectionDisallowedEncodingsKey;
	p = (void*) &NSParseErrorException;
	if (p != NULL) context[@"NSParseErrorException"] = NSParseErrorException;
	p = (void*) &NSStringEncodingDetectionLikelyLanguageKey;
	if (p != NULL) context[@"NSStringEncodingDetectionLikelyLanguageKey"] = NSStringEncodingDetectionLikelyLanguageKey;
	p = (void*) &NSStringTransformToUnicodeName;
	if (p != NULL) context[@"NSStringTransformToUnicodeName"] = NSStringTransformToUnicodeName;
	p = (void*) &NSStringTransformLatinToArabic;
	if (p != NULL) context[@"NSStringTransformLatinToArabic"] = NSStringTransformLatinToArabic;
	p = (void*) &NSStringTransformLatinToThai;
	if (p != NULL) context[@"NSStringTransformLatinToThai"] = NSStringTransformLatinToThai;
	p = (void*) &NSStringTransformLatinToHangul;
	if (p != NULL) context[@"NSStringTransformLatinToHangul"] = NSStringTransformLatinToHangul;
	p = (void*) &NSStringEncodingDetectionSuggestedEncodingsKey;
	if (p != NULL) context[@"NSStringEncodingDetectionSuggestedEncodingsKey"] = NSStringEncodingDetectionSuggestedEncodingsKey;
	p = (void*) &NSStringTransformLatinToGreek;
	if (p != NULL) context[@"NSStringTransformLatinToGreek"] = NSStringTransformLatinToGreek;
	p = (void*) &NSStringTransformMandarinToLatin;
	if (p != NULL) context[@"NSStringTransformMandarinToLatin"] = NSStringTransformMandarinToLatin;
	p = (void*) &NSStringEncodingDetectionFromWindowsKey;
	if (p != NULL) context[@"NSStringEncodingDetectionFromWindowsKey"] = NSStringEncodingDetectionFromWindowsKey;
	p = (void*) &NSStringTransformToLatin;
	if (p != NULL) context[@"NSStringTransformToLatin"] = NSStringTransformToLatin;
	p = (void*) &NSStringTransformStripCombiningMarks;
	if (p != NULL) context[@"NSStringTransformStripCombiningMarks"] = NSStringTransformStripCombiningMarks;
	p = (void*) &NSStringTransformHiraganaToKatakana;
	if (p != NULL) context[@"NSStringTransformHiraganaToKatakana"] = NSStringTransformHiraganaToKatakana;
	p = (void*) &NSStringEncodingDetectionUseOnlySuggestedEncodingsKey;
	if (p != NULL) context[@"NSStringEncodingDetectionUseOnlySuggestedEncodingsKey"] = NSStringEncodingDetectionUseOnlySuggestedEncodingsKey;
	p = (void*) &NSStringEncodingDetectionLossySubstitutionKey;
	if (p != NULL) context[@"NSStringEncodingDetectionLossySubstitutionKey"] = NSStringEncodingDetectionLossySubstitutionKey;
	p = (void*) &NSStringTransformLatinToKatakana;
	if (p != NULL) context[@"NSStringTransformLatinToKatakana"] = NSStringTransformLatinToKatakana;
	p = (void*) &NSCharacterConversionException;
	if (p != NULL) context[@"NSCharacterConversionException"] = NSCharacterConversionException;
	p = (void*) &NSStringTransformLatinToCyrillic;
	if (p != NULL) context[@"NSStringTransformLatinToCyrillic"] = NSStringTransformLatinToCyrillic;
	p = (void*) &NSStringTransformStripDiacritics;
	if (p != NULL) context[@"NSStringTransformStripDiacritics"] = NSStringTransformStripDiacritics;
	p = (void*) &NSStringTransformLatinToHiragana;
	if (p != NULL) context[@"NSStringTransformLatinToHiragana"] = NSStringTransformLatinToHiragana;
	p = (void*) &NSStringTransformFullwidthToHalfwidth;
	if (p != NULL) context[@"NSStringTransformFullwidthToHalfwidth"] = NSStringTransformFullwidthToHalfwidth;
	p = (void*) &NSStringTransformLatinToHebrew;
	if (p != NULL) context[@"NSStringTransformLatinToHebrew"] = NSStringTransformLatinToHebrew;
	p = (void*) &NSStringTransformToXMLHex;
	if (p != NULL) context[@"NSStringTransformToXMLHex"] = NSStringTransformToXMLHex;
}
void load_Foundation_NSString_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
