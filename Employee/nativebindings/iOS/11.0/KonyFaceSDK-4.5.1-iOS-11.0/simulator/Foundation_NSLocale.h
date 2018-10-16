#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSLocale_symbols(JSContext*);
@protocol NSLocaleNSExtendedLocaleCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * languageCode;
@property (readonly,copy) NSString * calendarIdentifier;
@property (readonly,copy) NSString * countryCode;
@property (readonly,copy) NSCharacterSet * exemplarCharacterSet;
@property (readonly,copy) NSString * groupingSeparator;
@property (readonly,copy) NSString * alternateQuotationEndDelimiter;
@property (readonly,copy) NSString * currencyCode;
@property (readonly,copy) NSString * collationIdentifier;
@property (readonly,copy) NSString * collatorIdentifier;
@property (readonly,copy) NSString * variantCode;
@property (readonly,copy) NSString * quotationBeginDelimiter;
@property (readonly,copy) NSString * localeIdentifier;
@property (readonly,copy) NSString * scriptCode;
@property (readonly,copy) NSString * alternateQuotationBeginDelimiter;
@property (readonly,copy) NSString * quotationEndDelimiter;
@property (readonly,copy) NSString * currencySymbol;
@property (readonly,copy) NSString * decimalSeparator;
@property (readonly) BOOL usesMetricSystem;
-(NSString *) localizedStringForLocaleIdentifier: (NSString *) localeIdentifier ;
-(NSString *) localizedStringForCalendarIdentifier: (NSString *) calendarIdentifier ;
-(NSString *) localizedStringForCollationIdentifier: (NSString *) collationIdentifier ;
-(NSString *) localizedStringForScriptCode: (NSString *) scriptCode ;
-(NSString *) localizedStringForCountryCode: (NSString *) countryCode ;
-(NSString *) localizedStringForLanguageCode: (NSString *) languageCode ;
-(NSString *) localizedStringForVariantCode: (NSString *) variantCode ;
-(NSString *) localizedStringForCurrencyCode: (NSString *) currencyCode ;
-(NSString *) localizedStringForCollatorIdentifier: (NSString *) collatorIdentifier ;
@end
@protocol NSLocaleNSExtendedLocaleCategoryClassExports<JSExport>
@end
@protocol NSLocaleNSLocaleGeneralInfoCategoryInstanceExports<JSExport>
@end
@protocol NSLocaleNSLocaleGeneralInfoCategoryClassExports<JSExport>
+(NSString *) canonicalLocaleIdentifierFromString: (NSString *) string ;
+(NSArray *) ISOLanguageCodes;
+(NSArray *) commonISOCurrencyCodes;
+(uint32_t) windowsLocaleCodeFromLocaleIdentifier: (NSString *) localeIdentifier ;
+(NSArray *) ISOCountryCodes;
+(NSString *) canonicalLanguageIdentifierFromString: (NSString *) string ;
+(NSString *) localeIdentifierFromComponents: (NSDictionary *) dict ;
+(NSArray *) preferredLanguages;
+(NSLocaleLanguageDirection) lineDirectionForLanguage: (NSString *) isoLangCode ;
+(NSLocaleLanguageDirection) characterDirectionForLanguage: (NSString *) isoLangCode ;
+(NSArray *) availableLocaleIdentifiers;
+(NSDictionary *) componentsFromLocaleIdentifier: (NSString *) string ;
+(NSString *) localeIdentifierFromWindowsLocaleCode: (uint32_t) lcid ;
+(NSArray *) ISOCurrencyCodes;
@end
@protocol NSLocaleNSLocaleCreationCategoryInstanceExports<JSExport>
@end
@protocol NSLocaleNSLocaleCreationCategoryClassExports<JSExport>
+(NSLocale *) currentLocale;
+(NSLocale *) autoupdatingCurrentLocale;
+(id) localeWithLocaleIdentifier: (NSString *) ident ;
+(NSLocale *) systemLocale;
@end
@protocol NSLocaleInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
JSExportAs(initWithLocaleIdentifier,
-(id) jsinitWithLocaleIdentifier: (NSString *) string );
-(NSString *) displayNameForKey: (NSLocaleKey) key value: (id) value ;
-(id) objectForKey: (NSLocaleKey) key ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSLocaleClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop