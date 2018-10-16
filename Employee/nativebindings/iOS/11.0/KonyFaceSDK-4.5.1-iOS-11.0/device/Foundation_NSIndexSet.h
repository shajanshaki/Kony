#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSIndexSet_symbols(JSContext*);
@protocol NSIndexSetInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSUInteger count;
@property (readonly) NSUInteger firstIndex;
@property (readonly) NSUInteger lastIndex;
JSExportAs(indexPassingTest,
-(NSUInteger) jsindexPassingTest: (JSValue *) predicate );
-(BOOL) intersectsIndexesInRange: (NSRange) range ;
JSExportAs(enumerateIndexesWithOptionsUsingBlock,
-(void) jsenumerateIndexesWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(enumerateRangesInRangeOptionsUsingBlock,
-(void) jsenumerateRangesInRange: (NSRange) range options: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
-(BOOL) containsIndex: (NSUInteger) value ;
JSExportAs(enumerateIndexesInRangeOptionsUsingBlock,
-(void) jsenumerateIndexesInRange: (NSRange) range options: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(indexInRangeOptionsPassingTest,
-(NSUInteger) jsindexInRange: (NSRange) range options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(enumerateIndexesUsingBlock,
-(void) jsenumerateIndexesUsingBlock: (JSValue *) block );
JSExportAs(initWithIndexesInRange,
-(id) jsinitWithIndexesInRange: (NSRange) range );
JSExportAs(indexesWithOptionsPassingTest,
-(NSIndexSet *) jsindexesWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
-(BOOL) containsIndexes: (NSIndexSet *) indexSet ;
-(NSUInteger) indexGreaterThanOrEqualToIndex: (NSUInteger) value ;
JSExportAs(initWithIndex,
-(id) jsinitWithIndex: (NSUInteger) value );
JSExportAs(enumerateRangesWithOptionsUsingBlock,
-(void) jsenumerateRangesWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
-(NSUInteger) indexGreaterThanIndex: (NSUInteger) value ;
JSExportAs(indexesInRangeOptionsPassingTest,
-(NSIndexSet *) jsindexesInRange: (NSRange) range options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
-(BOOL) isEqualToIndexSet: (NSIndexSet *) indexSet ;
JSExportAs(enumerateRangesUsingBlock,
-(void) jsenumerateRangesUsingBlock: (JSValue *) block );
JSExportAs(indexWithOptionsPassingTest,
-(NSUInteger) jsindexWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
-(BOOL) containsIndexesInRange: (NSRange) range ;
-(NSUInteger) countOfIndexesInRange: (NSRange) range ;
-(NSUInteger) indexLessThanIndex: (NSUInteger) value ;
JSExportAs(indexesPassingTest,
-(NSIndexSet *) jsindexesPassingTest: (JSValue *) predicate );
JSExportAs(initWithIndexSet,
-(id) jsinitWithIndexSet: (NSIndexSet *) indexSet );
-(NSUInteger) indexLessThanOrEqualToIndex: (NSUInteger) value ;
@end
@protocol NSIndexSetClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
+(id) indexSetWithIndex: (NSUInteger) value ;
+(id) indexSetWithIndexesInRange: (NSRange) range ;
+(id) indexSet;
@end
@protocol NSMutableIndexSetInstanceExports<JSExport>
-(void) removeIndexes: (NSIndexSet *) indexSet ;
-(void) removeIndexesInRange: (NSRange) range ;
-(void) removeAllIndexes;
-(void) removeIndex: (NSUInteger) value ;
-(void) addIndexesInRange: (NSRange) range ;
-(void) addIndexes: (NSIndexSet *) indexSet ;
-(void) addIndex: (NSUInteger) value ;
-(void) shiftIndexesStartingAtIndex: (NSUInteger) index by: (NSInteger) delta ;
@end
@protocol NSMutableIndexSetClassExports<JSExport>
@end
#pragma clang diagnostic pop