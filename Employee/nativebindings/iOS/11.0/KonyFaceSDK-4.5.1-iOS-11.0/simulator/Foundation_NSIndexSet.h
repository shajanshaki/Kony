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
-(BOOL) intersectsIndexesInRange: (NSRange) range ;
-(BOOL) containsIndex: (NSUInteger) value ;
JSExportAs(initWithIndexesInRange,
-(id) jsinitWithIndexesInRange: (NSRange) range );
-(BOOL) containsIndexes: (NSIndexSet *) indexSet ;
-(NSUInteger) indexGreaterThanOrEqualToIndex: (NSUInteger) value ;
JSExportAs(initWithIndex,
-(id) jsinitWithIndex: (NSUInteger) value );
-(NSUInteger) indexGreaterThanIndex: (NSUInteger) value ;
-(BOOL) isEqualToIndexSet: (NSIndexSet *) indexSet ;
-(BOOL) containsIndexesInRange: (NSRange) range ;
-(NSUInteger) countOfIndexesInRange: (NSRange) range ;
-(NSUInteger) indexLessThanIndex: (NSUInteger) value ;
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