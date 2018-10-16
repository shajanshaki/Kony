#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSItemProvider_symbols(JSContext*);
@protocol NSItemProviderNSPreviewSupportCategoryInstanceExports<JSExport>
@property (getter=getJsPreviewImageHandler,setter=setJsPreviewImageHandler:) JSValue* jspreviewImageHandler;
JSExportAs(loadPreviewImageWithOptionsCompletionHandler,
-(void) jsloadPreviewImageWithOptions: (NSDictionary *) options completionHandler: (JSValue *) completionHandler );
@end
@protocol NSItemProviderNSPreviewSupportCategoryClassExports<JSExport>
@end
@protocol NSItemProviderInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,copy,atomic) NSArray * registeredTypeIdentifiers;
@property (copy,atomic) NSString * suggestedName;
JSExportAs(initWithItemTypeIdentifier,
-(id) jsinitWithItem: (id) item typeIdentifier: (NSString *) typeIdentifier );
JSExportAs(initWithContentsOfURL,
-(id) jsinitWithContentsOfURL: (NSURL *) fileURL );
-(BOOL) hasItemConformingToTypeIdentifier: (NSString *) typeIdentifier ;
-(void) registerObject: (id) object visibility: (NSItemProviderRepresentationVisibility) visibility ;
JSExportAs(registerObjectOfClassVisibilityLoadHandler,
-(void) jsregisterObjectOfClass: (JSValue *) aClass visibility: (NSItemProviderRepresentationVisibility) visibility loadHandler: (JSValue *) loadHandler );
JSExportAs(loadItemForTypeIdentifierOptionsCompletionHandler,
-(void) jsloadItemForTypeIdentifier: (NSString *) typeIdentifier options: (NSDictionary *) options completionHandler: (JSValue *) completionHandler );
JSExportAs(registerItemForTypeIdentifierLoadHandler,
-(void) jsregisterItemForTypeIdentifier: (NSString *) typeIdentifier loadHandler: (JSValue *) loadHandler );
-(id) jsinit;
JSExportAs(canLoadObjectOfClass,
-(BOOL) jscanLoadObjectOfClass: (JSValue *) aClass );
JSExportAs(loadObjectOfClassCompletionHandler,
-(NSProgress *) jsloadObjectOfClass: (JSValue *) aClass completionHandler: (JSValue *) completionHandler );
JSExportAs(loadFileRepresentationForTypeIdentifierCompletionHandler,
-(NSProgress *) jsloadFileRepresentationForTypeIdentifier: (NSString *) typeIdentifier completionHandler: (JSValue *) completionHandler );
-(BOOL) hasRepresentationConformingToTypeIdentifier: (NSString *) typeIdentifier fileOptions: (NSItemProviderFileOptions) fileOptions ;
JSExportAs(initWithObject,
-(id) jsinitWithObject: (id) object );
JSExportAs(registerFileRepresentationForTypeIdentifierFileOptionsVisibilityLoadHandler,
-(void) jsregisterFileRepresentationForTypeIdentifier: (NSString *) typeIdentifier fileOptions: (NSItemProviderFileOptions) fileOptions visibility: (NSItemProviderRepresentationVisibility) visibility loadHandler: (JSValue *) loadHandler );
-(NSArray *) registeredTypeIdentifiersWithFileOptions: (NSItemProviderFileOptions) fileOptions ;
JSExportAs(loadInPlaceFileRepresentationForTypeIdentifierCompletionHandler,
-(NSProgress *) jsloadInPlaceFileRepresentationForTypeIdentifier: (NSString *) typeIdentifier completionHandler: (JSValue *) completionHandler );
JSExportAs(registerDataRepresentationForTypeIdentifierVisibilityLoadHandler,
-(void) jsregisterDataRepresentationForTypeIdentifier: (NSString *) typeIdentifier visibility: (NSItemProviderRepresentationVisibility) visibility loadHandler: (JSValue *) loadHandler );
JSExportAs(loadDataRepresentationForTypeIdentifierCompletionHandler,
-(NSProgress *) jsloadDataRepresentationForTypeIdentifier: (NSString *) typeIdentifier completionHandler: (JSValue *) completionHandler );
@end
@protocol NSItemProviderClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol NSItemProviderReadingInstanceExports_<JSExport, NSObjectInstanceExports_>
@end
@protocol NSItemProviderReadingClassExports_<JSExport, NSObjectClassExports_>
JSExportAs(objectWithItemProviderDataTypeIdentifierError,
+(id) jsobjectWithItemProviderData: (NSData *) data typeIdentifier: (NSString *) typeIdentifier error: (JSValue *) outError );
+(NSArray *) readableTypeIdentifiersForItemProvider;
@end
@protocol NSItemProviderWritingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,copy,nonatomic) NSArray * writableTypeIdentifiersForItemProvider;
JSExportAs(loadDataWithTypeIdentifierForItemProviderCompletionHandler,
-(NSProgress *) jsloadDataWithTypeIdentifier: (NSString *) typeIdentifier forItemProviderCompletionHandler: (JSValue *) completionHandler );
-(NSItemProviderRepresentationVisibility) itemProviderVisibilityForRepresentationWithTypeIdentifier: (NSString *) typeIdentifier ;
@end
@protocol NSItemProviderWritingClassExports_<JSExport, NSObjectClassExports_>
+(NSArray *) writableTypeIdentifiersForItemProvider;
+(NSItemProviderRepresentationVisibility) itemProviderVisibilityForRepresentationWithTypeIdentifier: (NSString *) typeIdentifier ;
@end
#pragma clang diagnostic pop