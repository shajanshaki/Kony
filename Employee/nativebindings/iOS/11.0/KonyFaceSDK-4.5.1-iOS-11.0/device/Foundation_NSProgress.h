#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSProgress_symbols(JSContext*);
@protocol NSProgressInstanceExports<JSExport>
@property (copy) NSString * localizedDescription;
@property (getter=isPaused,readonly) BOOL paused;
@property (readonly) double fractionCompleted;
@property (copy) NSProgressFileOperationKind fileOperationKind;
@property (copy) NSNumber * estimatedTimeRemaining;
@property (getter=isIndeterminate,readonly) BOOL indeterminate;
@property (getter=getJsCancellationHandler,setter=setJsCancellationHandler:) JSValue* jscancellationHandler;
@property (copy) NSURL * fileURL;
@property (copy) NSNumber * fileCompletedCount;
@property (getter=isPausable) BOOL pausable;
@property () int64_t totalUnitCount;
@property (getter=isFinished,readonly) BOOL finished;
@property (copy) NSNumber * fileTotalCount;
@property () int64_t completedUnitCount;
@property (readonly,copy) NSDictionary * userInfo;
@property (copy) NSProgressKind kind;
@property (getter=getJsResumingHandler,setter=setJsResumingHandler:) JSValue* jsresumingHandler;
@property (getter=isCancellable) BOOL cancellable;
@property (copy) NSString * localizedAdditionalDescription;
@property (getter=getJsPausingHandler,setter=setJsPausingHandler:) JSValue* jspausingHandler;
@property (copy) NSNumber * throughput;
@property (getter=isCancelled,readonly) BOOL cancelled;
-(void) becomeCurrentWithPendingUnitCount: (int64_t) unitCount ;
-(void) setUserInfoObject: (id) objectOrNil forKey: (NSProgressUserInfoKey) key ;
-(void) cancel;
-(void) pause;
-(void) resume;
JSExportAs(initWithParentUserInfo,
-(id) jsinitWithParent: (NSProgress *) parentProgressOrNil userInfo: (NSDictionary *) userInfoOrNil );
-(void) addChild: (NSProgress *) child withPendingUnitCount: (int64_t) inUnitCount ;
JSExportAs(performAsCurrentWithPendingUnitCountUsingBlock,
-(void) jsperformAsCurrentWithPendingUnitCount: (int64_t) unitCount usingBlock: (JSValue *) work );
-(void) resignCurrent;
@end
@protocol NSProgressClassExports<JSExport>
+(NSProgress *) progressWithTotalUnitCount: (int64_t) unitCount ;
+(NSProgress *) currentProgress;
+(NSProgress *) discreteProgressWithTotalUnitCount: (int64_t) unitCount ;
+(NSProgress *) progressWithTotalUnitCount: (int64_t) unitCount parent: (NSProgress *) parent pendingUnitCount: (int64_t) portionOfParentTotalUnitCount ;
@end
@protocol NSProgressReportingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) NSProgress * progress;
@end
@protocol NSProgressReportingClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop