#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSUserDefaults_symbols(JSContext*);
@protocol NSUserDefaultsInstanceExports<JSExport>
@property (readonly,copy) NSArray * volatileDomainNames;
-(double) doubleForKey: (NSString *) defaultName ;
-(NSDictionary *) volatileDomainForName: (NSString *) domainName ;
-(void) setInteger: (NSInteger) value forKey: (NSString *) defaultName ;
-(void) setDouble: (double) value forKey: (NSString *) defaultName ;
-(void) setURL: (NSURL *) url forKey: (NSString *) defaultName ;
-(void) setBool: (BOOL) value forKey: (NSString *) defaultName ;
-(void) setFloat: (float) value forKey: (NSString *) defaultName ;
-(NSArray *) stringArrayForKey: (NSString *) defaultName ;
-(void) addSuiteNamed: (NSString *) suiteName ;
-(NSURL *) URLForKey: (NSString *) defaultName ;
-(void) setPersistentDomain: (NSDictionary *) domain forName: (NSString *) domainName ;
-(BOOL) synchronize;
JSExportAs(initWithSuiteName,
-(id) jsinitWithSuiteName: (NSString *) suitename );
-(id) jsinit;
JSExportAs(initWithUser,
-(id) jsinitWithUser: (NSString *) username );
-(NSString *) stringForKey: (NSString *) defaultName ;
-(void) removeVolatileDomainForName: (NSString *) domainName ;
-(NSInteger) integerForKey: (NSString *) defaultName ;
-(void) setVolatileDomain: (NSDictionary *) domain forName: (NSString *) domainName ;
-(void) removeSuiteNamed: (NSString *) suiteName ;
-(void) setObject: (id) value forKey: (NSString *) defaultName ;
-(void) removePersistentDomainForName: (NSString *) domainName ;
-(void) removeObjectForKey: (NSString *) defaultName ;
-(NSDictionary *) dictionaryForKey: (NSString *) defaultName ;
-(BOOL) objectIsForcedForKey: (NSString *) key ;
-(NSArray *) persistentDomainNames;
-(BOOL) objectIsForcedForKey: (NSString *) key inDomain: (NSString *) domain ;
-(BOOL) boolForKey: (NSString *) defaultName ;
-(NSDictionary *) dictionaryRepresentation;
-(NSDictionary *) persistentDomainForName: (NSString *) domainName ;
-(NSData *) dataForKey: (NSString *) defaultName ;
-(void) registerDefaults: (NSDictionary *) registrationDictionary ;
-(NSArray *) arrayForKey: (NSString *) defaultName ;
-(float) floatForKey: (NSString *) defaultName ;
-(id) objectForKey: (NSString *) defaultName ;
@end
@protocol NSUserDefaultsClassExports<JSExport>
+(void) resetStandardUserDefaults;
+(NSUserDefaults *) standardUserDefaults;
@end
#pragma clang diagnostic pop