#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSData (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSData (NSDataNSExtendedDataCategoryExports)
-(BOOL) jswriteToFile: (NSString *) path options: (NSDataWritingOptions) writeOptionsMask error: (JSValue *) errorPtr 
{
	NSError* errorPtr_ = nil;
	BOOL resultVal__;
	resultVal__ = [self writeToFile: path options: writeOptionsMask error: &errorPtr_ ];
	if (errorPtr_ && [errorPtr isObject]) {
		errorPtr[@"error"] = errorPtr_;
	}
	return resultVal__;
}
-(BOOL) jswriteToURL: (NSURL *) url options: (NSDataWritingOptions) writeOptionsMask error: (JSValue *) errorPtr 
{
	NSError* errorPtr_ = nil;
	BOOL resultVal__;
	resultVal__ = [self writeToURL: url options: writeOptionsMask error: &errorPtr_ ];
	if (errorPtr_ && [errorPtr isObject]) {
		errorPtr[@"error"] = errorPtr_;
	}
	return resultVal__;
}
@end
@implementation NSData (NSDataNSDataCreationCategoryExports)
-(id) jsinitWithContentsOfFile: (NSString *) path options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr 
{
	NSError* errorPtr_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithContentsOfFile: path options: readOptionsMask error: &errorPtr_ ] autorelease];
	if (errorPtr_ && [errorPtr isObject]) {
		errorPtr[@"error"] = errorPtr_;
	}
	return resultVal__;
}
-(id) jsinitWithData: (NSData *) data 
{
	id resultVal__;
	resultVal__ = [[self initWithData: data ] autorelease];
	return resultVal__;
}
-(id) jsinitWithContentsOfURL: (NSURL *) url 
{
	id resultVal__;
	resultVal__ = [[self initWithContentsOfURL: url ] autorelease];
	return resultVal__;
}
-(id) jsinitWithContentsOfURL: (NSURL *) url options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr 
{
	NSError* errorPtr_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithContentsOfURL: url options: readOptionsMask error: &errorPtr_ ] autorelease];
	if (errorPtr_ && [errorPtr isObject]) {
		errorPtr[@"error"] = errorPtr_;
	}
	return resultVal__;
}
-(id) jsinitWithContentsOfFile: (NSString *) path 
{
	id resultVal__;
	resultVal__ = [[self initWithContentsOfFile: path ] autorelease];
	return resultVal__;
}
+(id) jsdataWithContentsOfURL: (NSURL *) url options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr 
{
	NSError* errorPtr_ = nil;
	id resultVal__;
	resultVal__ = [self dataWithContentsOfURL: url options: readOptionsMask error: &errorPtr_ ];
	if (errorPtr_ && [errorPtr isObject]) {
		errorPtr[@"error"] = errorPtr_;
	}
	return resultVal__;
}
+(id) jsdataWithContentsOfFile: (NSString *) path options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr 
{
	NSError* errorPtr_ = nil;
	id resultVal__;
	resultVal__ = [self dataWithContentsOfFile: path options: readOptionsMask error: &errorPtr_ ];
	if (errorPtr_ && [errorPtr isObject]) {
		errorPtr[@"error"] = errorPtr_;
	}
	return resultVal__;
}
@end
@implementation NSMutableData (NSMutableDataNSMutableDataCreationCategoryExports)
-(id) jsinitWithCapacity: (NSUInteger) capacity 
{
	id resultVal__;
	resultVal__ = [[self initWithCapacity: capacity ] autorelease];
	return resultVal__;
}
-(id) jsinitWithLength: (NSUInteger) length 
{
	id resultVal__;
	resultVal__ = [[self initWithLength: length ] autorelease];
	return resultVal__;
}
@end
@implementation NSData (NSDataNSDeprecatedCategoryExports)
-(id) jsinitWithBase64Encoding: (NSString *) base64String 
{
	id resultVal__;
	resultVal__ = [[self initWithBase64Encoding: base64String ] autorelease];
	return resultVal__;
}
-(id) jsinitWithContentsOfMappedFile: (NSString *) path 
{
	id resultVal__;
	resultVal__ = [[self initWithContentsOfMappedFile: path ] autorelease];
	return resultVal__;
}
@end
@implementation NSData (NSDataNSDataBase64EncodingCategoryExports)
-(id) jsinitWithBase64EncodedData: (NSData *) base64Data options: (NSDataBase64DecodingOptions) options 
{
	id resultVal__;
	resultVal__ = [[self initWithBase64EncodedData: base64Data options: options ] autorelease];
	return resultVal__;
}
-(id) jsinitWithBase64EncodedString: (NSString *) base64String options: (NSDataBase64DecodingOptions) options 
{
	id resultVal__;
	resultVal__ = [[self initWithBase64EncodedString: base64String options: options ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSData class], @protocol(NSDataInstanceExports));
	class_addProtocol([NSData class], @protocol(NSDataClassExports));
	class_addProtocol([NSData class], @protocol(NSDataNSExtendedDataCategoryInstanceExports));
	class_addProtocol([NSData class], @protocol(NSDataNSExtendedDataCategoryClassExports));
	class_addProtocol([NSData class], @protocol(NSDataNSDataCreationCategoryInstanceExports));
	class_addProtocol([NSData class], @protocol(NSDataNSDataCreationCategoryClassExports));
	class_addProtocol([NSMutableData class], @protocol(NSMutableDataNSExtendedMutableDataCategoryInstanceExports));
	class_addProtocol([NSMutableData class], @protocol(NSMutableDataNSExtendedMutableDataCategoryClassExports));
	class_addProtocol([NSMutableData class], @protocol(NSMutableDataNSMutableDataCreationCategoryInstanceExports));
	class_addProtocol([NSMutableData class], @protocol(NSMutableDataNSMutableDataCreationCategoryClassExports));
	class_addProtocol([NSMutableData class], @protocol(NSMutableDataInstanceExports));
	class_addProtocol([NSMutableData class], @protocol(NSMutableDataClassExports));
	class_addProtocol([NSData class], @protocol(NSDataNSDeprecatedCategoryInstanceExports));
	class_addProtocol([NSData class], @protocol(NSDataNSDeprecatedCategoryClassExports));
	class_addProtocol([NSPurgeableData class], @protocol(NSPurgeableDataInstanceExports));
	class_addProtocol([NSPurgeableData class], @protocol(NSPurgeableDataClassExports));
	class_addProtocol([NSData class], @protocol(NSDataNSDataBase64EncodingCategoryInstanceExports));
	class_addProtocol([NSData class], @protocol(NSDataNSDataBase64EncodingCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSDataReadingMappedIfSafe"] = @1U;
	context[@"NSDataReadingUncached"] = @2U;
	context[@"NSDataReadingMappedAlways"] = @8U;
	context[@"NSDataReadingMapped"] = @1U;
	context[@"NSMappedRead"] = @1U;
	context[@"NSUncachedRead"] = @2U;

	context[@"NSDataWritingAtomic"] = @1U;
	context[@"NSDataWritingWithoutOverwriting"] = @2U;
	context[@"NSDataWritingFileProtectionNone"] = @268435456U;
	context[@"NSDataWritingFileProtectionComplete"] = @536870912U;
	context[@"NSDataWritingFileProtectionCompleteUnlessOpen"] = @805306368U;
	context[@"NSDataWritingFileProtectionCompleteUntilFirstUserAuthentication"] = @1073741824U;
	context[@"NSDataWritingFileProtectionMask"] = @-268435456U;
	context[@"NSAtomicWrite"] = @1U;

	context[@"NSDataSearchBackwards"] = @1U;
	context[@"NSDataSearchAnchored"] = @2U;

	context[@"NSDataBase64Encoding64CharacterLineLength"] = @1U;
	context[@"NSDataBase64Encoding76CharacterLineLength"] = @2U;
	context[@"NSDataBase64EncodingEndLineWithCarriageReturn"] = @16U;
	context[@"NSDataBase64EncodingEndLineWithLineFeed"] = @32U;

	context[@"NSDataBase64DecodingIgnoreUnknownCharacters"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSData_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
