#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSXMLParser (Exports)
-(id) jsinitWithData: (NSData *) data 
{
	id resultVal__;
	resultVal__ = [[self initWithData: data ] autorelease];
	return resultVal__;
}
-(id) jsinitWithContentsOfURL: (NSURL *) url 
{
	id resultVal__;
	resultVal__ = [[self initWithContentsOfURL: url ] autorelease];
	return resultVal__;
}
-(id) jsinitWithStream: (NSInputStream *) stream 
{
	id resultVal__;
	resultVal__ = [[self initWithStream: stream ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSXMLParser class], @protocol(NSXMLParserNSXMLParserLocatorAdditionsCategoryInstanceExports));
	class_addProtocol([NSXMLParser class], @protocol(NSXMLParserNSXMLParserLocatorAdditionsCategoryClassExports));
	class_addProtocol([NSXMLParser class], @protocol(NSXMLParserInstanceExports));
	class_addProtocol([NSXMLParser class], @protocol(NSXMLParserClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSXMLParserResolveExternalEntitiesNever"] = @0UL;
	context[@"NSXMLParserResolveExternalEntitiesNoNetwork"] = @1UL;
	context[@"NSXMLParserResolveExternalEntitiesSameOriginOnly"] = @2UL;
	context[@"NSXMLParserResolveExternalEntitiesAlways"] = @3UL;

	context[@"NSXMLParserInternalError"] = @1L;
	context[@"NSXMLParserOutOfMemoryError"] = @2L;
	context[@"NSXMLParserDocumentStartError"] = @3L;
	context[@"NSXMLParserEmptyDocumentError"] = @4L;
	context[@"NSXMLParserPrematureDocumentEndError"] = @5L;
	context[@"NSXMLParserInvalidHexCharacterRefError"] = @6L;
	context[@"NSXMLParserInvalidDecimalCharacterRefError"] = @7L;
	context[@"NSXMLParserInvalidCharacterRefError"] = @8L;
	context[@"NSXMLParserInvalidCharacterError"] = @9L;
	context[@"NSXMLParserCharacterRefAtEOFError"] = @10L;
	context[@"NSXMLParserCharacterRefInPrologError"] = @11L;
	context[@"NSXMLParserCharacterRefInEpilogError"] = @12L;
	context[@"NSXMLParserCharacterRefInDTDError"] = @13L;
	context[@"NSXMLParserEntityRefAtEOFError"] = @14L;
	context[@"NSXMLParserEntityRefInPrologError"] = @15L;
	context[@"NSXMLParserEntityRefInEpilogError"] = @16L;
	context[@"NSXMLParserEntityRefInDTDError"] = @17L;
	context[@"NSXMLParserParsedEntityRefAtEOFError"] = @18L;
	context[@"NSXMLParserParsedEntityRefInPrologError"] = @19L;
	context[@"NSXMLParserParsedEntityRefInEpilogError"] = @20L;
	context[@"NSXMLParserParsedEntityRefInInternalSubsetError"] = @21L;
	context[@"NSXMLParserEntityReferenceWithoutNameError"] = @22L;
	context[@"NSXMLParserEntityReferenceMissingSemiError"] = @23L;
	context[@"NSXMLParserParsedEntityRefNoNameError"] = @24L;
	context[@"NSXMLParserParsedEntityRefMissingSemiError"] = @25L;
	context[@"NSXMLParserUndeclaredEntityError"] = @26L;
	context[@"NSXMLParserUnparsedEntityError"] = @28L;
	context[@"NSXMLParserEntityIsExternalError"] = @29L;
	context[@"NSXMLParserEntityIsParameterError"] = @30L;
	context[@"NSXMLParserUnknownEncodingError"] = @31L;
	context[@"NSXMLParserEncodingNotSupportedError"] = @32L;
	context[@"NSXMLParserStringNotStartedError"] = @33L;
	context[@"NSXMLParserStringNotClosedError"] = @34L;
	context[@"NSXMLParserNamespaceDeclarationError"] = @35L;
	context[@"NSXMLParserEntityNotStartedError"] = @36L;
	context[@"NSXMLParserEntityNotFinishedError"] = @37L;
	context[@"NSXMLParserLessThanSymbolInAttributeError"] = @38L;
	context[@"NSXMLParserAttributeNotStartedError"] = @39L;
	context[@"NSXMLParserAttributeNotFinishedError"] = @40L;
	context[@"NSXMLParserAttributeHasNoValueError"] = @41L;
	context[@"NSXMLParserAttributeRedefinedError"] = @42L;
	context[@"NSXMLParserLiteralNotStartedError"] = @43L;
	context[@"NSXMLParserLiteralNotFinishedError"] = @44L;
	context[@"NSXMLParserCommentNotFinishedError"] = @45L;
	context[@"NSXMLParserProcessingInstructionNotStartedError"] = @46L;
	context[@"NSXMLParserProcessingInstructionNotFinishedError"] = @47L;
	context[@"NSXMLParserNotationNotStartedError"] = @48L;
	context[@"NSXMLParserNotationNotFinishedError"] = @49L;
	context[@"NSXMLParserAttributeListNotStartedError"] = @50L;
	context[@"NSXMLParserAttributeListNotFinishedError"] = @51L;
	context[@"NSXMLParserMixedContentDeclNotStartedError"] = @52L;
	context[@"NSXMLParserMixedContentDeclNotFinishedError"] = @53L;
	context[@"NSXMLParserElementContentDeclNotStartedError"] = @54L;
	context[@"NSXMLParserElementContentDeclNotFinishedError"] = @55L;
	context[@"NSXMLParserXMLDeclNotStartedError"] = @56L;
	context[@"NSXMLParserXMLDeclNotFinishedError"] = @57L;
	context[@"NSXMLParserConditionalSectionNotStartedError"] = @58L;
	context[@"NSXMLParserConditionalSectionNotFinishedError"] = @59L;
	context[@"NSXMLParserExternalSubsetNotFinishedError"] = @60L;
	context[@"NSXMLParserDOCTYPEDeclNotFinishedError"] = @61L;
	context[@"NSXMLParserMisplacedCDATAEndStringError"] = @62L;
	context[@"NSXMLParserCDATANotFinishedError"] = @63L;
	context[@"NSXMLParserMisplacedXMLDeclarationError"] = @64L;
	context[@"NSXMLParserSpaceRequiredError"] = @65L;
	context[@"NSXMLParserSeparatorRequiredError"] = @66L;
	context[@"NSXMLParserNMTOKENRequiredError"] = @67L;
	context[@"NSXMLParserNAMERequiredError"] = @68L;
	context[@"NSXMLParserPCDATARequiredError"] = @69L;
	context[@"NSXMLParserURIRequiredError"] = @70L;
	context[@"NSXMLParserPublicIdentifierRequiredError"] = @71L;
	context[@"NSXMLParserLTRequiredError"] = @72L;
	context[@"NSXMLParserGTRequiredError"] = @73L;
	context[@"NSXMLParserLTSlashRequiredError"] = @74L;
	context[@"NSXMLParserEqualExpectedError"] = @75L;
	context[@"NSXMLParserTagNameMismatchError"] = @76L;
	context[@"NSXMLParserUnfinishedTagError"] = @77L;
	context[@"NSXMLParserStandaloneValueError"] = @78L;
	context[@"NSXMLParserInvalidEncodingNameError"] = @79L;
	context[@"NSXMLParserCommentContainsDoubleHyphenError"] = @80L;
	context[@"NSXMLParserInvalidEncodingError"] = @81L;
	context[@"NSXMLParserExternalStandaloneEntityError"] = @82L;
	context[@"NSXMLParserInvalidConditionalSectionError"] = @83L;
	context[@"NSXMLParserEntityValueRequiredError"] = @84L;
	context[@"NSXMLParserNotWellBalancedError"] = @85L;
	context[@"NSXMLParserExtraContentError"] = @86L;
	context[@"NSXMLParserInvalidCharacterInEntityError"] = @87L;
	context[@"NSXMLParserParsedEntityRefInInternalError"] = @88L;
	context[@"NSXMLParserEntityRefLoopError"] = @89L;
	context[@"NSXMLParserEntityBoundaryError"] = @90L;
	context[@"NSXMLParserInvalidURIError"] = @91L;
	context[@"NSXMLParserURIFragmentError"] = @92L;
	context[@"NSXMLParserNoDTDError"] = @94L;
	context[@"NSXMLParserDelegateAbortedParseError"] = @512L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSXMLParserErrorDomain;
	if (p != NULL) context[@"NSXMLParserErrorDomain"] = NSXMLParserErrorDomain;
}
void Foundation_NSXMLParserProtocols()
{
	(void)@protocol(NSXMLParserDelegate);
}
void load_Foundation_NSXMLParser_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
