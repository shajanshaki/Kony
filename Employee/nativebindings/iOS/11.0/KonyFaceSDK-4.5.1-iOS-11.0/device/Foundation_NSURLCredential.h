#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLCredential_symbols(JSContext*);
@protocol NSURLCredentialNSInternetPasswordCategoryInstanceExports<JSExport>
@property (readonly) BOOL hasPassword;
@property (readonly,copy) NSString * password;
@property (readonly,copy) NSString * user;
JSExportAs(initWithUserPasswordPersistence,
-(id) jsinitWithUser: (NSString *) user password: (NSString *) password persistence: (NSURLCredentialPersistence) persistence );
@end
@protocol NSURLCredentialNSInternetPasswordCategoryClassExports<JSExport>
+(NSURLCredential *) credentialWithUser: (NSString *) user password: (NSString *) password persistence: (NSURLCredentialPersistence) persistence ;
@end
@protocol NSURLCredentialInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly) NSURLCredentialPersistence persistence;
@end
@protocol NSURLCredentialClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
@end
@protocol NSURLCredentialNSClientCertificateCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * certificates;
@property (readonly) id identity;
JSExportAs(initWithIdentityCertificatesPersistence,
-(id) jsinitWithIdentity: (id) identity certificates: (NSArray *) certArray persistence: (NSURLCredentialPersistence) persistence );
@end
@protocol NSURLCredentialNSClientCertificateCategoryClassExports<JSExport>
+(NSURLCredential *) credentialWithIdentity: (id) identity certificates: (NSArray *) certArray persistence: (NSURLCredentialPersistence) persistence ;
@end
@protocol NSURLCredentialNSServerTrustCategoryInstanceExports<JSExport>
JSExportAs(initWithTrust,
-(id) jsinitWithTrust: (id) trust );
@end
@protocol NSURLCredentialNSServerTrustCategoryClassExports<JSExport>
+(NSURLCredential *) credentialForTrust: (id) trust ;
@end
#pragma clang diagnostic pop