#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLCredentialStorage_symbols(JSContext*);
@protocol NSURLCredentialStorageNSURLSessionTaskAdditionsCategoryInstanceExports<JSExport>
-(void) setDefaultCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) protectionSpace task: (NSURLSessionTask *) task ;
JSExportAs(getCredentialsForProtectionSpaceTaskCompletionHandler,
-(void) jsgetCredentialsForProtectionSpace: (NSURLProtectionSpace *) protectionSpace task: (NSURLSessionTask *) task completionHandler: (JSValue *) completionHandler );
-(void) removeCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) protectionSpace options: (NSDictionary *) options task: (NSURLSessionTask *) task ;
-(void) setCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) protectionSpace task: (NSURLSessionTask *) task ;
JSExportAs(getDefaultCredentialForProtectionSpaceTaskCompletionHandler,
-(void) jsgetDefaultCredentialForProtectionSpace: (NSURLProtectionSpace *) space task: (NSURLSessionTask *) task completionHandler: (JSValue *) completionHandler );
@end
@protocol NSURLCredentialStorageNSURLSessionTaskAdditionsCategoryClassExports<JSExport>
@end
@protocol NSURLCredentialStorageInstanceExports<JSExport>
@property (readonly,copy) NSDictionary * allCredentials;
-(void) setCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) space ;
-(void) removeCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) space options: (NSDictionary *) options ;
-(void) removeCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) space ;
-(NSURLCredential *) defaultCredentialForProtectionSpace: (NSURLProtectionSpace *) space ;
-(void) setDefaultCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) space ;
-(NSDictionary *) credentialsForProtectionSpace: (NSURLProtectionSpace *) space ;
@end
@protocol NSURLCredentialStorageClassExports<JSExport>
+(NSURLCredentialStorage *) sharedCredentialStorage;
@end
#pragma clang diagnostic pop