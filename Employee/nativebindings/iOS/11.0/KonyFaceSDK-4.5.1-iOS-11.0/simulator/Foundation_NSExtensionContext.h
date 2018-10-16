#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSExtensionContext_symbols(JSContext*);
@protocol NSExtensionContextInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSArray * inputItems;
JSExportAs(completeRequestReturningItemsCompletionHandler,
-(void) jscompleteRequestReturningItems: (NSArray *) items completionHandler: (JSValue *) completionHandler );
-(void) cancelRequestWithError: (NSError *) error ;
JSExportAs(openURLCompletionHandler,
-(void) jsopenURL: (NSURL *) URL completionHandler: (JSValue *) completionHandler );
@end
@protocol NSExtensionContextClassExports<JSExport>
@end
#pragma clang diagnostic pop