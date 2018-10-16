#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([NSArray class], @protocol(NSArrayNSKeyValueObserverRegistrationCategoryInstanceExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSKeyValueObserverRegistrationCategoryClassExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSKeyValueObserverRegistrationCategoryInstanceExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSKeyValueObserverRegistrationCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyValueObservingCustomizationCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyValueObservingCustomizationCategoryClassExports));
	class_addProtocol([NSOrderedSet class], @protocol(NSOrderedSetNSKeyValueObserverRegistrationCategoryInstanceExports));
	class_addProtocol([NSOrderedSet class], @protocol(NSOrderedSetNSKeyValueObserverRegistrationCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyValueObserverNotificationCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyValueObserverNotificationCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyValueObservingCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyValueObservingCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyValueObserverRegistrationCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyValueObserverRegistrationCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSKeyValueObservingOptionNew"] = @1UL;
	context[@"NSKeyValueObservingOptionOld"] = @2UL;
	context[@"NSKeyValueObservingOptionInitial"] = @4UL;
	context[@"NSKeyValueObservingOptionPrior"] = @8UL;

	context[@"NSKeyValueChangeSetting"] = @1UL;
	context[@"NSKeyValueChangeInsertion"] = @2UL;
	context[@"NSKeyValueChangeRemoval"] = @3UL;
	context[@"NSKeyValueChangeReplacement"] = @4UL;

	context[@"NSKeyValueUnionSetMutation"] = @1UL;
	context[@"NSKeyValueMinusSetMutation"] = @2UL;
	context[@"NSKeyValueIntersectSetMutation"] = @3UL;
	context[@"NSKeyValueSetSetMutation"] = @4UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSKeyValueChangeNewKey;
	if (p != NULL) context[@"NSKeyValueChangeNewKey"] = NSKeyValueChangeNewKey;
	p = (void*) &NSKeyValueChangeKindKey;
	if (p != NULL) context[@"NSKeyValueChangeKindKey"] = NSKeyValueChangeKindKey;
	p = (void*) &NSKeyValueChangeNotificationIsPriorKey;
	if (p != NULL) context[@"NSKeyValueChangeNotificationIsPriorKey"] = NSKeyValueChangeNotificationIsPriorKey;
	p = (void*) &NSKeyValueChangeIndexesKey;
	if (p != NULL) context[@"NSKeyValueChangeIndexesKey"] = NSKeyValueChangeIndexesKey;
	p = (void*) &NSKeyValueChangeOldKey;
	if (p != NULL) context[@"NSKeyValueChangeOldKey"] = NSKeyValueChangeOldKey;
}
void load_Foundation_NSKeyValueObserving_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
