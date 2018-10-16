#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSAttributedString_symbols(JSContext*);
@protocol NSAttributedStringNSExtendedAttributedStringCategoryInstanceExports<JSExport>
@property (readonly) NSUInteger length;
JSExportAs(initWithAttributedString,
-(id) jsinitWithAttributedString: (NSAttributedString *) attrStr );
JSExportAs(initWithStringAttributes,
-(id) jsinitWithString: (NSString *) str attributes: (NSDictionary *) attrs );
-(BOOL) isEqualToAttributedString: (NSAttributedString *) other ;
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) str );
-(NSAttributedString *) attributedSubstringFromRange: (NSRange) range ;
@end
@protocol NSAttributedStringNSExtendedAttributedStringCategoryClassExports<JSExport>
@end
@protocol NSMutableAttributedStringNSExtendedMutableAttributedStringCategoryInstanceExports<JSExport>
@property (readonly,retain) NSMutableString * mutableString;
-(void) setAttributedString: (NSAttributedString *) attrString ;
-(void) insertAttributedString: (NSAttributedString *) attrString atIndex: (NSUInteger) loc ;
-(void) beginEditing;
-(void) addAttribute: (NSAttributedStringKey) name value: (id) value range: (NSRange) range ;
-(void) endEditing;
-(void) removeAttribute: (NSAttributedStringKey) name range: (NSRange) range ;
-(void) appendAttributedString: (NSAttributedString *) attrString ;
-(void) deleteCharactersInRange: (NSRange) range ;
-(void) replaceCharactersInRange: (NSRange) range withAttributedString: (NSAttributedString *) attrString ;
-(void) addAttributes: (NSDictionary *) attrs range: (NSRange) range ;
@end
@protocol NSMutableAttributedStringNSExtendedMutableAttributedStringCategoryClassExports<JSExport>
@end
@protocol NSMutableAttributedStringInstanceExports<JSExport>
-(void) setAttributes: (NSDictionary *) attrs range: (NSRange) range ;
-(void) replaceCharactersInRange: (NSRange) range withString: (NSString *) str ;
@end
@protocol NSMutableAttributedStringClassExports<JSExport>
@end
@protocol NSAttributedStringInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSString * string;
@end
@protocol NSAttributedStringClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop