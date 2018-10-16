#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSMeasurementFormatter_symbols(JSContext*);
@protocol NSMeasurementFormatterInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property () NSFormattingUnitStyle unitStyle;
@property (copy) NSLocale * locale;
@property () NSMeasurementFormatterUnitOptions unitOptions;
@property (copy) NSNumberFormatter * numberFormatter;
-(NSString *) stringFromMeasurement: (NSMeasurement *) measurement ;
-(NSString *) stringFromUnit: (NSUnit *) unit ;
@end
@protocol NSMeasurementFormatterClassExports<JSExport, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop