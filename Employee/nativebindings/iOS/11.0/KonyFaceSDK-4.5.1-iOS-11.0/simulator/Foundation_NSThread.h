#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSThread_symbols(JSContext*);
@protocol NSObjectNSThreadPerformAdditionsCategoryInstanceExports<JSExport>
JSExportAs(performSelectorOnThreadWithObjectWaitUntilDone,
-(void) jsperformSelector: (NSString *) aSelector onThread: (NSThread *) thr withObject: (id) arg waitUntilDone: (BOOL) wait );
JSExportAs(performSelectorOnMainThreadWithObjectWaitUntilDone,
-(void) jsperformSelectorOnMainThread: (NSString *) aSelector withObject: (id) arg waitUntilDone: (BOOL) wait );
JSExportAs(performSelectorInBackgroundWithObject,
-(void) jsperformSelectorInBackground: (NSString *) aSelector withObject: (id) arg );
JSExportAs(performSelectorOnThreadWithObjectWaitUntilDoneModes,
-(void) jsperformSelector: (NSString *) aSelector onThread: (NSThread *) thr withObject: (id) arg waitUntilDone: (BOOL) wait modes: (NSArray *) array );
JSExportAs(performSelectorOnMainThreadWithObjectWaitUntilDoneModes,
-(void) jsperformSelectorOnMainThread: (NSString *) aSelector withObject: (id) arg waitUntilDone: (BOOL) wait modes: (NSArray *) array );
@end
@protocol NSObjectNSThreadPerformAdditionsCategoryClassExports<JSExport>
@end
@protocol NSThreadInstanceExports<JSExport>
@property (copy) NSString * name;
@property (readonly) BOOL isMainThread;
@property () NSQualityOfService qualityOfService;
@property (getter=isExecuting,readonly) BOOL executing;
@property (getter=isFinished,readonly) BOOL finished;
@property () double threadPriority;
@property (getter=isCancelled,readonly) BOOL cancelled;
@property () NSUInteger stackSize;
@property (readonly,retain) NSMutableDictionary * threadDictionary;
JSExportAs(initWithTargetSelectorObject,
-(id) jsinitWithTarget: (id) target selector: (NSString *) selector object: (id) argument );
JSExportAs(initWithBlock,
-(id) jsinitWithBlock: (JSValue *) block );
-(void) start;
-(id) jsinit;
-(void) cancel;
-(void) main;
@end
@protocol NSThreadClassExports<JSExport>
+(BOOL) setThreadPriority: (double) p ;
+(void) sleepForTimeInterval: (NSTimeInterval) ti ;
JSExportAs(detachNewThreadWithBlock,
+(void) jsdetachNewThreadWithBlock: (JSValue *) block );
+(NSThread *) currentThread;
+(BOOL) isMainThread;
+(NSThread *) mainThread;
+(void) sleepUntilDate: (NSDate *) date ;
JSExportAs(detachNewThreadSelectorToTargetWithObject,
+(void) jsdetachNewThreadSelector: (NSString *) selector toTarget: (id) target withObject: (id) argument );
+(NSArray *) callStackReturnAddresses;
+(void) exit;
+(double) threadPriority;
+(NSArray *) callStackSymbols;
+(BOOL) isMultiThreaded;
@end
#pragma clang diagnostic pop