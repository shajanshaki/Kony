#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSStream_symbols(JSContext*);
@protocol NSStreamInstanceExports<JSExport>
@property (readonly,copy) NSError * streamError;
@property (readonly) NSStreamStatus streamStatus;
@property (assign) id delegate;
-(BOOL) setProperty: (id) property forKey: (NSStreamPropertyKey) key ;
-(void) scheduleInRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(id) propertyForKey: (NSStreamPropertyKey) key ;
-(void) removeFromRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(void) close;
-(void) open;
@end
@protocol NSStreamClassExports<JSExport>
@end
@protocol NSInputStreamInstanceExports<JSExport>
@property (readonly) BOOL hasBytesAvailable;
JSExportAs(initWithData,
-(id) jsinitWithData: (NSData *) data );
JSExportAs(initWithURL,
-(id) jsinitWithURL: (NSURL *) url );
@end
@protocol NSInputStreamClassExports<JSExport>
@end
@protocol NSInputStreamNSInputStreamExtensionsCategoryInstanceExports<JSExport>
JSExportAs(initWithFileAtPath,
-(id) jsinitWithFileAtPath: (NSString *) path );
@end
@protocol NSInputStreamNSInputStreamExtensionsCategoryClassExports<JSExport>
+(id) inputStreamWithFileAtPath: (NSString *) path ;
+(id) inputStreamWithData: (NSData *) data ;
+(id) inputStreamWithURL: (NSURL *) url ;
@end
@protocol NSStreamNSSocketStreamCreationExtensionsCategoryInstanceExports<JSExport>
@end
@protocol NSStreamNSSocketStreamCreationExtensionsCategoryClassExports<JSExport>
@end
@protocol NSStreamNSStreamBoundPairCreationExtensionsCategoryInstanceExports<JSExport>
@end
@protocol NSStreamNSStreamBoundPairCreationExtensionsCategoryClassExports<JSExport>
@end
@protocol NSOutputStreamInstanceExports<JSExport>
@property (readonly) BOOL hasSpaceAvailable;
-(id) jsinitToMemory;
JSExportAs(initWithURLAppend,
-(id) jsinitWithURL: (NSURL *) url append: (BOOL) shouldAppend );
@end
@protocol NSOutputStreamClassExports<JSExport>
@end
@protocol NSOutputStreamNSOutputStreamExtensionsCategoryInstanceExports<JSExport>
JSExportAs(initToFileAtPathAppend,
-(id) jsinitToFileAtPath: (NSString *) path append: (BOOL) shouldAppend );
@end
@protocol NSOutputStreamNSOutputStreamExtensionsCategoryClassExports<JSExport>
+(id) outputStreamToFileAtPath: (NSString *) path append: (BOOL) shouldAppend ;
+(id) outputStreamToMemory;
+(id) outputStreamWithURL: (NSURL *) url append: (BOOL) shouldAppend ;
@end
@protocol NSStreamDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) stream: (NSStream *) aStream handleEvent: (NSStreamEvent) eventCode ;
@end
@protocol NSStreamDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop