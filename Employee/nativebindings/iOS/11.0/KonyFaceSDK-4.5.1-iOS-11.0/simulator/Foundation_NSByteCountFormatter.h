#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSByteCountFormatter_symbols(JSContext*);
@protocol NSByteCountFormatterInstanceExports<JSExport>
@property () NSByteCountFormatterUnits allowedUnits;
@property () BOOL includesCount;
@property () BOOL includesActualByteCount;
@property () BOOL includesUnit;
@property () BOOL zeroPadsFractionDigits;
@property () BOOL allowsNonnumericFormatting;
@property () NSByteCountFormatterCountStyle countStyle;
@property () NSFormattingContext formattingContext;
@property (getter=isAdaptive) BOOL adaptive;
-(NSString *) stringFromByteCount: (long long) byteCount ;
@end
@protocol NSByteCountFormatterClassExports<JSExport>
+(NSString *) stringFromByteCount: (long long) byteCount countStyle: (NSByteCountFormatterCountStyle) countStyle ;
@end
#pragma clang diagnostic pop