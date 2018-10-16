#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSObject_symbols(JSContext*);
@protocol NSObjectNSDiscardableContentProxyCategoryInstanceExports<JSExport>
@property (readonly,retain) id autoContentAccessingProxy;
@end
@protocol NSObjectNSDiscardableContentProxyCategoryClassExports<JSExport>
@end
@protocol NSObjectInstanceExports<JSExport, NSObjectInstanceExports_>
JSExportAs(forwardingTargetForSelector,
-(id) jsforwardingTargetForSelector: (NSString *) aSelector );
-(void) finalize;
-(id) jsmutableCopy;
JSExportAs(methodSignatureForSelector,
-(NSMethodSignature *) jsmethodSignatureForSelector: (NSString *) aSelector );
-(id) jsinit;
-(void) forwardInvocation: (NSInvocation *) anInvocation ;
-(void) dealloc;
JSExportAs(doesNotRecognizeSelector,
-(void) jsdoesNotRecognizeSelector: (NSString *) aSelector );
-(id) jscopy;
@end
@protocol NSObjectClassExports<JSExport, NSObjectClassExports_>
+(void) load;
+(id) alloc;
+(NSUInteger) hash;
+(NSString *) description;
JSExportAs(instancesRespondToSelector,
+(BOOL) jsinstancesRespondToSelector: (NSString *) aSelector );
+(NSString *) debugDescription;
+(BOOL) conformsToProtocol: (Protocol *) protocol ;
+(id) superclass;
JSExportAs(resolveInstanceMethod,
+(BOOL) jsresolveInstanceMethod: (NSString *) sel );
JSExportAs(resolveClassMethod,
+(BOOL) jsresolveClassMethod: (NSString *) sel );
JSExportAs(isSubclassOfClass,
+(BOOL) jsisSubclassOfClass: (JSValue *) aClass );
+(void) initialize;
+(id) jsnew;
+(id) class;
JSExportAs(instanceMethodSignatureForSelector,
+(NSMethodSignature *) jsinstanceMethodSignatureForSelector: (NSString *) aSelector );
@end
@protocol NSObjectNSCoderMethodsCategoryInstanceExports<JSExport>
@property (readonly,getter=getJsClassForCoder) JSValue* jsclassForCoder;
-(id) replacementObjectForCoder: (NSCoder *) aCoder ;
-(id) awakeAfterUsingCoder: (NSCoder *) aDecoder ;
@end
@protocol NSObjectNSCoderMethodsCategoryClassExports<JSExport>
+(NSInteger) version;
+(void) setVersion: (NSInteger) aVersion ;
@end
@protocol NSCopyingInstanceExports_<JSExport>
@end
@protocol NSCopyingClassExports_<JSExport>
@end
@protocol NSObjectInstanceExports_<JSExport>
@property (readonly,copy) NSString * debugDescription;
@property (readonly) NSUInteger hash;
@property (readonly,getter=getJsSuperclass) JSValue* jssuperclass;
@property (readonly,copy) NSString * description;
JSExportAs(performSelectorWithObjectWithObject,
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 );
JSExportAs(performSelectorWithObject,
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object );
-(NSUInteger) retainCount;
JSExportAs(respondsToSelector,
-(BOOL) jsrespondsToSelector: (NSString *) aSelector );
JSExportAs(isKindOfClass,
-(BOOL) jsisKindOfClass: (JSValue *) aClass );
-(id) self;
-(BOOL) isEqual: (id) object ;
JSExportAs(performSelector,
-(id) jsperformSelector: (NSString *) aSelector );
-(BOOL) conformsToProtocol: (Protocol *) aProtocol ;
JSExportAs(isMemberOfClass,
-(BOOL) jsisMemberOfClass: (JSValue *) aClass );
-(void) release;
-(id) retain;
-(id) autorelease;
-(id) class;
-(BOOL) isProxy;
@end
@protocol NSObjectClassExports_<JSExport>
@end
@protocol NSSecureCodingInstanceExports_<JSExport, NSCodingInstanceExports_>
@end
@protocol NSSecureCodingClassExports_<JSExport, NSCodingClassExports_>
+(BOOL) supportsSecureCoding;
@end
@protocol NSMutableCopyingInstanceExports_<JSExport>
@end
@protocol NSMutableCopyingClassExports_<JSExport>
@end
@protocol NSCodingInstanceExports_<JSExport>
-(void) encodeWithCoder: (NSCoder *) aCoder ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSCodingClassExports_<JSExport>
@end
@protocol NSDiscardableContentInstanceExports_<JSExport>
-(BOOL) isContentDiscarded;
-(void) endContentAccess;
-(void) discardContentIfPossible;
-(BOOL) beginContentAccess;
@end
@protocol NSDiscardableContentClassExports_<JSExport>
@end
#pragma clang diagnostic pop