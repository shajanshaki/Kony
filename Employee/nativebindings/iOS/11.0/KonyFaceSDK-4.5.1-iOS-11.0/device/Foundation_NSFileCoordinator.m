#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSFileCoordinator (Exports)
-(void) jscoordinateWritingItemAtURL: (NSURL *) url options: (NSFileCoordinatorWritingOptions) options error: (JSValue *) outError byAccessor: (JSValue *) writer 
{
	NSError* outError_ = nil;
	void (^ writer_)(NSURL * ) = nil;
	if (!writer.isUndefined) {
		writer_ = ^void(NSURL * arg0) {
			JSContext* __jsContext = writer.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, writer, self, parameters);
		};
	}
	[self coordinateWritingItemAtURL: url options: options error: &outError_ byAccessor: writer_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
}
-(void) jscoordinateAccessWithIntents: (NSArray *) intents queue: (NSOperationQueue *) queue byAccessor: (JSValue *) accessor 
{
	void (^ accessor_)(NSError * ) = nil;
	if (!accessor.isUndefined) {
		accessor_ = ^void(NSError * arg0) {
			JSContext* __jsContext = accessor.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, accessor, self, parameters);
		};
	}
	[self coordinateAccessWithIntents: intents queue: queue byAccessor: accessor_ ];
}
-(id) jsinitWithFilePresenter: (id) filePresenterOrNil 
{
	id resultVal__;
	resultVal__ = [[self initWithFilePresenter: filePresenterOrNil ] autorelease];
	return resultVal__;
}
-(void) jscoordinateReadingItemAtURL: (NSURL *) readingURL options: (NSFileCoordinatorReadingOptions) readingOptions writingItemAtURL: (NSURL *) writingURL options: (NSFileCoordinatorWritingOptions) writingOptions error: (JSValue *) outError byAccessor: (JSValue *) readerWriter 
{
	NSError* outError_ = nil;
	void (^ readerWriter_)(NSURL * , NSURL * ) = nil;
	if (!readerWriter.isUndefined) {
		readerWriter_ = ^void(NSURL * arg0, NSURL * arg1) {
			JSContext* __jsContext = readerWriter.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, readerWriter, self, parameters);
		};
	}
	[self coordinateReadingItemAtURL: readingURL options: readingOptions writingItemAtURL: writingURL options: writingOptions error: &outError_ byAccessor: readerWriter_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
}
-(void) jscoordinateReadingItemAtURL: (NSURL *) url options: (NSFileCoordinatorReadingOptions) options error: (JSValue *) outError byAccessor: (JSValue *) reader 
{
	NSError* outError_ = nil;
	void (^ reader_)(NSURL * ) = nil;
	if (!reader.isUndefined) {
		reader_ = ^void(NSURL * arg0) {
			JSContext* __jsContext = reader.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, reader, self, parameters);
		};
	}
	[self coordinateReadingItemAtURL: url options: options error: &outError_ byAccessor: reader_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
}
-(void) jscoordinateWritingItemAtURL: (NSURL *) url1 options: (NSFileCoordinatorWritingOptions) options1 writingItemAtURL: (NSURL *) url2 options: (NSFileCoordinatorWritingOptions) options2 error: (JSValue *) outError byAccessor: (JSValue *) writer 
{
	NSError* outError_ = nil;
	void (^ writer_)(NSURL * , NSURL * ) = nil;
	if (!writer.isUndefined) {
		writer_ = ^void(NSURL * arg0, NSURL * arg1) {
			JSContext* __jsContext = writer.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, writer, self, parameters);
		};
	}
	[self coordinateWritingItemAtURL: url1 options: options1 writingItemAtURL: url2 options: options2 error: &outError_ byAccessor: writer_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
}
-(void) jsprepareForReadingItemsAtURLs: (NSArray *) readingURLs options: (NSFileCoordinatorReadingOptions) readingOptions writingItemsAtURLs: (NSArray *) writingURLs options: (NSFileCoordinatorWritingOptions) writingOptions error: (JSValue *) outError byAccessor: (JSValue *) batchAccessor 
{
	NSError* outError_ = nil;
	void (^ batchAccessor_)(void (^ batchAccessor_ )(void)) = nil;
	if (!batchAccessor.isUndefined) {
		batchAccessor_ = ^void(void (^ arg0)(void)) {
			JSContext* __jsContext = batchAccessor.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, batchAccessor, self, parameters);
		};
	}
	[self prepareForReadingItemsAtURLs: readingURLs options: readingOptions writingItemsAtURLs: writingURLs options: writingOptions error: &outError_ byAccessor: batchAccessor_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
}
@end
static void addProtocols()
{
	class_addProtocol([NSFileAccessIntent class], @protocol(NSFileAccessIntentInstanceExports));
	class_addProtocol([NSFileAccessIntent class], @protocol(NSFileAccessIntentClassExports));
	class_addProtocol([NSFileCoordinator class], @protocol(NSFileCoordinatorInstanceExports));
	class_addProtocol([NSFileCoordinator class], @protocol(NSFileCoordinatorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSFileCoordinatorReadingWithoutChanges"] = @1U;
	context[@"NSFileCoordinatorReadingResolvesSymbolicLink"] = @2U;
	context[@"NSFileCoordinatorReadingImmediatelyAvailableMetadataOnly"] = @4U;
	context[@"NSFileCoordinatorReadingForUploading"] = @8U;

	context[@"NSFileCoordinatorWritingForDeleting"] = @1U;
	context[@"NSFileCoordinatorWritingForMoving"] = @2U;
	context[@"NSFileCoordinatorWritingForMerging"] = @4U;
	context[@"NSFileCoordinatorWritingForReplacing"] = @8U;
	context[@"NSFileCoordinatorWritingContentIndependentMetadataOnly"] = @16U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSFileCoordinator_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
