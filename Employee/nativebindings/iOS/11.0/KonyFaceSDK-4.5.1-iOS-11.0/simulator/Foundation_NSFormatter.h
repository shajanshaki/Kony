#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFormatter_symbols(JSContext*);
@protocol NSFormatterInstanceExports<JSExport, NSCopyingInstanceExports_, NSCodingInstanceExports_>
-(NSString *) editingStringForObjectValue: (id) obj ;
-(NSString *) stringForObjectValue: (id) obj ;
-(NSAttributedString *) attributedStringForObjectValue: (id) obj withDefaultAttributes: (NSDictionary *) attrs ;
@end
@protocol NSFormatterClassExports<JSExport, NSCopyingClassExports_, NSCodingClassExports_>
@end
#pragma clang diagnostic pop