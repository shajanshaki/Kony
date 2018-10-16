#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSNotificationQueue_symbols(JSContext*);
@protocol NSNotificationQueueInstanceExports<JSExport>
-(void) enqueueNotification: (NSNotification *) notification postingStyle: (NSPostingStyle) postingStyle coalesceMask: (NSNotificationCoalescing) coalesceMask forModes: (NSArray *) modes ;
JSExportAs(initWithNotificationCenter,
-(id) jsinitWithNotificationCenter: (NSNotificationCenter *) notificationCenter );
-(void) dequeueNotificationsMatching: (NSNotification *) notification coalesceMask: (NSUInteger) coalesceMask ;
-(void) enqueueNotification: (NSNotification *) notification postingStyle: (NSPostingStyle) postingStyle ;
@end
@protocol NSNotificationQueueClassExports<JSExport>
+(NSNotificationQueue *) defaultQueue;
@end
#pragma clang diagnostic pop