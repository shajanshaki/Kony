#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLAuthenticationChallenge (Exports)
-(id) jsinitWithProtectionSpace: (NSURLProtectionSpace *) space proposedCredential: (NSURLCredential *) credential previousFailureCount: (NSInteger) previousFailureCount failureResponse: (NSURLResponse *) response error: (NSError *) error sender: (id) sender 
{
	id resultVal__;
	resultVal__ = [[self initWithProtectionSpace: space proposedCredential: credential previousFailureCount: previousFailureCount failureResponse: response error: error sender: sender ] autorelease];
	return resultVal__;
}
-(id) jsinitWithAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge sender: (id) sender 
{
	id resultVal__;
	resultVal__ = [[self initWithAuthenticationChallenge: challenge sender: sender ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSURLAuthenticationChallenge class], @protocol(NSURLAuthenticationChallengeInstanceExports));
	class_addProtocol([NSURLAuthenticationChallenge class], @protocol(NSURLAuthenticationChallengeClassExports));
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
void Foundation_NSURLAuthenticationChallengeProtocols()
{
	(void)@protocol(NSURLAuthenticationChallengeSender);
}
void load_Foundation_NSURLAuthenticationChallenge_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
