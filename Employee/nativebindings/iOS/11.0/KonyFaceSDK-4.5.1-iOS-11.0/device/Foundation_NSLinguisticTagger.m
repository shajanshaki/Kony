#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSLinguisticTagger (Exports)
-(void) jsenumerateTagsInRange: (NSRange) range scheme: (NSLinguisticTagScheme) tagScheme options: (NSLinguisticTaggerOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(NSLinguisticTag , NSRange, NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSLinguisticTag arg0, NSRange arg1, NSRange arg2, BOOL * arg3) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithRange: arg1 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithRange: arg2 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg3] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateTagsInRange: range scheme: tagScheme options: opts usingBlock: block_ ];
}
-(void) jsenumerateTagsInRange: (NSRange) range unit: (NSLinguisticTaggerUnit) unit scheme: (NSLinguisticTagScheme) scheme options: (NSLinguisticTaggerOptions) options usingBlock: (JSValue *) block 
{
	void (^ block_)(NSLinguisticTag , NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSLinguisticTag arg0, NSRange arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithRange: arg1 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateTagsInRange: range unit: unit scheme: scheme options: options usingBlock: block_ ];
}
-(id) jsinitWithTagSchemes: (NSArray *) tagSchemes options: (NSUInteger) opts 
{
	id resultVal__;
	resultVal__ = [[self initWithTagSchemes: tagSchemes options: opts ] autorelease];
	return resultVal__;
}
+(void) jsenumerateTagsForString: (NSString *) string range: (NSRange) range unit: (NSLinguisticTaggerUnit) unit scheme: (NSLinguisticTagScheme) scheme options: (NSLinguisticTaggerOptions) options orthography: (NSOrthography *) orthography usingBlock: (JSValue *) block 
{
	void (^ block_)(NSLinguisticTag , NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSLinguisticTag arg0, NSRange arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithRange: arg1 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateTagsForString: string range: range unit: unit scheme: scheme options: options orthography: orthography usingBlock: block_ ];
}
@end
@implementation NSString (NSStringNSLinguisticAnalysisCategoryExports)
-(void) jsenumerateLinguisticTagsInRange: (NSRange) range scheme: (NSLinguisticTagScheme) scheme options: (NSLinguisticTaggerOptions) options orthography: (NSOrthography *) orthography usingBlock: (JSValue *) block 
{
	void (^ block_)(NSLinguisticTag , NSRange, NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSLinguisticTag arg0, NSRange arg1, NSRange arg2, BOOL * arg3) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithRange: arg1 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithRange: arg2 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg3] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateLinguisticTagsInRange: range scheme: scheme options: options orthography: orthography usingBlock: block_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSLinguisticTagger class], @protocol(NSLinguisticTaggerInstanceExports));
	class_addProtocol([NSLinguisticTagger class], @protocol(NSLinguisticTaggerClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSLinguisticAnalysisCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSLinguisticAnalysisCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSLinguisticTaggerUnitWord"] = @0;
	context[@"NSLinguisticTaggerUnitSentence"] = @1;
	context[@"NSLinguisticTaggerUnitParagraph"] = @2;
	context[@"NSLinguisticTaggerUnitDocument"] = @3;

	context[@"NSLinguisticTaggerOmitWords"] = @1U;
	context[@"NSLinguisticTaggerOmitPunctuation"] = @2U;
	context[@"NSLinguisticTaggerOmitWhitespace"] = @4U;
	context[@"NSLinguisticTaggerOmitOther"] = @8U;
	context[@"NSLinguisticTaggerJoinNames"] = @16U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSLinguisticTagSentenceTerminator;
	if (p != NULL) context[@"NSLinguisticTagSentenceTerminator"] = NSLinguisticTagSentenceTerminator;
	p = (void*) &NSLinguisticTagIdiom;
	if (p != NULL) context[@"NSLinguisticTagIdiom"] = NSLinguisticTagIdiom;
	p = (void*) &NSLinguisticTagSchemeTokenType;
	if (p != NULL) context[@"NSLinguisticTagSchemeTokenType"] = NSLinguisticTagSchemeTokenType;
	p = (void*) &NSLinguisticTagWord;
	if (p != NULL) context[@"NSLinguisticTagWord"] = NSLinguisticTagWord;
	p = (void*) &NSLinguisticTagConjunction;
	if (p != NULL) context[@"NSLinguisticTagConjunction"] = NSLinguisticTagConjunction;
	p = (void*) &NSLinguisticTagOther;
	if (p != NULL) context[@"NSLinguisticTagOther"] = NSLinguisticTagOther;
	p = (void*) &NSLinguisticTagPlaceName;
	if (p != NULL) context[@"NSLinguisticTagPlaceName"] = NSLinguisticTagPlaceName;
	p = (void*) &NSLinguisticTagOpenParenthesis;
	if (p != NULL) context[@"NSLinguisticTagOpenParenthesis"] = NSLinguisticTagOpenParenthesis;
	p = (void*) &NSLinguisticTagDash;
	if (p != NULL) context[@"NSLinguisticTagDash"] = NSLinguisticTagDash;
	p = (void*) &NSLinguisticTagCloseQuote;
	if (p != NULL) context[@"NSLinguisticTagCloseQuote"] = NSLinguisticTagCloseQuote;
	p = (void*) &NSLinguisticTagDeterminer;
	if (p != NULL) context[@"NSLinguisticTagDeterminer"] = NSLinguisticTagDeterminer;
	p = (void*) &NSLinguisticTagAdjective;
	if (p != NULL) context[@"NSLinguisticTagAdjective"] = NSLinguisticTagAdjective;
	p = (void*) &NSLinguisticTagOtherWhitespace;
	if (p != NULL) context[@"NSLinguisticTagOtherWhitespace"] = NSLinguisticTagOtherWhitespace;
	p = (void*) &NSLinguisticTagCloseParenthesis;
	if (p != NULL) context[@"NSLinguisticTagCloseParenthesis"] = NSLinguisticTagCloseParenthesis;
	p = (void*) &NSLinguisticTagPronoun;
	if (p != NULL) context[@"NSLinguisticTagPronoun"] = NSLinguisticTagPronoun;
	p = (void*) &NSLinguisticTagSchemeLexicalClass;
	if (p != NULL) context[@"NSLinguisticTagSchemeLexicalClass"] = NSLinguisticTagSchemeLexicalClass;
	p = (void*) &NSLinguisticTagSchemeNameType;
	if (p != NULL) context[@"NSLinguisticTagSchemeNameType"] = NSLinguisticTagSchemeNameType;
	p = (void*) &NSLinguisticTagSchemeLemma;
	if (p != NULL) context[@"NSLinguisticTagSchemeLemma"] = NSLinguisticTagSchemeLemma;
	p = (void*) &NSLinguisticTagSchemeNameTypeOrLexicalClass;
	if (p != NULL) context[@"NSLinguisticTagSchemeNameTypeOrLexicalClass"] = NSLinguisticTagSchemeNameTypeOrLexicalClass;
	p = (void*) &NSLinguisticTagAdverb;
	if (p != NULL) context[@"NSLinguisticTagAdverb"] = NSLinguisticTagAdverb;
	p = (void*) &NSLinguisticTagParticle;
	if (p != NULL) context[@"NSLinguisticTagParticle"] = NSLinguisticTagParticle;
	p = (void*) &NSLinguisticTagPreposition;
	if (p != NULL) context[@"NSLinguisticTagPreposition"] = NSLinguisticTagPreposition;
	p = (void*) &NSLinguisticTagOtherPunctuation;
	if (p != NULL) context[@"NSLinguisticTagOtherPunctuation"] = NSLinguisticTagOtherPunctuation;
	p = (void*) &NSLinguisticTagSchemeLanguage;
	if (p != NULL) context[@"NSLinguisticTagSchemeLanguage"] = NSLinguisticTagSchemeLanguage;
	p = (void*) &NSLinguisticTagOpenQuote;
	if (p != NULL) context[@"NSLinguisticTagOpenQuote"] = NSLinguisticTagOpenQuote;
	p = (void*) &NSLinguisticTagWhitespace;
	if (p != NULL) context[@"NSLinguisticTagWhitespace"] = NSLinguisticTagWhitespace;
	p = (void*) &NSLinguisticTagOtherWord;
	if (p != NULL) context[@"NSLinguisticTagOtherWord"] = NSLinguisticTagOtherWord;
	p = (void*) &NSLinguisticTagInterjection;
	if (p != NULL) context[@"NSLinguisticTagInterjection"] = NSLinguisticTagInterjection;
	p = (void*) &NSLinguisticTagPunctuation;
	if (p != NULL) context[@"NSLinguisticTagPunctuation"] = NSLinguisticTagPunctuation;
	p = (void*) &NSLinguisticTagOrganizationName;
	if (p != NULL) context[@"NSLinguisticTagOrganizationName"] = NSLinguisticTagOrganizationName;
	p = (void*) &NSLinguisticTagNumber;
	if (p != NULL) context[@"NSLinguisticTagNumber"] = NSLinguisticTagNumber;
	p = (void*) &NSLinguisticTagVerb;
	if (p != NULL) context[@"NSLinguisticTagVerb"] = NSLinguisticTagVerb;
	p = (void*) &NSLinguisticTagWordJoiner;
	if (p != NULL) context[@"NSLinguisticTagWordJoiner"] = NSLinguisticTagWordJoiner;
	p = (void*) &NSLinguisticTagSchemeScript;
	if (p != NULL) context[@"NSLinguisticTagSchemeScript"] = NSLinguisticTagSchemeScript;
	p = (void*) &NSLinguisticTagPersonalName;
	if (p != NULL) context[@"NSLinguisticTagPersonalName"] = NSLinguisticTagPersonalName;
	p = (void*) &NSLinguisticTagParagraphBreak;
	if (p != NULL) context[@"NSLinguisticTagParagraphBreak"] = NSLinguisticTagParagraphBreak;
	p = (void*) &NSLinguisticTagNoun;
	if (p != NULL) context[@"NSLinguisticTagNoun"] = NSLinguisticTagNoun;
	p = (void*) &NSLinguisticTagClassifier;
	if (p != NULL) context[@"NSLinguisticTagClassifier"] = NSLinguisticTagClassifier;
}
void load_Foundation_NSLinguisticTagger_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
