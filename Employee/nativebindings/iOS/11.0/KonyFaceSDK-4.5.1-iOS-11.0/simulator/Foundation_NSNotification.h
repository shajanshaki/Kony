#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSNotification_symbols(JSContext*);
@protocol NSNotificationNSNotificationCreationCategoryInstanceExports<JSExport>
-(id) jsinit;
@end
@protocol NSNotificationNSNotificationCreationCategoryClassExports<JSExport>
+(id) notificationWithName: (NSNotificationName) aName object: (id) anObject userInfo: (NSDictionary *) aUserInfo ;
+(id) notificationWithName: (NSNotificationName) aName object: (id) anObject ;
@end
@protocol NSNotificationInstanceExports<JSExport, NSCopyingInstanceExports_, NSCodingInstanceExports_>
@property (readonly,retain) id object;
@property (readonly,copy) NSNotificationName name;
@property (readonly,copy) NSDictionary * userInfo;
JSExportAs(initWithNameObjectUserInfo,
-(id) jsinitWithName: (NSNotificationName) name object: (id) object userInfo: (NSDictionary *) userInfo );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSNotificationClassExports<JSExport, NSCopyingClassExports_, NSCodingClassExports_>
@end
@protocol NSNotificationCenterInstanceExports<JSExport>
-(void) removeObserver: (id) observer ;
-(void) removeObserver: (id) observer name: (NSNotificationName) aName object: (id) anObject ;
JSExportAs(addObserverForNameObjectQueueUsingBlock,
-(id) jsaddObserverForName: (NSNotificationName) name object: (id) obj queue: (NSOperationQueue *) queue usingBlock: (JSValue *) block );
-(void) postNotification: (NSNotification *) notification ;
JSExportAs(addObserverSelectorNameObject,
-(void) jsaddObserver: (id) observer selector: (NSString *) aSelector name: (NSNotificationName) aName object: (id) anObject );
-(void) postNotificationName: (NSNotificationName) aName object: (id) anObject ;
-(void) postNotificationName: (NSNotificationName) aName object: (id) anObject userInfo: (NSDictionary *) aUserInfo ;
@end
@protocol NSNotificationCenterClassExports<JSExport>
+(NSNotificationCenter *) defaultCenter;
@end
#pragma clang diagnostic pop