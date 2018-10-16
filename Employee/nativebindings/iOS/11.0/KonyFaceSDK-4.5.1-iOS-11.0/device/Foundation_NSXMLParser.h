#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSXMLParser_symbols(JSContext*);
@protocol NSXMLParserNSXMLParserLocatorAdditionsCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * systemID;
@property (readonly) NSInteger columnNumber;
@property (readonly,copy) NSString * publicID;
@property (readonly) NSInteger lineNumber;
@end
@protocol NSXMLParserNSXMLParserLocatorAdditionsCategoryClassExports<JSExport>
@end
@protocol NSXMLParserInstanceExports<JSExport>
@property () NSXMLParserExternalEntityResolvingPolicy externalEntityResolvingPolicy;
@property (copy) NSSet * allowedExternalEntityURLs;
@property (assign) id delegate;
@property (readonly,copy) NSError * parserError;
@property () BOOL shouldResolveExternalEntities;
@property () BOOL shouldProcessNamespaces;
@property () BOOL shouldReportNamespacePrefixes;
JSExportAs(initWithContentsOfURL,
-(id) jsinitWithContentsOfURL: (NSURL *) url );
-(void) abortParsing;
JSExportAs(initWithData,
-(id) jsinitWithData: (NSData *) data );
JSExportAs(initWithStream,
-(id) jsinitWithStream: (NSInputStream *) stream );
-(BOOL) parse;
@end
@protocol NSXMLParserClassExports<JSExport>
@end
@protocol NSXMLParserDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) parser: (NSXMLParser *) parser didStartMappingPrefix: (NSString *) prefix toURI: (NSString *) namespaceURI ;
-(void) parser: (NSXMLParser *) parser foundCharacters: (NSString *) string ;
-(void) parser: (NSXMLParser *) parser foundInternalEntityDeclarationWithName: (NSString *) name value: (NSString *) value ;
-(void) parser: (NSXMLParser *) parser foundCDATA: (NSData *) CDATABlock ;
-(void) parser: (NSXMLParser *) parser foundAttributeDeclarationWithName: (NSString *) attributeName forElement: (NSString *) elementName type: (NSString *) type defaultValue: (NSString *) defaultValue ;
-(void) parser: (NSXMLParser *) parser foundProcessingInstructionWithTarget: (NSString *) target data: (NSString *) data ;
-(NSData *) parser: (NSXMLParser *) parser resolveExternalEntityName: (NSString *) name systemID: (NSString *) systemID ;
-(void) parser: (NSXMLParser *) parser foundNotationDeclarationWithName: (NSString *) name publicID: (NSString *) publicID systemID: (NSString *) systemID ;
-(void) parser: (NSXMLParser *) parser foundIgnorableWhitespace: (NSString *) whitespaceString ;
-(void) parser: (NSXMLParser *) parser foundUnparsedEntityDeclarationWithName: (NSString *) name publicID: (NSString *) publicID systemID: (NSString *) systemID notationName: (NSString *) notationName ;
-(void) parser: (NSXMLParser *) parser foundExternalEntityDeclarationWithName: (NSString *) name publicID: (NSString *) publicID systemID: (NSString *) systemID ;
-(void) parser: (NSXMLParser *) parser didEndElement: (NSString *) elementName namespaceURI: (NSString *) namespaceURI qualifiedName: (NSString *) qName ;
-(void) parser: (NSXMLParser *) parser validationErrorOccurred: (NSError *) validationError ;
-(void) parserDidStartDocument: (NSXMLParser *) parser ;
-(void) parser: (NSXMLParser *) parser didStartElement: (NSString *) elementName namespaceURI: (NSString *) namespaceURI qualifiedName: (NSString *) qName attributes: (NSDictionary *) attributeDict ;
-(void) parserDidEndDocument: (NSXMLParser *) parser ;
-(void) parser: (NSXMLParser *) parser didEndMappingPrefix: (NSString *) prefix ;
-(void) parser: (NSXMLParser *) parser foundElementDeclarationWithName: (NSString *) elementName model: (NSString *) model ;
-(void) parser: (NSXMLParser *) parser foundComment: (NSString *) comment ;
-(void) parser: (NSXMLParser *) parser parseErrorOccurred: (NSError *) parseError ;
@end
@protocol NSXMLParserDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop