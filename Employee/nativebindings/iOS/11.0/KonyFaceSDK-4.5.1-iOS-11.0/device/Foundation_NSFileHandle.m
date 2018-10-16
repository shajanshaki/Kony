#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSFileHandle (NSFileHandleNSFileHandlePlatformSpecificCategoryExports)
-(id) jsinitWithFileDescriptor: (int) fd 
{
	id resultVal__;
	resultVal__ = [[self initWithFileDescriptor: fd ] autorelease];
	return resultVal__;
}
@end
@implementation NSFileHandle (NSFileHandleNSFileHandleAsynchronousAccessCategoryExports)
-(JSValue *) getJsWriteabilityHandler
{
	return [JSValue valueWithObject: self.writeabilityHandler inContext: [JSContext currentContext]];
}
-(void) setJsWriteabilityHandler: (JSValue *) value
{
	void (^ value_)(NSFileHandle * ) = nil;
	if (!value.isUndefined) {
		value_ = ^void(NSFileHandle * arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.writeabilityHandler = value_;
}
-(JSValue *) getJsReadabilityHandler
{
	return [JSValue valueWithObject: self.readabilityHandler inContext: [JSContext currentContext]];
}
-(void) setJsReadabilityHandler: (JSValue *) value
{
	void (^ value_)(NSFileHandle * ) = nil;
	if (!value.isUndefined) {
		value_ = ^void(NSFileHandle * arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.readabilityHandler = value_;
}
@end
@implementation NSFileHandle (NSFileHandleNSFileHandleCreationCategoryExports)
+(id) jsfileHandleForReadingFromURL: (NSURL *) url error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self fileHandleForReadingFromURL: url error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(id) jsfileHandleForWritingToURL: (NSURL *) url error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self fileHandleForWritingToURL: url error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(id) jsfileHandleForUpdatingURL: (NSURL *) url error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self fileHandleForUpdatingURL: url error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
@implementation NSFileHandle (Exports)
-(id) jsinitWithFileDescriptor: (int) fd closeOnDealloc: (BOOL) closeopt 
{
	id resultVal__;
	resultVal__ = [[self initWithFileDescriptor: fd closeOnDealloc: closeopt ] autorelease];
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
	class_addProtocol([NSFileHandle class], @protocol(NSFileHandleNSFileHandlePlatformSpecificCategoryInstanceExports));
	class_addProtocol([NSFileHandle class], @protocol(NSFileHandleNSFileHandlePlatformSpecificCategoryClassExports));
	class_addProtocol([NSPipe class], @protocol(NSPipeInstanceExports));
	class_addProtocol([NSPipe class], @protocol(NSPipeClassExports));
	class_addProtocol([NSFileHandle class], @protocol(NSFileHandleNSFileHandleAsynchronousAccessCategoryInstanceExports));
	class_addProtocol([NSFileHandle class], @protocol(NSFileHandleNSFileHandleAsynchronousAccessCategoryClassExports));
	class_addProtocol([NSFileHandle class], @protocol(NSFileHandleNSFileHandleCreationCategoryInstanceExports));
	class_addProtocol([NSFileHandle class], @protocol(NSFileHandleNSFileHandleCreationCategoryClassExports));
	class_addProtocol([NSFileHandle class], @protocol(NSFileHandleInstanceExports));
	class_addProtocol([NSFileHandle class], @protocol(NSFileHandleClassExports));
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
	p = (void*) &NSFileHandleReadToEndOfFileCompletionNotification;
	if (p != NULL) context[@"NSFileHandleReadToEndOfFileCompletionNotification"] = NSFileHandleReadToEndOfFileCompletionNotification;
	p = (void*) &NSFileHandleNotificationMonitorModes;
	if (p != NULL) context[@"NSFileHandleNotificationMonitorModes"] = NSFileHandleNotificationMonitorModes;
	p = (void*) &NSFileHandleNotificationDataItem;
	if (p != NULL) context[@"NSFileHandleNotificationDataItem"] = NSFileHandleNotificationDataItem;
	p = (void*) &NSFileHandleConnectionAcceptedNotification;
	if (p != NULL) context[@"NSFileHandleConnectionAcceptedNotification"] = NSFileHandleConnectionAcceptedNotification;
	p = (void*) &NSFileHandleDataAvailableNotification;
	if (p != NULL) context[@"NSFileHandleDataAvailableNotification"] = NSFileHandleDataAvailableNotification;
	p = (void*) &NSFileHandleOperationException;
	if (p != NULL) context[@"NSFileHandleOperationException"] = NSFileHandleOperationException;
	p = (void*) &NSFileHandleReadCompletionNotification;
	if (p != NULL) context[@"NSFileHandleReadCompletionNotification"] = NSFileHandleReadCompletionNotification;
	p = (void*) &NSFileHandleNotificationFileHandleItem;
	if (p != NULL) context[@"NSFileHandleNotificationFileHandleItem"] = NSFileHandleNotificationFileHandleItem;
}
void load_Foundation_NSFileHandle_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
