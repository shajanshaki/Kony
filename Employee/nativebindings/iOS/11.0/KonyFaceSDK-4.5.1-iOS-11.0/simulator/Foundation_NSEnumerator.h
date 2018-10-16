#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSEnumerator_symbols(JSContext*);
@protocol NSEnumeratorInstanceExports<JSExport, NSFastEnumerationInstanceExports_>
-(id) nextObject;
@end
@protocol NSEnumeratorClassExports<JSExport, NSFastEnumerationClassExports_>
@end
@protocol NSEnumeratorNSExtendedEnumeratorCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * allObjects;
@end
@protocol NSEnumeratorNSExtendedEnumeratorCategoryClassExports<JSExport>
@end
@protocol NSFastEnumerationInstanceExports_<JSExport>
@end
@protocol NSFastEnumerationClassExports_<JSExport>
@end
#pragma clang diagnostic pop