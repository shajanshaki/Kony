#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSExpression_symbols(JSContext*);
@protocol NSExpressionInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,copy) NSString * function;
@property (readonly,copy) NSExpression * trueExpression;
@property (readonly,retain) id constantValue;
@property (readonly,copy) NSExpression * leftExpression;
@property (readonly,getter=getJsExpressionBlock) JSValue* jsexpressionBlock;
@property (readonly) NSExpressionType expressionType;
@property (readonly,copy) NSExpression * falseExpression;
@property (readonly,copy) NSPredicate * predicate;
@property (readonly,retain) id collection;
@property (readonly,copy) NSExpression * rightExpression;
@property (readonly,copy) NSExpression * operand;
@property (readonly,copy) NSArray * arguments;
@property (readonly,copy) NSString * variable;
@property (readonly,copy) NSString * keyPath;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(id) expressionValueWithObject: (id) object context: (NSMutableDictionary *) context ;
-(void) allowEvaluation;
JSExportAs(initWithExpressionType,
-(id) jsinitWithExpressionType: (NSExpressionType) type );
@end
@protocol NSExpressionClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
+(NSExpression *) expressionForKeyPath: (NSString *) keyPath ;
+(NSExpression *) expressionForConditional: (NSPredicate *) predicate trueExpression: (NSExpression *) trueExpression falseExpression: (NSExpression *) falseExpression ;
JSExportAs(expressionWithFormat,
+(NSExpression *) jsexpressionWithFormat: (NSString *) expressionFormat arguments: (NSArray *) args );
+(NSExpression *) expressionForUnionSet: (NSExpression *) left with: (NSExpression *) right ;
+(NSExpression *) expressionForVariable: (NSString *) string ;
+(NSExpression *) expressionWithFormat: (NSString *) expressionFormat argumentArray: (NSArray *) arguments ;
+(NSExpression *) expressionForConstantValue: (id) obj ;
+(NSExpression *) expressionForSubquery: (NSExpression *) expression usingIteratorVariable: (NSString *) variable predicate: (NSPredicate *) predicate ;
+(NSExpression *) expressionForFunction: (NSString *) name arguments: (NSArray *) parameters ;
+(NSExpression *) expressionForAggregate: (NSArray *) subexpressions ;
+(NSExpression *) expressionForAnyKey;
+(NSExpression *) expressionForIntersectSet: (NSExpression *) left with: (NSExpression *) right ;
JSExportAs(expressionForBlockArguments,
+(NSExpression *) jsexpressionForBlock: (JSValue *) block arguments: (NSArray *) arguments );
+(NSExpression *) expressionForFunction: (NSExpression *) target selectorName: (NSString *) name arguments: (NSArray *) parameters ;
+(NSExpression *) expressionForEvaluatedObject;
+(NSExpression *) expressionForMinusSet: (NSExpression *) left with: (NSExpression *) right ;
@end
#pragma clang diagnostic pop