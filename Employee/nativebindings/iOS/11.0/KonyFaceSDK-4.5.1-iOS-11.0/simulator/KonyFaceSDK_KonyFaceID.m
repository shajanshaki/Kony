#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation KonyFaceID (Exports)
-(void) jsenrollWithSuccessCallback: (JSValue *) onSuccess errorCallback: (JSValue *) onError 
{
	void (^ onSuccess_)() = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void() {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onError_)(NSError *) = nil;
	if (!onError.isUndefined) {
		onError_ = ^void(NSError * arg0) {
			JSContext* __jsContext = onError.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onError, self, parameters);
		};
	}
	[self enrollWithSuccessCallback: onSuccess_ errorCallback: onError_ ];
}
-(void) jsunEnrollWithSuccessCallback: (JSValue *) onSuccess errorCallback: (JSValue *) onError 
{
	void (^ onSuccess_)() = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void() {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onError_)(NSError *) = nil;
	if (!onError.isUndefined) {
		onError_ = ^void(NSError * arg0) {
			JSContext* __jsContext = onError.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onError, self, parameters);
		};
	}
	[self unEnrollWithSuccessCallback: onSuccess_ errorCallback: onError_ ];
}
-(void) jsinitializeWithSuccessCallback: (JSValue *) onSuccess errorCallback: (JSValue *) onError 
{
	void (^ onSuccess_)() = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void() {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onError_)(NSError *) = nil;
	if (!onError.isUndefined) {
		onError_ = ^void(NSError * arg0) {
			JSContext* __jsContext = onError.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onError, self, parameters);
		};
	}
	[self initializeWithSuccessCallback: onSuccess_ errorCallback: onError_ ];
}
-(void) jsverifyWithSuccessCallback: (JSValue *) onSuccess errorCallback: (JSValue *) onError 
{
	void (^ onSuccess_)() = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void() {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onError_)(NSError *) = nil;
	if (!onError.isUndefined) {
		onError_ = ^void(NSError * arg0) {
			JSContext* __jsContext = onError.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onError, self, parameters);
		};
	}
	[self verifyWithSuccessCallback: onSuccess_ errorCallback: onError_ ];
}
-(BOOL) jsinitializeSDKWithConfig: (NSDictionary *) configuration 
{
	BOOL resultVal__;
	resultVal__ = [self initializeSDKWithConfig: configuration ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([KonyFaceID class], @protocol(KonyFaceIDInstanceExports));
	class_addProtocol([KonyFaceID class], @protocol(KonyFaceIDClassExports));
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
void load_KonyFaceSDK_KonyFaceID_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
