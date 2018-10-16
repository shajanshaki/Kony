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
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyValueCodingCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyValueCodingCategoryClassExports));
	class_addProtocol([NSOrderedSet class], @protocol(NSOrderedSetNSKeyValueCodingCategoryInstanceExports));
	class_addProtocol([NSOrderedSet class], @protocol(NSOrderedSetNSKeyValueCodingCategoryClassExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSKeyValueCodingCategoryInstanceExports));
	class_addProtocol([NSDictionary class], @protocol(NSDictionaryNSKeyValueCodingCategoryClassExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSKeyValueCodingCategoryInstanceExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSKeyValueCodingCategoryClassExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSKeyValueCodingCategoryInstanceExports));
	class_addProtocol([NSSet class], @protocol(NSSetNSKeyValueCodingCategoryClassExports));
	class_addProtocol([NSMutableDictionary class], @protocol(NSMutableDictionaryNSKeyValueCodingCategoryInstanceExports));
	class_addProtocol([NSMutableDictionary class], @protocol(NSMutableDictionaryNSKeyValueCodingCategoryClassExports));
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
	p = (void*) &NSMinimumKeyValueOperator;
	if (p != NULL) context[@"NSMinimumKeyValueOperator"] = NSMinimumKeyValueOperator;
	p = (void*) &NSUnionOfObjectsKeyValueOperator;
	if (p != NULL) context[@"NSUnionOfObjectsKeyValueOperator"] = NSUnionOfObjectsKeyValueOperator;
	p = (void*) &NSUnionOfArraysKeyValueOperator;
	if (p != NULL) context[@"NSUnionOfArraysKeyValueOperator"] = NSUnionOfArraysKeyValueOperator;
	p = (void*) &NSCountKeyValueOperator;
	if (p != NULL) context[@"NSCountKeyValueOperator"] = NSCountKeyValueOperator;
	p = (void*) &NSMaximumKeyValueOperator;
	if (p != NULL) context[@"NSMaximumKeyValueOperator"] = NSMaximumKeyValueOperator;
	p = (void*) &NSUndefinedKeyException;
	if (p != NULL) context[@"NSUndefinedKeyException"] = NSUndefinedKeyException;
	p = (void*) &NSDistinctUnionOfSetsKeyValueOperator;
	if (p != NULL) context[@"NSDistinctUnionOfSetsKeyValueOperator"] = NSDistinctUnionOfSetsKeyValueOperator;
	p = (void*) &NSDistinctUnionOfObjectsKeyValueOperator;
	if (p != NULL) context[@"NSDistinctUnionOfObjectsKeyValueOperator"] = NSDistinctUnionOfObjectsKeyValueOperator;
	p = (void*) &NSDistinctUnionOfArraysKeyValueOperator;
	if (p != NULL) context[@"NSDistinctUnionOfArraysKeyValueOperator"] = NSDistinctUnionOfArraysKeyValueOperator;
	p = (void*) &NSSumKeyValueOperator;
	if (p != NULL) context[@"NSSumKeyValueOperator"] = NSSumKeyValueOperator;
	p = (void*) &NSAverageKeyValueOperator;
	if (p != NULL) context[@"NSAverageKeyValueOperator"] = NSAverageKeyValueOperator;
	p = (void*) &NSUnionOfSetsKeyValueOperator;
	if (p != NULL) context[@"NSUnionOfSetsKeyValueOperator"] = NSUnionOfSetsKeyValueOperator;
}
void load_Foundation_NSKeyValueCoding_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
