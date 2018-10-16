#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSCoder (NSCoderNSExtendedCoderCategoryExports)
-(id) jsdecodeObjectOfClass: (JSValue *) aClass forKey: (NSString *) key 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	id resultVal__;
	resultVal__ = [self decodeObjectOfClass: aClass_ forKey: key ];
	return resultVal__;
}
-(id) jsdecodeTopLevelObjectOfClasses: (NSSet *) classes forKey: (NSString *) key error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self decodeTopLevelObjectOfClasses: classes forKey: key error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsdecodeTopLevelObjectForKey: (NSString *) key error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self decodeTopLevelObjectForKey: key error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsdecodeTopLevelObjectOfClass: (JSValue *) aClass forKey: (NSString *) key error: (JSValue *) error 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self decodeTopLevelObjectOfClass: aClass_ forKey: key error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsdecodeTopLevelObjectAndReturnError: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self decodeTopLevelObjectAndReturnError: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSCoder class], @protocol(NSCoderNSDeprecatedCategoryInstanceExports));
	class_addProtocol([NSCoder class], @protocol(NSCoderNSDeprecatedCategoryClassExports));
	class_addProtocol([NSCoder class], @protocol(NSCoderInstanceExports));
	class_addProtocol([NSCoder class], @protocol(NSCoderClassExports));
	class_addProtocol([NSCoder class], @protocol(NSCoderNSExtendedCoderCategoryInstanceExports));
	class_addProtocol([NSCoder class], @protocol(NSCoderNSExtendedCoderCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSDecodingFailurePolicyRaiseException"] = @0;
	context[@"NSDecodingFailurePolicySetErrorAndReturn"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSCoder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
