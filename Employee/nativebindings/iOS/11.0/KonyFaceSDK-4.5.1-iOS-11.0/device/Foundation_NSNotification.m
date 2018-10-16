#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSNotification (NSNotificationNSNotificationCreationCategoryExports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
@end
@implementation NSNotification (Exports)
-(id) jsinitWithName: (NSNotificationName) name object: (id) object userInfo: (NSDictionary *) userInfo 
{
	id resultVal__;
	resultVal__ = [[self initWithName: name object: object userInfo: userInfo ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSNotificationCenter (Exports)
-(id) jsaddObserverForName: (NSNotificationName) name object: (id) obj queue: (NSOperationQueue *) queue usingBlock: (JSValue *) block 
{
	void (^ block_)(NSNotification * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSNotification * arg0) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self addObserverForName: name object: obj queue: queue usingBlock: block_ ];
	return resultVal__;
}
-(void) jsaddObserver: (id) observer selector: (NSString *) aSelector name: (NSNotificationName) aName object: (id) anObject 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self addObserver: observer selector: aSelector_ name: aName object: anObject ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSNotification class], @protocol(NSNotificationNSNotificationCreationCategoryInstanceExports));
	class_addProtocol([NSNotification class], @protocol(NSNotificationNSNotificationCreationCategoryClassExports));
	class_addProtocol([NSNotification class], @protocol(NSNotificationInstanceExports));
	class_addProtocol([NSNotification class], @protocol(NSNotificationClassExports));
	class_addProtocol([NSNotificationCenter class], @protocol(NSNotificationCenterInstanceExports));
	class_addProtocol([NSNotificationCenter class], @protocol(NSNotificationCenterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSNotification_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
