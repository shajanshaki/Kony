#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_KonyFaceSDK_KonyFaceID_symbols(JSContext*);
@protocol KonyFaceIDInstanceExports<JSExport>
JSExportAs(initializeSDKWithConfig,
-(BOOL) jsinitializeSDKWithConfig: (NSDictionary *) configuration );
JSExportAs(unEnrollWithSuccessCallbackErrorCallback,
-(void) jsunEnrollWithSuccessCallback: (JSValue *) onSuccess errorCallback: (JSValue *) onError );
-(void) cancelVerification;
-(void) cancelEnrollment;
-(void) uninitialize;
JSExportAs(initializeWithSuccessCallbackErrorCallback,
-(void) jsinitializeWithSuccessCallback: (JSValue *) onSuccess errorCallback: (JSValue *) onError );
-(BOOL) isConfigured;
-(BOOL) isInitialized;
JSExportAs(enrollWithSuccessCallbackErrorCallback,
-(void) jsenrollWithSuccessCallback: (JSValue *) onSuccess errorCallback: (JSValue *) onError );
JSExportAs(verifyWithSuccessCallbackErrorCallback,
-(void) jsverifyWithSuccessCallback: (JSValue *) onSuccess errorCallback: (JSValue *) onError );
@end
@protocol KonyFaceIDClassExports<JSExport>
@end
#pragma clang diagnostic pop