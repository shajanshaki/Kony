#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSValueTransformer_symbols(JSContext*);
@protocol NSValueTransformerInstanceExports<JSExport>
-(id) transformedValue: (id) value ;
-(id) reverseTransformedValue: (id) value ;
@end
@protocol NSValueTransformerClassExports<JSExport>
+(BOOL) allowsReverseTransformation;
+(NSArray *) valueTransformerNames;
+(NSValueTransformer *) valueTransformerForName: (NSValueTransformerName) name ;
+(id) transformedValueClass;
+(void) setValueTransformer: (NSValueTransformer *) transformer forName: (NSValueTransformerName) name ;
@end
#pragma clang diagnostic pop