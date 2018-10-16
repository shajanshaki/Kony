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
-(id) jsinitWithTagSchemes: (NSArray *) tagSchemes options: (NSUInteger) opts 
{
	id resultVal__;
	resultVal__ = [[self initWithTagSchemes: tagSchemes options: opts ] autorelease];
	return resultVal__;
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
	context[@"NSLinguisticTaggerUnitWord"] = @0L;
	context[@"NSLinguisticTaggerUnitSentence"] = @1L;
	context[@"NSLinguisticTaggerUnitParagraph"] = @2L;
	context[@"NSLinguisticTaggerUnitDocument"] = @3L;

	context[@"NSLinguisticTaggerOmitWords"] = @1UL;
	context[@"NSLinguisticTaggerOmitPunctuation"] = @2UL;
	context[@"NSLinguisticTaggerOmitWhitespace"] = @4UL;
	context[@"NSLinguisticTaggerOmitOther"] = @8UL;
	context[@"NSLinguisticTaggerJoinNames"] = @16UL;

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
