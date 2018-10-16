#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSItemProvider (NSItemProviderNSPreviewSupportCategoryExports)
-(void) jsloadPreviewImageWithOptions: (NSDictionary *) options completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(id , NSError * _Null_unspecified) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(id arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self loadPreviewImageWithOptions: options completionHandler: completionHandler_ ];
}
-(JSValue *) getJsPreviewImageHandler
{
	return [JSValue valueWithObject: self.previewImageHandler inContext: [JSContext currentContext]];
}
-(void) setJsPreviewImageHandler: (JSValue *) value
{
	void (^ value_)(NSItemProviderCompletionHandler _Null_unspecified, Class _Null_unspecified, NSDictionary * _Null_unspecified) = nil;
	if (!value.isUndefined) {
		value_ = ^void(NSItemProviderCompletionHandler arg0, Class arg1, NSDictionary * arg2) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.previewImageHandler = value_;
}
@end
@implementation NSItemProvider (Exports)
-(id) jsinitWithItem: (id) item typeIdentifier: (NSString *) typeIdentifier 
{
	id resultVal__;
	resultVal__ = [[self initWithItem: item typeIdentifier: typeIdentifier ] autorelease];
	return resultVal__;
}
-(id) jsinitWithContentsOfURL: (NSURL *) fileURL 
{
	id resultVal__;
	resultVal__ = [[self initWithContentsOfURL: fileURL ] autorelease];
	return resultVal__;
}
-(BOOL) jscanLoadObjectOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self canLoadObjectOfClass: aClass_ ];
	return resultVal__;
}
-(void) jsregisterObjectOfClass: (JSValue *) aClass visibility: (NSItemProviderRepresentationVisibility) visibility loadHandler: (JSValue *) loadHandler 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	NSProgress *  (^ loadHandler_)(void (^ loadHandler_ )(id , NSError * )) = nil;
	if (!loadHandler.isUndefined) {
		loadHandler_ = ^NSProgress *(void (^ arg0)(id _Nullable, NSError * _Nullable)) {
			JSContext* __jsContext = loadHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, loadHandler, self, parameters);
			return [result toObject];
		};
	}
	[self registerObjectOfClass: aClass_ visibility: visibility loadHandler: loadHandler_ ];
}
-(void) jsloadItemForTypeIdentifier: (NSString *) typeIdentifier options: (NSDictionary *) options completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(id , NSError * _Null_unspecified) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(id arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self loadItemForTypeIdentifier: typeIdentifier options: options completionHandler: completionHandler_ ];
}
-(void) jsregisterItemForTypeIdentifier: (NSString *) typeIdentifier loadHandler: (JSValue *) loadHandler 
{
	void (^ loadHandler_)(NSItemProviderCompletionHandler _Null_unspecified, Class _Null_unspecified, NSDictionary * _Null_unspecified) = nil;
	if (!loadHandler.isUndefined) {
		loadHandler_ = ^void(NSItemProviderCompletionHandler arg0, Class arg1, NSDictionary * arg2) {
			JSContext* __jsContext = loadHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, loadHandler, self, parameters);
		};
	}
	[self registerItemForTypeIdentifier: typeIdentifier loadHandler: loadHandler_ ];
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(NSProgress *) jsloadObjectOfClass: (JSValue *) aClass completionHandler: (JSValue *) completionHandler 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	void (^ completionHandler_)(id , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(id arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSProgress * resultVal__;
	resultVal__ = [self loadObjectOfClass: aClass_ completionHandler: completionHandler_ ];
	return resultVal__;
}
-(NSProgress *) jsloadFileRepresentationForTypeIdentifier: (NSString *) typeIdentifier completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSURL * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSURL * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSProgress * resultVal__;
	resultVal__ = [self loadFileRepresentationForTypeIdentifier: typeIdentifier completionHandler: completionHandler_ ];
	return resultVal__;
}
-(id) jsinitWithObject: (id) object 
{
	id resultVal__;
	resultVal__ = [[self initWithObject: object ] autorelease];
	return resultVal__;
}
-(void) jsregisterFileRepresentationForTypeIdentifier: (NSString *) typeIdentifier fileOptions: (NSItemProviderFileOptions) fileOptions visibility: (NSItemProviderRepresentationVisibility) visibility loadHandler: (JSValue *) loadHandler 
{
	NSProgress *  (^ loadHandler_)(void (^ loadHandler_ )(NSURL * , BOOL, NSError * )) = nil;
	if (!loadHandler.isUndefined) {
		loadHandler_ = ^NSProgress *(void (^ arg0)(NSURL * _Nullable, BOOL, NSError * _Nullable)) {
			JSContext* __jsContext = loadHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, loadHandler, self, parameters);
			return [result toObject];
		};
	}
	[self registerFileRepresentationForTypeIdentifier: typeIdentifier fileOptions: fileOptions visibility: visibility loadHandler: loadHandler_ ];
}
-(NSProgress *) jsloadInPlaceFileRepresentationForTypeIdentifier: (NSString *) typeIdentifier completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSURL * , BOOL, NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSURL * arg0, BOOL arg1, NSError * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSProgress * resultVal__;
	resultVal__ = [self loadInPlaceFileRepresentationForTypeIdentifier: typeIdentifier completionHandler: completionHandler_ ];
	return resultVal__;
}
-(void) jsregisterDataRepresentationForTypeIdentifier: (NSString *) typeIdentifier visibility: (NSItemProviderRepresentationVisibility) visibility loadHandler: (JSValue *) loadHandler 
{
	NSProgress *  (^ loadHandler_)(void (^ loadHandler_ )(NSData * , NSError * )) = nil;
	if (!loadHandler.isUndefined) {
		loadHandler_ = ^NSProgress *(void (^ arg0)(NSData * _Nullable, NSError * _Nullable)) {
			JSContext* __jsContext = loadHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, loadHandler, self, parameters);
			return [result toObject];
		};
	}
	[self registerDataRepresentationForTypeIdentifier: typeIdentifier visibility: visibility loadHandler: loadHandler_ ];
}
-(NSProgress *) jsloadDataRepresentationForTypeIdentifier: (NSString *) typeIdentifier completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSData * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSProgress * resultVal__;
	resultVal__ = [self loadDataRepresentationForTypeIdentifier: typeIdentifier completionHandler: completionHandler_ ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSItemProvider class], @protocol(NSItemProviderNSPreviewSupportCategoryInstanceExports));
	class_addProtocol([NSItemProvider class], @protocol(NSItemProviderNSPreviewSupportCategoryClassExports));
	class_addProtocol([NSItemProvider class], @protocol(NSItemProviderInstanceExports));
	class_addProtocol([NSItemProvider class], @protocol(NSItemProviderClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSItemProviderRepresentationVisibilityAll"] = @0L;
	context[@"NSItemProviderRepresentationVisibilityTeam"] = @1L;
	context[@"NSItemProviderRepresentationVisibilityOwnProcess"] = @3L;

	context[@"NSItemProviderFileOptionOpenInPlace"] = @1L;

	context[@"NSItemProviderUnknownError"] = @-1L;
	context[@"NSItemProviderItemUnavailableError"] = @-1000L;
	context[@"NSItemProviderUnexpectedValueClassError"] = @-1100L;
	context[@"NSItemProviderUnavailableCoercionError"] = @-1200L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSItemProviderErrorDomain;
	if (p != NULL) context[@"NSItemProviderErrorDomain"] = NSItemProviderErrorDomain;
	p = (void*) &NSItemProviderPreferredImageSizeKey;
	if (p != NULL) context[@"NSItemProviderPreferredImageSizeKey"] = NSItemProviderPreferredImageSizeKey;
	p = (void*) &NSExtensionJavaScriptPreprocessingResultsKey;
	if (p != NULL) context[@"NSExtensionJavaScriptPreprocessingResultsKey"] = NSExtensionJavaScriptPreprocessingResultsKey;
	p = (void*) &NSExtensionJavaScriptFinalizeArgumentKey;
	if (p != NULL) context[@"NSExtensionJavaScriptFinalizeArgumentKey"] = NSExtensionJavaScriptFinalizeArgumentKey;
}
void Foundation_NSItemProviderProtocols()
{
	(void)@protocol(NSItemProviderReading);
	(void)@protocol(NSItemProviderWriting);
}
void load_Foundation_NSItemProvider_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
