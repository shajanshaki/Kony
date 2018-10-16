#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSSortDescriptor_symbols(JSContext*);
@protocol NSArrayNSSortDescriptorSortingCategoryInstanceExports<JSExport>
-(NSArray *) sortedArrayUsingDescriptors: (NSArray *) sortDescriptors ;
@end
@protocol NSArrayNSSortDescriptorSortingCategoryClassExports<JSExport>
@end
@protocol NSOrderedSetNSKeyValueSortingCategoryInstanceExports<JSExport>
-(NSArray *) sortedArrayUsingDescriptors: (NSArray *) sortDescriptors ;
@end
@protocol NSOrderedSetNSKeyValueSortingCategoryClassExports<JSExport>
@end
@protocol NSSetNSSortDescriptorSortingCategoryInstanceExports<JSExport>
-(NSArray *) sortedArrayUsingDescriptors: (NSArray *) sortDescriptors ;
@end
@protocol NSSetNSSortDescriptorSortingCategoryClassExports<JSExport>
@end
@protocol NSSortDescriptorInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,getter=getJsSelector) NSString* jsselector;
@property (readonly,retain) id reversedSortDescriptor;
@property (readonly,getter=getJsComparator) JSValue* jscomparator;
@property (readonly,copy) NSString * key;
@property (readonly) BOOL ascending;
JSExportAs(initWithKeyAscending,
-(id) jsinitWithKey: (NSString *) key ascending: (BOOL) ascending );
JSExportAs(initWithKeyAscendingComparator,
-(id) jsinitWithKey: (NSString *) key ascending: (BOOL) ascending comparator: (JSValue *) cmptr );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(NSComparisonResult) compareObject: (id) object1 toObject: (id) object2 ;
JSExportAs(initWithKeyAscendingSelector,
-(id) jsinitWithKey: (NSString *) key ascending: (BOOL) ascending selector: (NSString *) selector );
-(void) allowEvaluation;
@end
@protocol NSSortDescriptorClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
JSExportAs(sortDescriptorWithKeyAscendingSelector,
+(id) jssortDescriptorWithKey: (NSString *) key ascending: (BOOL) ascending selector: (NSString *) selector );
+(id) sortDescriptorWithKey: (NSString *) key ascending: (BOOL) ascending ;
JSExportAs(sortDescriptorWithKeyAscendingComparator,
+(id) jssortDescriptorWithKey: (NSString *) key ascending: (BOOL) ascending comparator: (JSValue *) cmptr );
@end
@protocol NSMutableArrayNSSortDescriptorSortingCategoryInstanceExports<JSExport>
-(void) sortUsingDescriptors: (NSArray *) sortDescriptors ;
@end
@protocol NSMutableArrayNSSortDescriptorSortingCategoryClassExports<JSExport>
@end
@protocol NSMutableOrderedSetNSKeyValueSortingCategoryInstanceExports<JSExport>
-(void) sortUsingDescriptors: (NSArray *) sortDescriptors ;
@end
@protocol NSMutableOrderedSetNSKeyValueSortingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop