#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSComparisonPredicate_symbols(JSContext*);
@protocol NSComparisonPredicateInstanceExports<JSExport>
@property (readonly,getter=getJsCustomSelector) NSString* jscustomSelector;
@property (readonly,retain) NSExpression * leftExpression;
@property (readonly) NSComparisonPredicateModifier comparisonPredicateModifier;
@property (readonly,retain) NSExpression * rightExpression;
@property (readonly) NSComparisonPredicateOptions options;
@property (readonly) NSPredicateOperatorType predicateOperatorType;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithLeftExpressionRightExpressionModifierTypeOptions,
-(id) jsinitWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs modifier: (NSComparisonPredicateModifier) modifier type: (NSPredicateOperatorType) type options: (NSComparisonPredicateOptions) options );
JSExportAs(initWithLeftExpressionRightExpressionCustomSelector,
-(id) jsinitWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs customSelector: (NSString *) selector );
@end
@protocol NSComparisonPredicateClassExports<JSExport>
JSExportAs(predicateWithLeftExpressionRightExpressionCustomSelector,
+(NSComparisonPredicate *) jspredicateWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs customSelector: (NSString *) selector );
+(NSComparisonPredicate *) predicateWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs modifier: (NSComparisonPredicateModifier) modifier type: (NSPredicateOperatorType) type options: (NSComparisonPredicateOptions) options ;
@end
#pragma clang diagnostic pop