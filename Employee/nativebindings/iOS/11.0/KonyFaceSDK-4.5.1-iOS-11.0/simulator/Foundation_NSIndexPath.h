#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSIndexPath_symbols(JSContext*);
@protocol NSIndexPathInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSUInteger length;
JSExportAs(initWithIndex,
-(id) jsinitWithIndex: (NSUInteger) index );
-(NSUInteger) indexAtPosition: (NSUInteger) position ;
-(NSIndexPath *) indexPathByRemovingLastIndex;
-(NSIndexPath *) indexPathByAddingIndex: (NSUInteger) index ;
-(NSComparisonResult) compare: (NSIndexPath *) otherObject ;
@end
@protocol NSIndexPathClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) indexPathWithIndex: (NSUInteger) index ;
@end
@protocol NSIndexPathNSDeprecatedCategoryInstanceExports<JSExport>
@end
@protocol NSIndexPathNSDeprecatedCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop