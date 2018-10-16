#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSMeasurement_symbols(JSContext*);
@protocol NSMeasurementInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) double doubleValue;
-(NSMeasurement *) measurementByConvertingToUnit: (NSUnit *) unit ;
-(BOOL) canBeConvertedToUnit: (NSUnit *) unit ;
-(NSMeasurement *) measurementByAddingMeasurement: (NSMeasurement *) measurement ;
-(NSMeasurement *) measurementBySubtractingMeasurement: (NSMeasurement *) measurement ;
@end
@protocol NSMeasurementClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop