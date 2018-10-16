#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLProtectionSpace_symbols(JSContext*);
@protocol NSURLProtectionSpaceNSClientCertificateSpaceCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * distinguishedNames;
@end
@protocol NSURLProtectionSpaceNSClientCertificateSpaceCategoryClassExports<JSExport>
@end
@protocol NSURLProtectionSpaceInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,copy) NSString * proxyType;
@property (readonly,copy) NSString * realm;
@property (readonly,copy) NSString * host;
@property (readonly) BOOL receivesCredentialSecurely;
@property (readonly,copy) NSString * protocol;
@property (readonly,copy) NSString * authenticationMethod;
@property (readonly) NSInteger port;
@property (readonly) BOOL isProxy;
JSExportAs(initWithProxyHostPortTypeRealmAuthenticationMethod,
-(id) jsinitWithProxyHost: (NSString *) host port: (NSInteger) port type: (NSString *) type realm: (NSString *) realm authenticationMethod: (NSString *) authenticationMethod );
JSExportAs(initWithHostPortProtocolRealmAuthenticationMethod,
-(id) jsinitWithHost: (NSString *) host port: (NSInteger) port protocol: (NSString *) protocol realm: (NSString *) realm authenticationMethod: (NSString *) authenticationMethod );
@end
@protocol NSURLProtectionSpaceClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
@end
@protocol NSURLProtectionSpaceNSServerTrustValidationSpaceCategoryInstanceExports<JSExport>
@property (readonly) id serverTrust;
@end
@protocol NSURLProtectionSpaceNSServerTrustValidationSpaceCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop