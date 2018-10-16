#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSProcessInfo_symbols(JSContext*);
@interface JSValue (Foundation_NSProcessInfo)
+(JSValue*) valueWithNSOperatingSystemVersion: (NSOperatingSystemVersion) s inContext: (JSContext*) context;
-(NSOperatingSystemVersion) toNSOperatingSystemVersion;
@end
@protocol NSProcessInfoNSProcessInfoActivityCategoryInstanceExports<JSExport>
JSExportAs(performExpiringActivityWithReasonUsingBlock,
-(void) jsperformExpiringActivityWithReason: (NSString *) reason usingBlock: (JSValue *) block );
-(void) endActivity: (id) activity ;
JSExportAs(performActivityWithOptionsReasonUsingBlock,
-(void) jsperformActivityWithOptions: (NSActivityOptions) options reason: (NSString *) reason usingBlock: (JSValue *) block );
-(id) beginActivityWithOptions: (NSActivityOptions) options reason: (NSString *) reason ;
@end
@protocol NSProcessInfoNSProcessInfoActivityCategoryClassExports<JSExport>
@end
@protocol NSProcessInfoNSUserInformationCategoryInstanceExports<JSExport>
@end
@protocol NSProcessInfoNSUserInformationCategoryClassExports<JSExport>
@end
@protocol NSProcessInfoNSProcessInfoPowerStateCategoryInstanceExports<JSExport>
@property (getter=isLowPowerModeEnabled,readonly) BOOL lowPowerModeEnabled;
@end
@protocol NSProcessInfoNSProcessInfoPowerStateCategoryClassExports<JSExport>
@end
@protocol NSProcessInfoInstanceExports<JSExport>
@property (readonly) NSTimeInterval systemUptime;
@property (readonly) unsigned long long physicalMemory;
@property (readonly,copy) NSString * hostName;
@property (readonly) NSUInteger processorCount;
@property (readonly,copy) NSDictionary * environment;
@property (copy) NSString * processName;
@property (readonly) int processIdentifier;
@property (readonly,copy) NSArray * arguments;
@property (readonly) NSOperatingSystemVersion operatingSystemVersion;
@property (readonly,copy) NSString * globallyUniqueString;
@property (readonly) NSUInteger activeProcessorCount;
@property (readonly,copy) NSString * operatingSystemVersionString;
-(NSString *) operatingSystemName;
-(BOOL) isOperatingSystemAtLeastVersion: (NSOperatingSystemVersion) version ;
-(NSUInteger) operatingSystem;
@end
@protocol NSProcessInfoClassExports<JSExport>
+(NSProcessInfo *) processInfo;
@end
@protocol NSProcessInfoNSProcessInfoThermalStateCategoryInstanceExports<JSExport>
@property (readonly) NSProcessInfoThermalState thermalState;
@end
@protocol NSProcessInfoNSProcessInfoThermalStateCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop