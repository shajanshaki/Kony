#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSUserActivity_symbols(JSContext*);
@protocol NSUserActivityInstanceExports<JSExport>
@property (assign) BOOL needsSave;
@property () BOOL supportsContinuationStreams;
@property (weak) id delegate;
@property (copy) NSString * title;
@property (copy) NSURL * webpageURL;
@property (getter=isEligibleForPublicIndexing) BOOL eligibleForPublicIndexing;
@property (readonly,copy) NSString * activityType;
@property (getter=isEligibleForHandoff) BOOL eligibleForHandoff;
@property (copy) NSDictionary * userInfo;
@property (copy) NSURL * referrerURL;
@property (copy) NSSet * keywords;
@property (copy) NSSet * requiredUserInfoKeys;
@property (getter=isEligibleForSearch) BOOL eligibleForSearch;
@property (copy) NSDate * expirationDate;
-(void) invalidate;
-(void) resignCurrent;
JSExportAs(getContinuationStreamsWithCompletionHandler,
-(void) jsgetContinuationStreamsWithCompletionHandler: (JSValue *) completionHandler );
-(id) jsinit;
-(void) addUserInfoEntriesFromDictionary: (NSDictionary *) otherDictionary ;
JSExportAs(initWithActivityType,
-(id) jsinitWithActivityType: (NSString *) activityType );
-(void) becomeCurrent;
@end
@protocol NSUserActivityClassExports<JSExport>
@end
@protocol NSUserActivityDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) userActivityWillSave: (NSUserActivity *) userActivity ;
-(void) userActivityWasContinued: (NSUserActivity *) userActivity ;
-(void) userActivity: (NSUserActivity *) userActivity didReceiveInputStream: (NSInputStream *) inputStream outputStream: (NSOutputStream *) outputStream ;
@end
@protocol NSUserActivityDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop