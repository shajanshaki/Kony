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
	context[@"NSXMLParserResolveExternalEntitiesNever"] = @0U;
	context[@"NSXMLParserResolveExternalEntitiesNoNetwork"] = @1U;
	context[@"NSXMLParserResolveExternalEntitiesSameOriginOnly"] = @2U;
	context[@"NSXMLParserResolveExternalEntitiesAlways"] = @3U;

	context[@"NSXMLParserInternalError"] = @1;
	context[@"NSXMLParserOutOfMemoryError"] = @2;
	context[@"NSXMLParserDocumentStartError"] = @3;
	context[@"NSXMLParserEmptyDocumentError"] = @4;
	context[@"NSXMLParserPrematureDocumentEndError"] = @5;
	context[@"NSXMLParserInvalidHexCharacterRefError"] = @6;
	context[@"NSXMLParserInvalidDecimalCharacterRefError"] = @7;
	context[@"NSXMLParserInvalidCharacterRefError"] = @8;
	context[@"NSXMLParserInvalidCharacterError"] = @9;
	context[@"NSXMLParserCharacterRefAtEOFError"] = @10;
	context[@"NSXMLParserCharacterRefInPrologError"] = @11;
	context[@"NSXMLParserCharacterRefInEpilogError"] = @12;
	context[@"NSXMLParserCharacterRefInDTDError"] = @13;
	context[@"NSXMLParserEntityRefAtEOFError"] = @14;
	context[@"NSXMLParserEntityRefInPrologError"] = @15;
	context[@"NSXMLParserEntityRefInEpilogError"] = @16;
	context[@"NSXMLParserEntityRefInDTDError"] = @17;
	context[@"NSXMLParserParsedEntityRefAtEOFError"] = @18;
	context[@"NSXMLParserParsedEntityRefInPrologError"] = @19;
	context[@"NSXMLParserParsedEntityRefInEpilogError"] = @20;
	context[@"NSXMLParserParsedEntityRefInInternalSubsetError"] = @21;
	context[@"NSXMLParserEntityReferenceWithoutNameError"] = @22;
	context[@"NSXMLParserEntityReferenceMissingSemiError"] = @23;
	context[@"NSXMLParserParsedEntityRefNoNameError"] = @24;
	context[@"NSXMLParserParsedEntityRefMissingSemiError"] = @25;
	context[@"NSXMLParserUndeclaredEntityError"] = @26;
	context[@"NSXMLParserUnparsedEntityError"] = @28;
	context[@"NSXMLParserEntityIsExternalError"] = @29;
	context[@"NSXMLParserEntityIsParameterError"] = @30;
	context[@"NSXMLParserUnknownEncodingError"] = @31;
	context[@"NSXMLParserEncodingNotSupportedError"] = @32;
	context[@"NSXMLParserStringNotStartedError"] = @33;
	context[@"NSXMLParserStringNotClosedError"] = @34;
	context[@"NSXMLParserNamespaceDeclarationError"] = @35;
	context[@"NSXMLParserEntityNotStartedError"] = @36;
	context[@"NSXMLParserEntityNotFinishedError"] = @37;
	context[@"NSXMLParserLessThanSymbolInAttributeError"] = @38;
	context[@"NSXMLParserAttributeNotStartedError"] = @39;
	context[@"NSXMLParserAttributeNotFinishedError"] = @40;
	context[@"NSXMLParserAttributeHasNoValueError"] = @41;
	context[@"NSXMLParserAttributeRedefinedError"] = @42;
	context[@"NSXMLParserLiteralNotStartedError"] = @43;
	context[@"NSXMLParserLiteralNotFinishedError"] = @44;
	context[@"NSXMLParserCommentNotFinishedError"] = @45;
	context[@"NSXMLParserProcessingInstructionNotStartedError"] = @46;
	context[@"NSXMLParserProcessingInstructionNotFinishedError"] = @47;
	context[@"NSXMLParserNotationNotStartedError"] = @48;
	context[@"NSXMLParserNotationNotFinishedError"] = @49;
	context[@"NSXMLParserAttributeListNotStartedError"] = @50;
	context[@"NSXMLParserAttributeListNotFinishedError"] = @51;
	context[@"NSXMLParserMixedContentDeclNotStartedError"] = @52;
	context[@"NSXMLParserMixedContentDeclNotFinishedError"] = @53;
	context[@"NSXMLParserElementContentDeclNotStartedError"] = @54;
	context[@"NSXMLParserElementContentDeclNotFinishedError"] = @55;
	context[@"NSXMLParserXMLDeclNotStartedError"] = @56;
	context[@"NSXMLParserXMLDeclNotFinishedError"] = @57;
	context[@"NSXMLParserConditionalSectionNotStartedError"] = @58;
	context[@"NSXMLParserConditionalSectionNotFinishedError"] = @59;
	context[@"NSXMLParserExternalSubsetNotFinishedError"] = @60;
	context[@"NSXMLParserDOCTYPEDeclNotFinishedError"] = @61;
	context[@"NSXMLParserMisplacedCDATAEndStringError"] = @62;
	context[@"NSXMLParserCDATANotFinishedError"] = @63;
	context[@"NSXMLParserMisplacedXMLDeclarationError"] = @64;
	context[@"NSXMLParserSpaceRequiredError"] = @65;
	context[@"NSXMLParserSeparatorRequiredError"] = @66;
	context[@"NSXMLParserNMTOKENRequiredError"] = @67;
	context[@"NSXMLParserNAMERequiredError"] = @68;
	context[@"NSXMLParserPCDATARequiredError"] = @69;
	context[@"NSXMLParserURIRequiredError"] = @70;
	context[@"NSXMLParserPublicIdentifierRequiredError"] = @71;
	context[@"NSXMLParserLTRequiredError"] = @72;
	context[@"NSXMLParserGTRequiredError"] = @73;
	context[@"NSXMLParserLTSlashRequiredError"] = @74;
	context[@"NSXMLParserEqualExpectedError"] = @75;
	context[@"NSXMLParserTagNameMismatchError"] = @76;
	context[@"NSXMLParserUnfinishedTagError"] = @77;
	context[@"NSXMLParserStandaloneValueError"] = @78;
	context[@"NSXMLParserInvalidEncodingNameError"] = @79;
	context[@"NSXMLParserCommentContainsDoubleHyphenError"] = @80;
	context[@"NSXMLParserInvalidEncodingError"] = @81;
	context[@"NSXMLParserExternalStandaloneEntityError"] = @82;
	context[@"NSXMLParserInvalidConditionalSectionError"] = @83;
	context[@"NSXMLParserEntityValueRequiredError"] = @84;
	context[@"NSXMLParserNotWellBalancedError"] = @85;
	context[@"NSXMLParserExtraContentError"] = @86;
	context[@"NSXMLParserInvalidCharacterInEntityError"] = @87;
	context[@"NSXMLParserParsedEntityRefInInternalError"] = @88;
	context[@"NSXMLParserEntityRefLoopError"] = @89;
	context[@"NSXMLParserEntityBoundaryError"] = @90;
	context[@"NSXMLParserInvalidURIError"] = @91;
	context[@"NSXMLParserURIFragmentError"] = @92;
	context[@"NSXMLParserNoDTDError"] = @94;
	context[@"NSXMLParserDelegateAbortedParseError"] = @512;

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
