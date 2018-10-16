#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSException_symbols(JSContext*);
@protocol NSExceptionNSExceptionRaisingConveniencesCategoryInstanceExports<JSExport>
@end
@protocol NSExceptionNSExceptionRaisingConveniencesCategoryClassExports<JSExport>
JSExportAs(raiseFormat,
+(void) jsraise: (NSExceptionName) name format: (NSString *) format arguments: (NSArray *) args );
@end
@protocol NSAssertionHandlerInstanceExports<JSExport>
JSExportAs(handleFailureInFunctionFileLineNumberDescription,
-(void) jshandleFailureInFunction: (NSString *) functionName file: (NSString *) fileName lineNumber: (NSInteger) line description: (NSString *) format arguments: (NSArray *) args );
JSExportAs(handleFailureInMethodObjectFileLineNumberDescription,
-(void) jshandleFailureInMethod: (NSString *) selector object: (id) object file: (NSString *) fileName lineNumber: (NSInteger) line description: (NSString *) format arguments: (NSArray *) args );
@end
@protocol NSAssertionHandlerClassExports<JSExport>
+(NSAssertionHandler *) currentHandler;
@end
@protocol NSExceptionInstanceExports<JSExport, NSCopyingInstanceExports_, NSCodingInstanceExports_>
@property (readonly,copy) NSString * reason;
@property (readonly,copy) NSArray * callStackSymbols;
@property (readonly,copy) NSArray * callStackReturnAddresses;
@property (readonly,copy) NSExceptionName name;
@property (readonly,copy) NSDictionary * userInfo;
-(void) raise;
JSExportAs(initWithNameReasonUserInfo,
-(id) jsinitWithName: (NSExceptionName) aName reason: (NSString *) aReason userInfo: (NSDictionary *) aUserInfo );
@end
@protocol NSExceptionClassExports<JSExport, NSCopyingClassExports_, NSCodingClassExports_>
+(NSException *) exceptionWithName: (NSExceptionName) name reason: (NSString *) reason userInfo: (NSDictionary *) userInfo ;
@end
#pragma clang diagnostic pop