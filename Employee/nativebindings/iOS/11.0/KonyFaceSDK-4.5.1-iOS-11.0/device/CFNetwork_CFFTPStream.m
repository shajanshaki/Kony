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
}
static void registerCFunctions(JSContext* context)
{
	context[@"CFWriteStreamCreateWithFTPURL"] = ^id(id arg0, id arg1) {
		return CFWriteStreamCreateWithFTPURL(arg0, arg1);
	};
	context[@"CFReadStreamCreateWithFTPURL"] = ^id(id arg0, id arg1) {
		return CFReadStreamCreateWithFTPURL(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStreamPropertyFTPPassword;
	if (p != NULL) context[@"kCFStreamPropertyFTPPassword"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPPassword inContext: context];
	p = (void*) &kCFStreamPropertyFTPFetchResourceInfo;
	if (p != NULL) context[@"kCFStreamPropertyFTPFetchResourceInfo"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPFetchResourceInfo inContext: context];
	p = (void*) &kCFStreamPropertyFTPProxy;
	if (p != NULL) context[@"kCFStreamPropertyFTPProxy"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPProxy inContext: context];
	p = (void*) &kCFStreamPropertyFTPProxyHost;
	if (p != NULL) context[@"kCFStreamPropertyFTPProxyHost"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPProxyHost inContext: context];
	p = (void*) &kCFStreamPropertyFTPUserName;
	if (p != NULL) context[@"kCFStreamPropertyFTPUserName"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPUserName inContext: context];
	p = (void*) &kCFFTPResourceName;
	if (p != NULL) context[@"kCFFTPResourceName"] = [JSValue valueWithObject: (__bridge id) kCFFTPResourceName inContext: context];
	p = (void*) &kCFFTPResourceOwner;
	if (p != NULL) context[@"kCFFTPResourceOwner"] = [JSValue valueWithObject: (__bridge id) kCFFTPResourceOwner inContext: context];
	p = (void*) &kCFStreamPropertyFTPResourceSize;
	if (p != NULL) context[@"kCFStreamPropertyFTPResourceSize"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPResourceSize inContext: context];
	p = (void*) &kCFFTPResourceLink;
	if (p != NULL) context[@"kCFFTPResourceLink"] = [JSValue valueWithObject: (__bridge id) kCFFTPResourceLink inContext: context];
	p = (void*) &kCFStreamPropertyFTPProxyPort;
	if (p != NULL) context[@"kCFStreamPropertyFTPProxyPort"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPProxyPort inContext: context];
	p = (void*) &kCFFTPResourceGroup;
	if (p != NULL) context[@"kCFFTPResourceGroup"] = [JSValue valueWithObject: (__bridge id) kCFFTPResourceGroup inContext: context];
	p = (void*) &kCFStreamErrorDomainFTP;
	if (p != NULL) context[@"kCFStreamErrorDomainFTP"] = @(kCFStreamErrorDomainFTP);
	p = (void*) &kCFFTPResourceModDate;
	if (p != NULL) context[@"kCFFTPResourceModDate"] = [JSValue valueWithObject: (__bridge id) kCFFTPResourceModDate inContext: context];
	p = (void*) &kCFFTPResourceType;
	if (p != NULL) context[@"kCFFTPResourceType"] = [JSValue valueWithObject: (__bridge id) kCFFTPResourceType inContext: context];
	p = (void*) &kCFStreamPropertyFTPProxyPassword;
	if (p != NULL) context[@"kCFStreamPropertyFTPProxyPassword"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPProxyPassword inContext: context];
	p = (void*) &kCFStreamPropertyFTPUsePassiveMode;
	if (p != NULL) context[@"kCFStreamPropertyFTPUsePassiveMode"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPUsePassiveMode inContext: context];
	p = (void*) &kCFStreamPropertyFTPProxyUser;
	if (p != NULL) context[@"kCFStreamPropertyFTPProxyUser"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPProxyUser inContext: context];
	p = (void*) &kCFFTPResourceMode;
	if (p != NULL) context[@"kCFFTPResourceMode"] = [JSValue valueWithObject: (__bridge id) kCFFTPResourceMode inContext: context];
	p = (void*) &kCFFTPResourceSize;
	if (p != NULL) context[@"kCFFTPResourceSize"] = [JSValue valueWithObject: (__bridge id) kCFFTPResourceSize inContext: context];
	p = (void*) &kCFStreamPropertyFTPAttemptPersistentConnection;
	if (p != NULL) context[@"kCFStreamPropertyFTPAttemptPersistentConnection"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPAttemptPersistentConnection inContext: context];
	p = (void*) &kCFStreamPropertyFTPFileTransferOffset;
	if (p != NULL) context[@"kCFStreamPropertyFTPFileTransferOffset"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFTPFileTransferOffset inContext: context];
}
void load_CFNetwork_CFFTPStream_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
