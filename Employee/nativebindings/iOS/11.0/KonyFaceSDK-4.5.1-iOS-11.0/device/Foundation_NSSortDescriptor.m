#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSSortDescriptor (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithKey: (NSString *) key ascending: (BOOL) ascending selector: (NSString *) selector 
{
	SEL selector_ = NSSelectorFromString(selector);
	id resultVal__;
	resultVal__ = [[self initWithKey: key ascending: ascending selector: selector_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithKey: (NSString *) key ascending: (BOOL) ascending comparator: (JSValue *) cmptr 
{
	NSComparisonResult (^ cmptr_)(id , id ) = nil;
	if (!cmptr.isUndefined) {
		cmptr_ = ^NSComparisonResult(id arg0, id arg1) {
			JSContext* __jsContext = cmptr.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cmptr, self, parameters);
			return [result toInt32];
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithKey: key ascending: ascending comparator: cmptr_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithKey: (NSString *) key ascending: (BOOL) ascending 
{
	id resultVal__;
	resultVal__ = [[self initWithKey: key ascending: ascending ] autorelease];
	return resultVal__;
}
+(id) jssortDescriptorWithKey: (NSString *) key ascending: (BOOL) ascending selector: (NSString *) selector 
{
	SEL selector_ = NSSelectorFromString(selector);
	id resultVal__;
	resultVal__ = [self sortDescriptorWithKey: key ascending: ascending selector: selector_ ];
	return resultVal__;
}
+(id) jssortDescriptorWithKey: (NSString *) key ascending: (BOOL) ascending comparator: (JSValue *) cmptr 
{
	NSComparisonResult (^ cmptr_)(id , id ) = nil;
	if (!cmptr.isUndefined) {
		cmptr_ = ^NSComparisonResult(id arg0, id arg1) {
			JSContext* __jsContext = cmptr.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cmptr, self, parameters);
			return [result toInt32];
		};
	}
	id resultVal__;
	resultVal__ = [self sortDescriptorWithKey: key ascending: ascending comparator: cmptr_ ];
	return resultVal__;
}
-(JSValue *) getJsComparator
{
	return [JSValue valueWithObject: self.comparator inContext: [JSContext currentContext]];
}
-(NSString *) getJsSelector
{
	return NSStringFromSelector(self.selector);
}
@end
static void addProtocols()
{
	class_addProtocol([NSArray class], @protocol(NSArrayNSSortDescriptorSortingCategoryInstanceExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSSortDescriptorSortingCategoryClassExports));
	class_addProtocol([NSOrderedSet class], @protocol(NSOrderedSetNSKeyValueSortingCategoryInstanceExports));
	class_addProtocol([NSOrderedSet class], @protocol(NSOrderedSetNSKeyValueSortingCategoryClassExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSSortDescriptorSortingCategoryInstanceExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSSortDescriptorSortingCategoryClassExports));
	class_addProtocol([NSSortDescriptor class], @protocol(NSSortDescriptorInstanceExports));
	class_addProtocol([NSSortDescriptor class], @protocol(NSSortDescriptorClassExports));
	class_addProtocol([NSMutableArray class], @protocol(NSMutableArrayNSSortDescriptorSortingCategoryInstanceExports));
	class_addProtocol([NSMutableArray class], @protocol(NSMutableArrayNSSortDescriptorSortingCategoryClassExports));
	class_addProtocol([NSMutableOrderedSet class], @protocol(NSMutableOrderedSetNSKeyValueSortingCategoryInstanceExports));
	class_addProtocol([NSMutableOrderedSet class], @protocol(NSMutableOrderedSetNSKeyValueSortingCategoryClassExports));
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
void load_Foundation_NSSortDescriptor_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
