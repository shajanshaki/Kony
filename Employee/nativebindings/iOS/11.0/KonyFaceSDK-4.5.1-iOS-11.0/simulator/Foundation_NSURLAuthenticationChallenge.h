#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLAuthenticationChallenge_symbols(JSContext*);
@protocol NSURLAuthenticationChallengeInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSURLProtectionSpace * protectionSpace;
@property (readonly,retain) id sender;
@property (readonly,copy) NSURLResponse * failureResponse;
@property (readonly,copy) NSError * error;
@property (readonly) NSInteger previousFailureCount;
@property (readonly,copy) NSURLCredential * proposedCredential;
JSExportAs(initWithProtectionSpaceProposedCredentialPreviousFailureCountFailureResponseErrorSender,
-(id) jsinitWithProtectionSpace: (NSURLProtectionSpace *) space proposedCredential: (NSURLCredential *) credential previousFailureCount: (NSInteger) previousFailureCount failureResponse: (NSURLResponse *) response error: (NSError *) error sender: (id) sender );
JSExportAs(initWithAuthenticationChallengeSender,
-(id) jsinitWithAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge sender: (id) sender );
@end
@protocol NSURLAuthenticationChallengeClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol NSURLAuthenticationChallengeSenderInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) performDefaultHandlingForAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
-(void) rejectProtectionSpaceAndContinueWithChallenge: (NSURLAuthenticationChallenge *) challenge ;
-(void) cancelAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
-(void) continueWithoutCredentialForAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
-(void) useCredential: (NSURLCredential *) credential forAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
@end
@protocol NSURLAuthenticationChallengeSenderClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop