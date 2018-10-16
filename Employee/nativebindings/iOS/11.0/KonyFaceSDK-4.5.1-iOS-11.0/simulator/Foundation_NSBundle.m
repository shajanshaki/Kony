#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSBundleResourceRequest (Exports)
-(id) jsinitWithTags: (NSSet *) tags 
{
	id resultVal__;
	resultVal__ = [[self initWithTags: tags ] autorelease];
	return resultVal__;
}
-(id) jsinitWithTags: (NSSet *) tags bundle: (NSBundle *) bundle 
{
	id resultVal__;
	resultVal__ = [[self initWithTags: tags bundle: bundle ] autorelease];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(void) jsconditionallyBeginAccessingResourcesWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(BOOL) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(BOOL arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self conditionallyBeginAccessingResourcesWithCompletionHandler: completionHandler_ ];
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(void) jsbeginAccessingResourcesWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSError * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self beginAccessingResourcesWithCompletionHandler: completionHandler_ ];
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation NSBundle (Exports)
-(id) jsinitWithURL: (NSURL *) url 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: url ] autorelease];
	return resultVal__;
}
-(id) jsinitWithPath: (NSString *) path 
{
	id resultVal__;
	resultVal__ = [[self initWithPath: path ] autorelease];
	return resultVal__;
}
-(BOOL) jspreflightAndReturnError: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self preflightAndReturnError: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(BOOL) jsloadAndReturnError: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self loadAndReturnError: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(NSBundle *) jsbundleForClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	NSBundle * resultVal__;
	resultVal__ = [self bundleForClass: aClass_ ];
	return resultVal__;
}
-(JSValue *) getJsPrincipalClass
{
	return [JSValue valueWithObject: self.principalClass inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([NSBundleResourceRequest class], @protocol(NSBundleResourceRequestInstanceExports));
	class_addProtocol([NSBundleResourceRequest class], @protocol(NSBundleResourceRequestClassExports));
	class_addProtocol([NSBundle class], @protocol(NSBundleInstanceExports));
	class_addProtocol([NSBundle class], @protocol(NSBundleClassExports));
	class_addProtocol([NSBundle class], @protocol(NSBundleNSBundleResourceRequestAdditionsCategoryInstanceExports));
	class_addProtocol([NSBundle class], @protocol(NSBundleNSBundleResourceRequestAdditionsCategoryClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSBundleExtensionMethodsCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSBundleExtensionMethodsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSBundleExecutableArchitectureI386"] = @7;
	context[@"NSBundleExecutableArchitecturePPC"] = @18;
	context[@"NSBundleExecutableArchitectureX86_64"] = @16777223;
	context[@"NSBundleExecutableArchitecturePPC64"] = @16777234;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSBundleResourceRequestLoadingPriorityUrgent;
	if (p != NULL) context[@"NSBundleResourceRequestLoadingPriorityUrgent"] = @(NSBundleResourceRequestLoadingPriorityUrgent);
	p = (void*) &NSLoadedClasses;
	if (p != NULL) context[@"NSLoadedClasses"] = NSLoadedClasses;
	p = (void*) &NSBundleResourceRequestLowDiskSpaceNotification;
	if (p != NULL) context[@"NSBundleResourceRequestLowDiskSpaceNotification"] = NSBundleResourceRequestLowDiskSpaceNotification;
	p = (void*) &NSBundleDidLoadNotification;
	if (p != NULL) context[@"NSBundleDidLoadNotification"] = NSBundleDidLoadNotification;
}
void load_Foundation_NSBundle_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
