#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSPointerArray_symbols(JSContext*);
@protocol NSPointerArrayInstanceExports<JSExport, NSFastEnumerationInstanceExports_, NSCopyingInstanceExports_, NSCodingInstanceExports_>
@property () NSUInteger count;
@property (readonly,copy) NSPointerFunctions * pointerFunctions;
-(void) compact;
JSExportAs(initWithOptions,
-(id) jsinitWithOptions: (NSPointerFunctionsOptions) options );
JSExportAs(initWithPointerFunctions,
-(id) jsinitWithPointerFunctions: (NSPointerFunctions *) functions );
-(void) removePointerAtIndex: (NSUInteger) index ;
@end
@protocol NSPointerArrayClassExports<JSExport, NSFastEnumerationClassExports_, NSCopyingClassExports_, NSCodingClassExports_>
+(NSPointerArray *) pointerArrayWithOptions: (NSPointerFunctionsOptions) options ;
+(NSPointerArray *) pointerArrayWithPointerFunctions: (NSPointerFunctions *) functions ;
@end
@protocol NSPointerArrayNSPointerArrayConveniencesCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * allObjects;
@end
@protocol NSPointerArrayNSPointerArrayConveniencesCategoryClassExports<JSExport>
+(NSPointerArray *) strongObjectsPointerArray;
+(NSPointerArray *) weakObjectsPointerArray;
@end
#pragma clang diagnostic pop