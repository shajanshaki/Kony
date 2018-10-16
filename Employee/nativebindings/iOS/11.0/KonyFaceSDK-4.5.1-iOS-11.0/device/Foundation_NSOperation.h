#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSOperation_symbols(JSContext*);
@protocol NSInvocationOperationInstanceExports<JSExport>
@property (readonly,retain) NSInvocation * invocation;
@property (readonly,retain) id result;
JSExportAs(initWithInvocation,
-(id) jsinitWithInvocation: (NSInvocation *) inv );
JSExportAs(initWithTargetSelectorObject,
-(id) jsinitWithTarget: (id) target selector: (NSString *) sel object: (id) arg );
@end
@protocol NSInvocationOperationClassExports<JSExport>
@end
@protocol NSBlockOperationInstanceExports<JSExport>
@property (readonly,copy) NSArray * executionBlocks;
JSExportAs(addExecutionBlock,
-(void) jsaddExecutionBlock: (JSValue *) block );
@end
@protocol NSBlockOperationClassExports<JSExport>
JSExportAs(blockOperationWithBlock,
+(id) jsblockOperationWithBlock: (JSValue *) block );
@end
@protocol NSOperationInstanceExports<JSExport>
@property (getter=isReady,readonly) BOOL ready;
@property (copy) NSString * name;
@property (getter=getJsCompletionBlock,setter=setJsCompletionBlock:) JSValue* jscompletionBlock;
@property (getter=isConcurrent,readonly) BOOL concurrent;
@property () NSQualityOfService qualityOfService;
@property () NSOperationQueuePriority queuePriority;
@property (getter=isExecuting,readonly) BOOL executing;
@property (getter=isFinished,readonly) BOOL finished;
@property (readonly,copy) NSArray * dependencies;
@property (getter=isAsynchronous,readonly) BOOL asynchronous;
@property () double threadPriority;
@property (getter=isCancelled,readonly) BOOL cancelled;
-(void) cancel;
-(void) waitUntilFinished;
-(void) start;
-(void) main;
-(void) addDependency: (NSOperation *) op ;
-(void) removeDependency: (NSOperation *) op ;
@end
@protocol NSOperationClassExports<JSExport>
@end
@protocol NSOperationQueueInstanceExports<JSExport>
@property (readonly,copy) NSArray * operations;
@property (copy) NSString * name;
@property () NSQualityOfService qualityOfService;
@property (readonly) NSUInteger operationCount;
@property (getter=isSuspended) BOOL suspended;
@property () NSInteger maxConcurrentOperationCount;
-(void) cancelAllOperations;
-(void) waitUntilAllOperationsAreFinished;
JSExportAs(addOperationWithBlock,
-(void) jsaddOperationWithBlock: (JSValue *) block );
-(void) addOperation: (NSOperation *) op ;
-(void) addOperations: (NSArray *) ops waitUntilFinished: (BOOL) wait ;
@end
@protocol NSOperationQueueClassExports<JSExport>
+(NSOperationQueue *) mainQueue;
+(NSOperationQueue *) currentQueue;
@end
#pragma clang diagnostic pop