#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSNetServices_symbols(JSContext*);
@protocol NSNetServiceBrowserInstanceExports<JSExport>
@property (assign) id delegate;
@property () BOOL includesPeerToPeer;
-(void) searchForServicesOfType: (NSString *) type inDomain: (NSString *) domainString ;
-(void) scheduleInRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(void) stop;
-(void) searchForRegistrationDomains;
-(id) jsinit;
-(void) removeFromRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(void) searchForBrowsableDomains;
@end
@protocol NSNetServiceBrowserClassExports<JSExport>
@end
@protocol NSNetServiceInstanceExports<JSExport>
@property (readonly,copy) NSString * domain;
@property (readonly,copy) NSString * name;
@property () BOOL includesPeerToPeer;
@property (readonly,copy) NSString * hostName;
@property (assign) id delegate;
@property (readonly,copy) NSString * type;
@property (readonly) NSInteger port;
@property (readonly,copy) NSArray * addresses;
-(void) stopMonitoring;
-(void) scheduleInRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(void) removeFromRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(void) startMonitoring;
-(void) resolveWithTimeout: (NSTimeInterval) timeout ;
-(void) publishWithOptions: (NSNetServiceOptions) options ;
-(void) stop;
JSExportAs(initWithDomainTypeName,
-(id) jsinitWithDomain: (NSString *) domain type: (NSString *) type name: (NSString *) name );
-(NSData *) TXTRecordData;
-(void) resolve;
JSExportAs(initWithDomainTypeNamePort,
-(id) jsinitWithDomain: (NSString *) domain type: (NSString *) type name: (NSString *) name port: (int) port );
-(BOOL) setTXTRecordData: (NSData *) recordData ;
-(void) publish;
@end
@protocol NSNetServiceClassExports<JSExport>
+(NSData *) dataFromTXTRecordDictionary: (NSDictionary *) txtDictionary ;
+(NSDictionary *) dictionaryFromTXTRecordData: (NSData *) txtData ;
@end
@protocol NSNetServiceDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) netService: (NSNetService *) sender didUpdateTXTRecordData: (NSData *) data ;
-(void) netServiceDidStop: (NSNetService *) sender ;
-(void) netServiceWillResolve: (NSNetService *) sender ;
-(void) netService: (NSNetService *) sender didAcceptConnectionWithInputStream: (NSInputStream *) inputStream outputStream: (NSOutputStream *) outputStream ;
-(void) netServiceDidPublish: (NSNetService *) sender ;
-(void) netService: (NSNetService *) sender didNotPublish: (NSDictionary *) errorDict ;
-(void) netService: (NSNetService *) sender didNotResolve: (NSDictionary *) errorDict ;
-(void) netServiceWillPublish: (NSNetService *) sender ;
-(void) netServiceDidResolveAddress: (NSNetService *) sender ;
@end
@protocol NSNetServiceDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSNetServiceBrowserDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) netServiceBrowser: (NSNetServiceBrowser *) browser didFindService: (NSNetService *) service moreComing: (BOOL) moreComing ;
-(void) netServiceBrowser: (NSNetServiceBrowser *) browser didNotSearch: (NSDictionary *) errorDict ;
-(void) netServiceBrowserWillSearch: (NSNetServiceBrowser *) browser ;
-(void) netServiceBrowser: (NSNetServiceBrowser *) browser didFindDomain: (NSString *) domainString moreComing: (BOOL) moreComing ;
-(void) netServiceBrowserDidStopSearch: (NSNetServiceBrowser *) browser ;
-(void) netServiceBrowser: (NSNetServiceBrowser *) browser didRemoveService: (NSNetService *) service moreComing: (BOOL) moreComing ;
-(void) netServiceBrowser: (NSNetServiceBrowser *) browser didRemoveDomain: (NSString *) domainString moreComing: (BOOL) moreComing ;
@end
@protocol NSNetServiceBrowserDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop