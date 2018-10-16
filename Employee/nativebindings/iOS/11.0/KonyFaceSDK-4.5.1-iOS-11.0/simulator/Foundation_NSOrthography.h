#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSOrthography_symbols(JSContext*);
@protocol NSOrthographyNSOrthographyCreationCategoryInstanceExports<JSExport>
@end
@protocol NSOrthographyNSOrthographyCreationCategoryClassExports<JSExport>
+(id) orthographyWithDominantScript: (NSString *) script languageMap: (NSDictionary *) map ;
@end
@protocol NSOrthographyInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSString * dominantScript;
@property (readonly,copy) NSDictionary * languageMap;
JSExportAs(initWithDominantScriptLanguageMap,
-(id) jsinitWithDominantScript: (NSString *) script languageMap: (NSDictionary *) map );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSOrthographyClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSOrthographyNSOrthographyExtendedCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * dominantLanguage;
@property (readonly,copy) NSArray * allLanguages;
@property (readonly,copy) NSArray * allScripts;
-(NSString *) dominantLanguageForScript: (NSString *) script ;
-(NSArray *) languagesForScript: (NSString *) script ;
@end
@protocol NSOrthographyNSOrthographyExtendedCategoryClassExports<JSExport>
+(id) defaultOrthographyForLanguage: (NSString *) language ;
@end
#pragma clang diagnostic pop