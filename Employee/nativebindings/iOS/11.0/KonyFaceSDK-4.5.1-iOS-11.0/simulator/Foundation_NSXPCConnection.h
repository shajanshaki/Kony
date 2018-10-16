#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSXPCConnection_symbols(JSContext*);
@protocol NSXPCInterfaceInstanceExports<JSExport>
@property (assign) Protocol * protocol;
JSExportAs(setInterfaceForSelectorArgumentIndexOfReply,
-(void) jssetInterface: (NSXPCInterface *) ifc forSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply );
JSExportAs(classesForSelectorArgumentIndexOfReply,
-(NSSet *) jsclassesForSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply );
JSExportAs(setClassesForSelectorArgumentIndexOfReply,
-(void) jssetClasses: (NSSet *) classes forSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply );
JSExportAs(interfaceForSelectorArgumentIndexOfReply,
-(NSXPCInterface *) jsinterfaceForSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply );
@end
@protocol NSXPCInterfaceClassExports<JSExport>
+(NSXPCInterface *) interfaceWithProtocol: (Protocol *) protocol ;
@end
@protocol NSXPCConnectionInstanceExports<JSExport, NSXPCProxyCreatingInstanceExports_>
@property (readonly) au_asid_t auditSessionIdentifier;
@property (retain) id exportedObject;
@property (readonly,retain) NSXPCListenerEndpoint * endpoint;
@property (readonly) gid_t effectiveGroupIdentifier;
@property (readonly) pid_t processIdentifier;
@property (getter=getJsInvalidationHandler,setter=setJsInvalidationHandler:) JSValue* jsinvalidationHandler;
@property (getter=getJsInterruptionHandler,setter=setJsInterruptionHandler:) JSValue* jsinterruptionHandler;
@property (retain) NSXPCInterface * exportedInterface;
@property (readonly) uid_t effectiveUserIdentifier;
@property (retain) NSXPCInterface * remoteObjectInterface;
@property (readonly,retain) id remoteObjectProxy;
@property (readonly,copy) NSString * serviceName;
-(void) invalidate;
-(void) suspend;
JSExportAs(synchronousRemoteObjectProxyWithErrorHandler,
-(id) jssynchronousRemoteObjectProxyWithErrorHandler: (JSValue *) handler );
-(void) resume;
JSExportAs(initWithListenerEndpoint,
-(id) jsinitWithListenerEndpoint: (NSXPCListenerEndpoint *) endpoint );
JSExportAs(remoteObjectProxyWithErrorHandler,
-(id) jsremoteObjectProxyWithErrorHandler: (JSValue *) handler );
@end
@protocol NSXPCConnectionClassExports<JSExport, NSXPCProxyCreatingClassExports_>
@end
@protocol NSXPCListenerEndpointInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSXPCListenerEndpointClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol NSXPCListenerInstanceExports<JSExport>
@property (readonly,retain) NSXPCListenerEndpoint * endpoint;
@property (assign) id delegate;
-(void) suspend;
-(void) invalidate;
-(void) resume;
@end
@protocol NSXPCListenerClassExports<JSExport>
+(NSXPCListener *) anonymousListener;
+(NSXPCListener *) serviceListener;
@end
@protocol NSXPCListenerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(BOOL) listener: (NSXPCListener *) listener shouldAcceptNewConnection: (NSXPCConnection *) newConnection ;
@end
@protocol NSXPCListenerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSXPCProxyCreatingInstanceExports_<JSExport>
-(id) remoteObjectProxy;
JSExportAs(synchronousRemoteObjectProxyWithErrorHandler,
-(id) jssynchronousRemoteObjectProxyWithErrorHandler: (JSValue *) handler );
JSExportAs(remoteObjectProxyWithErrorHandler,
-(id) jsremoteObjectProxyWithErrorHandler: (JSValue *) handler );
@end
@protocol NSXPCProxyCreatingClassExports_<JSExport>
@end
#pragma clang diagnostic pop