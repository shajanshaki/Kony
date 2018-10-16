#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSLengthFormatter_symbols(JSContext*);
@protocol NSLengthFormatterInstanceExports<JSExport>
@property () NSFormattingUnitStyle unitStyle;
@property (getter=isForPersonHeightUse) BOOL forPersonHeightUse;
@property (copy) NSNumberFormatter * numberFormatter;
-(NSString *) stringFromMeters: (double) numberInMeters ;
-(NSString *) unitStringFromValue: (double) value unit: (NSLengthFormatterUnit) unit ;
-(NSString *) stringFromValue: (double) value unit: (NSLengthFormatterUnit) unit ;
@end
@protocol NSLengthFormatterClassExports<JSExport>
@end
#pragma clang diagnostic pop