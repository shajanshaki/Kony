#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSExtensionItem_symbols(JSContext*);
@protocol NSExtensionItemInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (copy,nonatomic) NSAttributedString * attributedTitle;
@property (copy,nonatomic) NSAttributedString * attributedContentText;
@property (copy,nonatomic) NSArray * attachments;
@property (copy,nonatomic) NSDictionary * userInfo;
@end
@protocol NSExtensionItemClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop