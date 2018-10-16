#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSError (Exports)
-(id) jsinitWithDomain: (NSErrorDomain) domain code: (NSInteger) code userInfo: (NSDictionary *) dict 
{
	id resultVal__;
	resultVal__ = [[self initWithDomain: domain code: code userInfo: dict ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
+(void) jssetUserInfoValueProviderForDomain: (NSErrorDomain) errorDomain provider: (JSValue *) provider 
{
	id   (^ provider_)(NSError * , NSErrorUserInfoKey ) = nil;
	if (!provider.isUndefined) {
		provider_ = ^id(NSError * arg0, NSErrorUserInfoKey arg1) {
			JSContext* __jsContext = provider.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, provider, self, parameters);
			return [result toObject];
		};
	}
	[self setUserInfoValueProviderForDomain: errorDomain provider: provider_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSObject class], @protocol(NSObjectNSErrorRecoveryAttemptingCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSErrorRecoveryAttemptingCategoryClassExports));
	class_addProtocol([NSError class], @protocol(NSErrorInstanceExports));
	class_addProtocol([NSError class], @protocol(NSErrorClassExports));
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
	p = (void*) &NSCocoaErrorDomain;
	if (p != NULL) context[@"NSCocoaErrorDomain"] = NSCocoaErrorDomain;
	p = (void*) &NSPOSIXErrorDomain;
	if (p != NULL) context[@"NSPOSIXErrorDomain"] = NSPOSIXErrorDomain;
	p = (void*) &NSLocalizedDescriptionKey;
	if (p != NULL) context[@"NSLocalizedDescriptionKey"] = NSLocalizedDescriptionKey;
	p = (void*) &NSLocalizedFailureErrorKey;
	if (p != NULL) context[@"NSLocalizedFailureErrorKey"] = NSLocalizedFailureErrorKey;
	p = (void*) &NSHelpAnchorErrorKey;
	if (p != NULL) context[@"NSHelpAnchorErrorKey"] = NSHelpAnchorErrorKey;
	p = (void*) &NSURLErrorKey;
	if (p != NULL) context[@"NSURLErrorKey"] = NSURLErrorKey;
	p = (void*) &NSDebugDescriptionErrorKey;
	if (p != NULL) context[@"NSDebugDescriptionErrorKey"] = NSDebugDescriptionErrorKey;
	p = (void*) &NSLocalizedFailureReasonErrorKey;
	if (p != NULL) context[@"NSLocalizedFailureReasonErrorKey"] = NSLocalizedFailureReasonErrorKey;
	p = (void*) &NSFilePathErrorKey;
	if (p != NULL) context[@"NSFilePathErrorKey"] = NSFilePathErrorKey;
	p = (void*) &NSStringEncodingErrorKey;
	if (p != NULL) context[@"NSStringEncodingErrorKey"] = NSStringEncodingErrorKey;
	p = (void*) &NSLocalizedRecoveryOptionsErrorKey;
	if (p != NULL) context[@"NSLocalizedRecoveryOptionsErrorKey"] = NSLocalizedRecoveryOptionsErrorKey;
	p = (void*) &NSRecoveryAttempterErrorKey;
	if (p != NULL) context[@"NSRecoveryAttempterErrorKey"] = NSRecoveryAttempterErrorKey;
	p = (void*) &NSMachErrorDomain;
	if (p != NULL) context[@"NSMachErrorDomain"] = NSMachErrorDomain;
	p = (void*) &NSUnderlyingErrorKey;
	if (p != NULL) context[@"NSUnderlyingErrorKey"] = NSUnderlyingErrorKey;
	p = (void*) &NSLocalizedRecoverySuggestionErrorKey;
	if (p != NULL) context[@"NSLocalizedRecoverySuggestionErrorKey"] = NSLocalizedRecoverySuggestionErrorKey;
	p = (void*) &NSOSStatusErrorDomain;
	if (p != NULL) context[@"NSOSStatusErrorDomain"] = NSOSStatusErrorDomain;
}
void load_Foundation_NSError_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
