#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFileHandle_symbols(JSContext*);
@protocol NSFileHandleNSFileHandlePlatformSpecificCategoryInstanceExports<JSExport>
@property (readonly) int fileDescriptor;
JSExportAs(initWithFileDescriptor,
-(id) jsinitWithFileDescriptor: (int) fd );
@end
@protocol NSFileHandleNSFileHandlePlatformSpecificCategoryClassExports<JSExport>
@end
@protocol NSPipeInstanceExports<JSExport>
@property (readonly,retain) NSFileHandle * fileHandleForReading;
@property (readonly,retain) NSFileHandle * fileHandleForWriting;
@end
@protocol NSPipeClassExports<JSExport>
+(NSPipe *) pipe;
@end
@protocol NSFileHandleNSFileHandleAsynchronousAccessCategoryInstanceExports<JSExport>
@property (getter=getJsWriteabilityHandler,setter=setJsWriteabilityHandler:) JSValue* jswriteabilityHandler;
@property (getter=getJsReadabilityHandler,setter=setJsReadabilityHandler:) JSValue* jsreadabilityHandler;
-(void) readToEndOfFileInBackgroundAndNotify;
-(void) readInBackgroundAndNotify;
-(void) readInBackgroundAndNotifyForModes: (NSArray *) modes ;
-(void) waitForDataInBackgroundAndNotifyForModes: (NSArray *) modes ;
-(void) readToEndOfFileInBackgroundAndNotifyForModes: (NSArray *) modes ;
-(void) acceptConnectionInBackgroundAndNotify;
-(void) waitForDataInBackgroundAndNotify;
-(void) acceptConnectionInBackgroundAndNotifyForModes: (NSArray *) modes ;
@end
@protocol NSFileHandleNSFileHandleAsynchronousAccessCategoryClassExports<JSExport>
@end
@protocol NSFileHandleNSFileHandleCreationCategoryInstanceExports<JSExport>
@end
@protocol NSFileHandleNSFileHandleCreationCategoryClassExports<JSExport>
JSExportAs(fileHandleForReadingFromURLError,
+(id) jsfileHandleForReadingFromURL: (NSURL *) url error: (JSValue *) error );
+(id) fileHandleForUpdatingAtPath: (NSString *) path ;
+(NSFileHandle *) fileHandleWithStandardOutput;
JSExportAs(fileHandleForWritingToURLError,
+(id) jsfileHandleForWritingToURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(fileHandleForUpdatingURLError,
+(id) jsfileHandleForUpdatingURL: (NSURL *) url error: (JSValue *) error );
+(id) fileHandleForReadingAtPath: (NSString *) path ;
+(NSFileHandle *) fileHandleWithStandardError;
+(NSFileHandle *) fileHandleWithNullDevice;
+(NSFileHandle *) fileHandleWithStandardInput;
+(id) fileHandleForWritingAtPath: (NSString *) path ;
@end
@protocol NSFileHandleInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSData * availableData;
@property (readonly) unsigned long long offsetInFile;
-(NSData *) readDataToEndOfFile;
-(NSData *) readDataOfLength: (NSUInteger) length ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithFileDescriptorCloseOnDealloc,
-(id) jsinitWithFileDescriptor: (int) fd closeOnDealloc: (BOOL) closeopt );
-(void) writeData: (NSData *) data ;
-(void) synchronizeFile;
-(void) seekToFileOffset: (unsigned long long) offset ;
-(void) truncateFileAtOffset: (unsigned long long) offset ;
-(unsigned long long) seekToEndOfFile;
-(void) closeFile;
@end
@protocol NSFileHandleClassExports<JSExport, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop