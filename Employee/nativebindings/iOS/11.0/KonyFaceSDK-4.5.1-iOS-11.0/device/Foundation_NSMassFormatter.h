#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSMassFormatter_symbols(JSContext*);
@protocol NSMassFormatterInstanceExports<JSExport>
@property () NSFormattingUnitStyle unitStyle;
@property (copy) NSNumberFormatter * numberFormatter;
@property (getter=isForPersonMassUse) BOOL forPersonMassUse;
-(NSString *) stringFromKilograms: (double) numberInKilograms ;
-(NSString *) unitStringFromValue: (double) value unit: (NSMassFormatterUnit) unit ;
-(NSString *) stringFromValue: (double) value unit: (NSMassFormatterUnit) unit ;
@end
@protocol NSMassFormatterClassExports<JSExport>
@end
#pragma clang diagnostic pop