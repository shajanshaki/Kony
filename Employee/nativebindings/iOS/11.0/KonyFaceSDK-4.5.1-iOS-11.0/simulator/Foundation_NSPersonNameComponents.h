#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSPersonNameComponents_symbols(JSContext*);
@protocol NSPersonNameComponentsInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (copy) NSPersonNameComponents * phoneticRepresentation;
@property (copy) NSString * middleName;
@property (copy) NSString * familyName;
@property (copy) NSString * nameSuffix;
@property (copy) NSString * namePrefix;
@property (copy) NSString * givenName;
@property (copy) NSString * nickname;
@end
@protocol NSPersonNameComponentsClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop