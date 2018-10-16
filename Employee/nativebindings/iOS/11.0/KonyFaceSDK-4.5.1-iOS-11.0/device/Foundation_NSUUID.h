#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSUUID_symbols(JSContext*);
@protocol NSUUIDInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSString * UUIDString;
-(id) jsinit;
JSExportAs(initWithUUIDString,
-(id) jsinitWithUUIDString: (NSString *) string );
@end
@protocol NSUUIDClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) UUID;
@end
#pragma clang diagnostic pop