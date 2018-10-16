#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSNumber (Exports)
-(NSNumber *) jsinitWithUnsignedLong: (unsigned long) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithUnsignedLong: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithChar: (char) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithChar: value ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithInt: (int) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithInt: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithShort: (short) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithShort: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithLongLong: (long long) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithLongLong: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithLong: (long) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithLong: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithFloat: (float) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithFloat: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithUnsignedShort: (unsigned short) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithUnsignedShort: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithInteger: (NSInteger) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithInteger: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithBool: (BOOL) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithBool: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithDouble: (double) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithDouble: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithUnsignedInt: (unsigned int) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithUnsignedInt: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithUnsignedLongLong: (unsigned long long) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithUnsignedLongLong: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithUnsignedChar: (unsigned char) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithUnsignedChar: value ] autorelease];
	return resultVal__;
}
-(NSNumber *) jsinitWithUnsignedInteger: (NSUInteger) value 
{
	NSNumber * resultVal__;
	resultVal__ = [[self initWithUnsignedInteger: value ] autorelease];
	return resultVal__;
}
@end
@implementation NSValue (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSNumber class], @protocol(NSNumberNSNumberCreationCategoryInstanceExports));
	class_addProtocol([NSNumber class], @protocol(NSNumberNSNumberCreationCategoryClassExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSValueExtensionMethodsCategoryInstanceExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSValueExtensionMethodsCategoryClassExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSDeprecatedCategoryInstanceExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSDeprecatedCategoryClassExports));
	class_addProtocol([NSNumber class], @protocol(NSNumberInstanceExports));
	class_addProtocol([NSNumber class], @protocol(NSNumberClassExports));
	class_addProtocol([NSValue class], @protocol(NSValueInstanceExports));
	class_addProtocol([NSValue class], @protocol(NSValueClassExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSValueCreationCategoryInstanceExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSValueCreationCategoryClassExports));
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
void load_Foundation_NSValue_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
