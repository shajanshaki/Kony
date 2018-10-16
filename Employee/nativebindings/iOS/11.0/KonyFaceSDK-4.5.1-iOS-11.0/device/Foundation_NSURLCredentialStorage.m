#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLCredentialStorage (NSURLCredentialStorageNSURLSessionTaskAdditionsCategoryExports)
-(void) jsgetCredentialsForProtectionSpace: (NSURLProtectionSpace *) protectionSpace task: (NSURLSessionTask *) task completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSDictionary * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getCredentialsForProtectionSpace: protectionSpace task: task completionHandler: completionHandler_ ];
}
-(void) jsgetDefaultCredentialForProtectionSpace: (NSURLProtectionSpace *) space task: (NSURLSessionTask *) task completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSURLCredential * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSURLCredential * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getDefaultCredentialForProtectionSpace: space task: task completionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSURLCredentialStorage class], @protocol(NSURLCredentialStorageNSURLSessionTaskAdditionsCategoryInstanceExports));
	class_addProtocol([NSURLCredentialStorage class], @protocol(NSURLCredentialStorageNSURLSessionTaskAdditionsCategoryClassExports));
	class_addProtocol([NSURLCredentialStorage class], @protocol(NSURLCredentialStorageInstanceExports));
	class_addProtocol([NSURLCredentialStorage class], @protocol(NSURLCredentialStorageClassExports));
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
	p = (void*) &NSURLCredentialStorageChangedNotification;
	if (p != NULL) context[@"NSURLCredentialStorageChangedNotification"] = NSURLCredentialStorageChangedNotification;
	p = (void*) &NSURLCredentialStorageRemoveSynchronizableCredentials;
	if (p != NULL) context[@"NSURLCredentialStorageRemoveSynchronizableCredentials"] = NSURLCredentialStorageRemoveSynchronizableCredentials;
}
void load_Foundation_NSURLCredentialStorage_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
