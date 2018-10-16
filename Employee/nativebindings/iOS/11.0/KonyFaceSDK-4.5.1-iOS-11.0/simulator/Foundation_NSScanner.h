#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSScanner_symbols(JSContext*);
@protocol NSScannerInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (retain) id locale;
@property (copy) NSCharacterSet * charactersToBeSkipped;
@property () NSUInteger scanLocation;
@property (readonly,copy) NSString * string;
@property () BOOL caseSensitive;
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) string );
@end
@protocol NSScannerClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol NSScannerNSExtendedScannerCategoryInstanceExports<JSExport>
@property (getter=isAtEnd,readonly) BOOL atEnd;
@end
@protocol NSScannerNSExtendedScannerCategoryClassExports<JSExport>
+(id) scannerWithString: (NSString *) string ;
+(id) localizedScannerWithString: (NSString *) string ;
@end
#pragma clang diagnostic pop