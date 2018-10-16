#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFileCoordinator_symbols(JSContext*);
@protocol NSFileAccessIntentInstanceExports<JSExport>
@property (readonly,copy) NSURL * URL;
@end
@protocol NSFileAccessIntentClassExports<JSExport>
+(id) writingIntentWithURL: (NSURL *) url options: (NSFileCoordinatorWritingOptions) options ;
+(id) readingIntentWithURL: (NSURL *) url options: (NSFileCoordinatorReadingOptions) options ;
@end
@protocol NSFileCoordinatorInstanceExports<JSExport>
@property (copy) NSString * purposeIdentifier;
JSExportAs(coordinateReadingItemAtURLOptionsErrorByAccessor,
-(void) jscoordinateReadingItemAtURL: (NSURL *) url options: (NSFileCoordinatorReadingOptions) options error: (JSValue *) outError byAccessor: (JSValue *) reader );
JSExportAs(coordinateAccessWithIntentsQueueByAccessor,
-(void) jscoordinateAccessWithIntents: (NSArray *) intents queue: (NSOperationQueue *) queue byAccessor: (JSValue *) accessor );
JSExportAs(initWithFilePresenter,
-(id) jsinitWithFilePresenter: (id) filePresenterOrNil );
JSExportAs(coordinateReadingItemAtURLOptionsWritingItemAtURLOptionsErrorByAccessor,
-(void) jscoordinateReadingItemAtURL: (NSURL *) readingURL options: (NSFileCoordinatorReadingOptions) readingOptions writingItemAtURL: (NSURL *) writingURL options: (NSFileCoordinatorWritingOptions) writingOptions error: (JSValue *) outError byAccessor: (JSValue *) readerWriter );
-(void) itemAtURL: (NSURL *) url didChangeUbiquityAttributes: (NSSet *) attributes ;
-(void) itemAtURL: (NSURL *) oldURL didMoveToURL: (NSURL *) newURL ;
-(void) itemAtURL: (NSURL *) oldURL willMoveToURL: (NSURL *) newURL ;
JSExportAs(coordinateWritingItemAtURLOptionsErrorByAccessor,
-(void) jscoordinateWritingItemAtURL: (NSURL *) url options: (NSFileCoordinatorWritingOptions) options error: (JSValue *) outError byAccessor: (JSValue *) writer );
-(void) cancel;
JSExportAs(coordinateWritingItemAtURLOptionsWritingItemAtURLOptionsErrorByAccessor,
-(void) jscoordinateWritingItemAtURL: (NSURL *) url1 options: (NSFileCoordinatorWritingOptions) options1 writingItemAtURL: (NSURL *) url2 options: (NSFileCoordinatorWritingOptions) options2 error: (JSValue *) outError byAccessor: (JSValue *) writer );
JSExportAs(prepareForReadingItemsAtURLsOptionsWritingItemsAtURLsOptionsErrorByAccessor,
-(void) jsprepareForReadingItemsAtURLs: (NSArray *) readingURLs options: (NSFileCoordinatorReadingOptions) readingOptions writingItemsAtURLs: (NSArray *) writingURLs options: (NSFileCoordinatorWritingOptions) writingOptions error: (JSValue *) outError byAccessor: (JSValue *) batchAccessor );
@end
@protocol NSFileCoordinatorClassExports<JSExport>
+(void) addFilePresenter: (id) filePresenter ;
+(void) removeFilePresenter: (id) filePresenter ;
+(NSArray *) filePresenters;
@end
#pragma clang diagnostic pop