#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSLock_symbols(JSContext*);
@protocol NSConditionInstanceExports<JSExport, NSLockingInstanceExports_>
@property (copy) NSString * name;
-(void) signal;
-(void) broadcast;
-(BOOL) waitUntilDate: (NSDate *) limit ;
-(void) wait;
@end
@protocol NSConditionClassExports<JSExport, NSLockingClassExports_>
@end
@protocol NSRecursiveLockInstanceExports<JSExport, NSLockingInstanceExports_>
@property (copy) NSString * name;
-(BOOL) lockBeforeDate: (NSDate *) limit ;
-(BOOL) tryLock;
@end
@protocol NSRecursiveLockClassExports<JSExport, NSLockingClassExports_>
@end
@protocol NSLockInstanceExports<JSExport, NSLockingInstanceExports_>
@property (copy) NSString * name;
-(BOOL) lockBeforeDate: (NSDate *) limit ;
-(BOOL) tryLock;
@end
@protocol NSLockClassExports<JSExport, NSLockingClassExports_>
@end
@protocol NSConditionLockInstanceExports<JSExport, NSLockingInstanceExports_>
@property (copy) NSString * name;
@property (readonly) NSInteger condition;
-(void) lockWhenCondition: (NSInteger) condition ;
-(BOOL) lockWhenCondition: (NSInteger) condition beforeDate: (NSDate *) limit ;
-(BOOL) lockBeforeDate: (NSDate *) limit ;
JSExportAs(initWithCondition,
-(id) jsinitWithCondition: (NSInteger) condition );
-(BOOL) tryLock;
-(BOOL) tryLockWhenCondition: (NSInteger) condition ;
-(void) unlockWithCondition: (NSInteger) condition ;
@end
@protocol NSConditionLockClassExports<JSExport, NSLockingClassExports_>
@end
@protocol NSLockingInstanceExports_<JSExport>
-(void) lock;
-(void) unlock;
@end
@protocol NSLockingClassExports_<JSExport>
@end
#pragma clang diagnostic pop