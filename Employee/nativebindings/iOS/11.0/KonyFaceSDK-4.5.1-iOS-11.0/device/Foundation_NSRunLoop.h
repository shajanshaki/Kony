#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSRunLoop_symbols(JSContext*);
@protocol NSRunLoopNSOrderedPerformCategoryInstanceExports<JSExport>
JSExportAs(performSelectorTargetArgumentOrderModes,
-(void) jsperformSelector: (NSString *) aSelector target: (id) target argument: (id) arg order: (NSUInteger) order modes: (NSArray *) modes );
-(void) cancelPerformSelectorsWithTarget: (id) target ;
JSExportAs(cancelPerformSelectorTargetArgument,
-(void) jscancelPerformSelector: (NSString *) aSelector target: (id) target argument: (id) arg );
@end
@protocol NSRunLoopNSOrderedPerformCategoryClassExports<JSExport>
@end
@protocol NSRunLoopInstanceExports<JSExport>
@property (readonly,copy) NSRunLoopMode currentMode;
-(NSDate *) limitDateForMode: (NSRunLoopMode) mode ;
-(id) getCFRunLoop;
-(void) addTimer: (NSTimer *) timer forMode: (NSRunLoopMode) mode ;
-(void) addPort: (NSPort *) aPort forMode: (NSRunLoopMode) mode ;
-(void) acceptInputForMode: (NSRunLoopMode) mode beforeDate: (NSDate *) limitDate ;
-(void) removePort: (NSPort *) aPort forMode: (NSRunLoopMode) mode ;
@end
@protocol NSRunLoopClassExports<JSExport>
+(NSRunLoop *) mainRunLoop;
+(NSRunLoop *) currentRunLoop;
@end
@protocol NSRunLoopNSRunLoopConveniencesCategoryInstanceExports<JSExport>
-(void) runUntilDate: (NSDate *) limitDate ;
-(void) run;
JSExportAs(performInModesBlock,
-(void) jsperformInModes: (NSArray *) modes block: (JSValue *) block );
-(BOOL) runMode: (NSRunLoopMode) mode beforeDate: (NSDate *) limitDate ;
JSExportAs(performBlock,
-(void) jsperformBlock: (JSValue *) block );
@end
@protocol NSRunLoopNSRunLoopConveniencesCategoryClassExports<JSExport>
@end
@protocol NSObjectNSDelayedPerformingCategoryInstanceExports<JSExport>
JSExportAs(performSelectorWithObjectAfterDelay,
-(void) jsperformSelector: (NSString *) aSelector withObject: (id) anArgument afterDelay: (NSTimeInterval) delay );
JSExportAs(performSelectorWithObjectAfterDelayInModes,
-(void) jsperformSelector: (NSString *) aSelector withObject: (id) anArgument afterDelay: (NSTimeInterval) delay inModes: (NSArray *) modes );
@end
@protocol NSObjectNSDelayedPerformingCategoryClassExports<JSExport>
+(void) cancelPreviousPerformRequestsWithTarget: (id) aTarget ;
JSExportAs(cancelPreviousPerformRequestsWithTargetSelectorObject,
+(void) jscancelPreviousPerformRequestsWithTarget: (id) aTarget selector: (NSString *) aSelector object: (id) anArgument );
@end
#pragma clang diagnostic pop