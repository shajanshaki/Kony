#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSPredicate_symbols(JSContext*);
@protocol NSArrayNSPredicateSupportCategoryInstanceExports<JSExport>
-(NSArray *) filteredArrayUsingPredicate: (NSPredicate *) predicate ;
@end
@protocol NSArrayNSPredicateSupportCategoryClassExports<JSExport>
@end
@protocol NSMutableOrderedSetNSPredicateSupportCategoryInstanceExports<JSExport>
-(void) filterUsingPredicate: (NSPredicate *) p ;
@end
@protocol NSMutableOrderedSetNSPredicateSupportCategoryClassExports<JSExport>
@end
@protocol NSPredicateInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,copy) NSString * predicateFormat;
-(id) predicateWithSubstitutionVariables: (NSDictionary *) variables ;
-(BOOL) evaluateWithObject: (id) object ;
-(void) allowEvaluation;
-(BOOL) evaluateWithObject: (id) object substitutionVariables: (NSDictionary *) bindings ;
@end
@protocol NSPredicateClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
JSExportAs(predicateWithFormat,
+(NSPredicate *) jspredicateWithFormat: (NSString *) predicateFormat arguments: (NSArray *) args );
+(NSPredicate *) predicateWithValue: (BOOL) value ;
+(NSPredicate *) predicateWithFormat: (NSString *) predicateFormat argumentArray: (NSArray *) arguments ;
JSExportAs(predicateWithBlock,
+(NSPredicate *) jspredicateWithBlock: (JSValue *) block );
@end
@protocol NSMutableArrayNSPredicateSupportCategoryInstanceExports<JSExport>
-(void) filterUsingPredicate: (NSPredicate *) predicate ;
@end
@protocol NSMutableArrayNSPredicateSupportCategoryClassExports<JSExport>
@end
@protocol NSMutableSetNSPredicateSupportCategoryInstanceExports<JSExport>
-(void) filterUsingPredicate: (NSPredicate *) predicate ;
@end
@protocol NSMutableSetNSPredicateSupportCategoryClassExports<JSExport>
@end
@protocol NSSetNSPredicateSupportCategoryInstanceExports<JSExport>
-(NSSet *) filteredSetUsingPredicate: (NSPredicate *) predicate ;
@end
@protocol NSSetNSPredicateSupportCategoryClassExports<JSExport>
@end
@protocol NSOrderedSetNSPredicateSupportCategoryInstanceExports<JSExport>
-(NSOrderedSet *) filteredOrderedSetUsingPredicate: (NSPredicate *) p ;
@end
@protocol NSOrderedSetNSPredicateSupportCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop