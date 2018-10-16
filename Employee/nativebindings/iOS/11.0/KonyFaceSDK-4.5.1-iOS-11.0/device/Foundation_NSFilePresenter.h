#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFilePresenter_symbols(JSContext*);
@protocol NSFilePresenterInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,retain) NSOperationQueue * presentedItemOperationQueue;
@property (readonly,copy) NSURL * presentedItemURL;
@property (readonly,strong) NSSet * observedPresentedItemUbiquityAttributes;
-(void) presentedSubitemAtURL: (NSURL *) url didResolveConflictVersion: (NSFileVersion *) version ;
-(void) presentedItemDidResolveConflictVersion: (NSFileVersion *) version ;
-(void) presentedItemDidChange;
JSExportAs(savePresentedItemChangesWithCompletionHandler,
-(void) jssavePresentedItemChangesWithCompletionHandler: (JSValue *) completionHandler );
-(void) presentedSubitemAtURL: (NSURL *) url didLoseVersion: (NSFileVersion *) version ;
JSExportAs(relinquishPresentedItemToReader,
-(void) jsrelinquishPresentedItemToReader: (JSValue *) reader );
-(void) presentedSubitemAtURL: (NSURL *) oldURL didMoveToURL: (NSURL *) newURL ;
JSExportAs(accommodatePresentedItemDeletionWithCompletionHandler,
-(void) jsaccommodatePresentedItemDeletionWithCompletionHandler: (JSValue *) completionHandler );
-(void) presentedSubitemDidChangeAtURL: (NSURL *) url ;
-(void) presentedItemDidGainVersion: (NSFileVersion *) version ;
-(void) presentedSubitemAtURL: (NSURL *) url didGainVersion: (NSFileVersion *) version ;
-(void) presentedItemDidMoveToURL: (NSURL *) newURL ;
JSExportAs(relinquishPresentedItemToWriter,
-(void) jsrelinquishPresentedItemToWriter: (JSValue *) writer );
-(void) presentedSubitemDidAppearAtURL: (NSURL *) url ;
-(void) presentedItemDidLoseVersion: (NSFileVersion *) version ;
-(void) presentedItemDidChangeUbiquityAttributes: (NSSet *) attributes ;
JSExportAs(accommodatePresentedSubitemDeletionAtURLCompletionHandler,
-(void) jsaccommodatePresentedSubitemDeletionAtURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
@end
@protocol NSFilePresenterClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop