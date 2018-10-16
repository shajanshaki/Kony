#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSObject (Exports)
-(id) jsforwardingTargetForSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self forwardingTargetForSelector: aSelector_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(id) jsmutableCopy
{
	id resultVal__;
	resultVal__ = [[self mutableCopy] autorelease];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(NSMethodSignature *) jsmethodSignatureForSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	NSMethodSignature * resultVal__;
	resultVal__ = [self methodSignatureForSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(void) jsdoesNotRecognizeSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self doesNotRecognizeSelector: aSelector_ ];
}
-(id) jscopy
{
	id resultVal__;
	resultVal__ = [[self copy] autorelease];
	return resultVal__;
}
+(BOOL) jsinstancesRespondToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self instancesRespondToSelector: aSelector_ ];
	return resultVal__;
}
+(BOOL) jsresolveInstanceMethod: (NSString *) sel 
{
	SEL sel_ = NSSelectorFromString(sel);
	BOOL resultVal__;
	resultVal__ = [self resolveInstanceMethod: sel_ ];
	return resultVal__;
}
+(BOOL) jsresolveClassMethod: (NSString *) sel 
{
	SEL sel_ = NSSelectorFromString(sel);
	BOOL resultVal__;
	resultVal__ = [self resolveClassMethod: sel_ ];
	return resultVal__;
}
+(BOOL) jsisSubclassOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isSubclassOfClass: aClass_ ];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
+(NSMethodSignature *) jsinstanceMethodSignatureForSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	NSMethodSignature * resultVal__;
	resultVal__ = [self instanceMethodSignatureForSelector: aSelector_ ];
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation NSObject (NSObjectNSCoderMethodsCategoryExports)
-(JSValue *) getJsClassForCoder
{
	return [JSValue valueWithObject: self.classForCoder inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([NSObject class], @protocol(NSObjectNSDiscardableContentProxyCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSDiscardableContentProxyCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSCoderMethodsCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSCoderMethodsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
	context[@"NSDeallocateObject"] = ^void(id arg0) {
		NSDeallocateObject(arg0);
	};
	context[@"CFBridgingRetain"] = ^id(id arg0) {
		return CFBridgingRetain(arg0);
	};
	context[@"NSIncrementExtraRefCount"] = ^void(id arg0) {
		NSIncrementExtraRefCount(arg0);
	};
	context[@"CFBridgingRelease"] = ^id(id arg0) {
		return CFBridgingRelease(arg0);
	};
	context[@"NSDecrementExtraRefCountWasZero"] = ^BOOL(id arg0) {
		return NSDecrementExtraRefCountWasZero(arg0);
	};
	context[@"NSExtraRefCount"] = ^NSUInteger(id arg0) {
		return NSExtraRefCount(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Foundation_NSObjectProtocols()
{
	(void)@protocol(NSCopying);
	(void)@protocol(NSObject);
	(void)@protocol(NSSecureCoding);
	(void)@protocol(NSMutableCopying);
	(void)@protocol(NSCoding);
	(void)@protocol(NSDiscardableContent);
}
void load_Foundation_NSObject_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
