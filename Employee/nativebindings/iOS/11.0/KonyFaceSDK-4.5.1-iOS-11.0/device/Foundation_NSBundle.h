#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSBundle_symbols(JSContext*);
@protocol NSBundleResourceRequestInstanceExports<JSExport, NSProgressReportingInstanceExports_>
@property (readonly,strong) NSProgress * progress;
@property () double loadingPriority;
@property (readonly,strong) NSBundle * bundle;
@property (readonly,copy) NSSet * tags;
JSExportAs(initWithTags,
-(id) jsinitWithTags: (NSSet *) tags );
JSExportAs(initWithTagsBundle,
-(id) jsinitWithTags: (NSSet *) tags bundle: (NSBundle *) bundle );
JSExportAs(conditionallyBeginAccessingResourcesWithCompletionHandler,
-(void) jsconditionallyBeginAccessingResourcesWithCompletionHandler: (JSValue *) completionHandler );
-(void) endAccessingResources;
JSExportAs(beginAccessingResourcesWithCompletionHandler,
-(void) jsbeginAccessingResourcesWithCompletionHandler: (JSValue *) completionHandler );
@end
@protocol NSBundleResourceRequestClassExports<JSExport, NSProgressReportingClassExports_>
@end
@protocol NSBundleInstanceExports<JSExport>
@property (readonly,copy) NSDictionary * localizedInfoDictionary;
@property (readonly,copy) NSURL * sharedFrameworksURL;
@property (readonly,copy) NSString * privateFrameworksPath;
@property (getter=isLoaded,readonly) BOOL loaded;
@property (readonly,copy) NSURL * bundleURL;
@property (readonly,copy) NSString * sharedSupportPath;
@property (readonly,copy) NSString * builtInPlugInsPath;
@property (readonly,copy) NSString * developmentLocalization;
@property (readonly,copy) NSArray * preferredLocalizations;
@property (readonly,copy) NSArray * executableArchitectures;
@property (readonly,copy) NSString * sharedFrameworksPath;
@property (readonly,copy) NSDictionary * infoDictionary;
@property (readonly,copy) NSURL * executableURL;
@property (readonly,copy) NSString * bundlePath;
@property (readonly,copy) NSURL * builtInPlugInsURL;
@property (readonly,copy) NSString * resourcePath;
@property (readonly,getter=getJsPrincipalClass) JSValue* jsprincipalClass;
@property (readonly,copy) NSString * executablePath;
@property (readonly,copy) NSArray * localizations;
@property (readonly,copy) NSURL * appStoreReceiptURL;
@property (readonly,copy) NSURL * resourceURL;
@property (readonly,copy) NSURL * sharedSupportURL;
@property (readonly,copy) NSURL * privateFrameworksURL;
@property (readonly,copy) NSString * bundleIdentifier;
-(BOOL) load;
-(NSArray *) URLsForResourcesWithExtension: (NSString *) ext subdirectory: (NSString *) subpath ;
-(NSString *) pathForResource: (NSString *) name ofType: (NSString *) ext inDirectory: (NSString *) subpath forLocalization: (NSString *) localizationName ;
-(NSString *) pathForAuxiliaryExecutable: (NSString *) executableName ;
-(NSURL *) URLForAuxiliaryExecutable: (NSString *) executableName ;
-(NSString *) localizedStringForKey: (NSString *) key value: (NSString *) value table: (NSString *) tableName ;
JSExportAs(initWithPath,
-(id) jsinitWithPath: (NSString *) path );
-(id) objectForInfoDictionaryKey: (NSString *) key ;
-(NSArray *) pathsForResourcesOfType: (NSString *) ext inDirectory: (NSString *) subpath forLocalization: (NSString *) localizationName ;
-(NSArray *) URLsForResourcesWithExtension: (NSString *) ext subdirectory: (NSString *) subpath localization: (NSString *) localizationName ;
-(id) classNamed: (NSString *) className ;
JSExportAs(loadAndReturnError,
-(BOOL) jsloadAndReturnError: (JSValue *) error );
JSExportAs(preflightAndReturnError,
-(BOOL) jspreflightAndReturnError: (JSValue *) error );
-(NSURL *) URLForResource: (NSString *) name withExtension: (NSString *) ext subdirectory: (NSString *) subpath localization: (NSString *) localizationName ;
-(NSArray *) pathsForResourcesOfType: (NSString *) ext inDirectory: (NSString *) subpath ;
-(NSString *) pathForResource: (NSString *) name ofType: (NSString *) ext inDirectory: (NSString *) subpath ;
-(NSURL *) URLForResource: (NSString *) name withExtension: (NSString *) ext ;
-(NSURL *) URLForResource: (NSString *) name withExtension: (NSString *) ext subdirectory: (NSString *) subpath ;
-(BOOL) unload;
JSExportAs(initWithURL,
-(id) jsinitWithURL: (NSURL *) url );
-(NSString *) pathForResource: (NSString *) name ofType: (NSString *) ext ;
@end
@protocol NSBundleClassExports<JSExport>
+(NSString *) pathForResource: (NSString *) name ofType: (NSString *) ext inDirectory: (NSString *) bundlePath ;
+(NSArray *) preferredLocalizationsFromArray: (NSArray *) localizationsArray ;
+(id) bundleWithPath: (NSString *) path ;
+(NSArray *) allFrameworks;
+(NSURL *) URLForResource: (NSString *) name withExtension: (NSString *) ext subdirectory: (NSString *) subpath inBundleWithURL: (NSURL *) bundleURL ;
JSExportAs(bundleForClass,
+(NSBundle *) jsbundleForClass: (JSValue *) aClass );
+(NSArray *) URLsForResourcesWithExtension: (NSString *) ext subdirectory: (NSString *) subpath inBundleWithURL: (NSURL *) bundleURL ;
+(id) bundleWithURL: (NSURL *) url ;
+(NSArray *) preferredLocalizationsFromArray: (NSArray *) localizationsArray forPreferences: (NSArray *) preferencesArray ;
+(NSArray *) allBundles;
+(NSArray *) pathsForResourcesOfType: (NSString *) ext inDirectory: (NSString *) bundlePath ;
+(NSBundle *) bundleWithIdentifier: (NSString *) identifier ;
+(NSBundle *) mainBundle;
@end
@protocol NSBundleNSBundleResourceRequestAdditionsCategoryInstanceExports<JSExport>
-(void) setPreservationPriority: (double) priority forTags: (NSSet *) tags ;
-(double) preservationPriorityForTag: (NSString *) tag ;
@end
@protocol NSBundleNSBundleResourceRequestAdditionsCategoryClassExports<JSExport>
@end
@protocol NSStringNSBundleExtensionMethodsCategoryInstanceExports<JSExport>
-(NSString *) variantFittingPresentationWidth: (NSInteger) width ;
@end
@protocol NSStringNSBundleExtensionMethodsCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop