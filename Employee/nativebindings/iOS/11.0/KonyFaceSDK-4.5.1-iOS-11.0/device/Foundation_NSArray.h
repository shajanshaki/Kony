#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSArray_symbols(JSContext*);
@protocol NSMutableArrayNSExtendedMutableArrayCategoryInstanceExports<JSExport>
-(void) replaceObjectsInRange: (NSRange) range withObjectsFromArray: (NSArray *) otherArray ;
-(void) replaceObjectsAtIndexes: (NSIndexSet *) indexes withObjects: (NSArray *) objects ;
-(void) removeObject: (id) anObject inRange: (NSRange) range ;
-(void) removeObject: (id) anObject ;
-(void) exchangeObjectAtIndex: (NSUInteger) idx1 withObjectAtIndex: (NSUInteger) idx2 ;
-(void) addObjectsFromArray: (NSArray *) otherArray ;
JSExportAs(sortWithOptionsUsingComparator,
-(void) jssortWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
-(void) setArray: (NSArray *) otherArray ;
-(void) removeObjectsInArray: (NSArray *) otherArray ;
-(void) removeObjectIdenticalTo: (id) anObject ;
-(void) removeObjectsAtIndexes: (NSIndexSet *) indexes ;
-(void) removeAllObjects;
JSExportAs(sortUsingComparator,
-(void) jssortUsingComparator: (JSValue *) cmptr );
-(void) removeObjectIdenticalTo: (id) anObject inRange: (NSRange) range ;
-(void) insertObjects: (NSArray *) objects atIndexes: (NSIndexSet *) indexes ;
-(void) replaceObjectsInRange: (NSRange) range withObjectsFromArray: (NSArray *) otherArray range: (NSRange) otherRange ;
-(void) setObject: (id) obj atIndexedSubscript: (NSUInteger) idx ;
JSExportAs(sortUsingSelector,
-(void) jssortUsingSelector: (NSString *) comparator );
-(void) removeObjectsInRange: (NSRange) range ;
@end
@protocol NSMutableArrayNSExtendedMutableArrayCategoryClassExports<JSExport>
@end
@protocol NSArrayNSDeprecatedCategoryInstanceExports<JSExport>
-(BOOL) writeToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile ;
JSExportAs(initWithContentsOfURL,
-(NSArray *) jsinitWithContentsOfURL: (NSURL *) url );
-(BOOL) writeToURL: (NSURL *) url atomically: (BOOL) atomically ;
JSExportAs(initWithContentsOfFile,
-(NSArray *) jsinitWithContentsOfFile: (NSString *) path );
@end
@protocol NSArrayNSDeprecatedCategoryClassExports<JSExport>
+(NSArray *) arrayWithContentsOfURL: (NSURL *) url ;
+(NSArray *) arrayWithContentsOfFile: (NSString *) path ;
@end
@protocol NSArrayNSExtendedArrayCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) id firstObject;
@property (readonly,copy) NSString * description;
@property (readonly,copy) NSData * sortedArrayHint;
@property (readonly,nonatomic) id lastObject;
-(BOOL) containsObject: (id) anObject ;
JSExportAs(sortedArrayUsingComparator,
-(NSArray *) jssortedArrayUsingComparator: (JSValue *) cmptr );
JSExportAs(indexesOfObjectsWithOptionsPassingTest,
-(NSIndexSet *) jsindexesOfObjectsWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
-(NSString *) descriptionWithLocale: (id) locale indent: (NSUInteger) level ;
-(NSString *) componentsJoinedByString: (NSString *) separator ;
-(NSArray *) arrayByAddingObjectsFromArray: (NSArray *) otherArray ;
-(NSUInteger) indexOfObjectIdenticalTo: (id) anObject ;
-(NSArray *) arrayByAddingObject: (id) anObject ;
-(NSEnumerator *) reverseObjectEnumerator;
-(NSEnumerator *) objectEnumerator;
JSExportAs(enumerateObjectsUsingBlock,
-(void) jsenumerateObjectsUsingBlock: (JSValue *) block );
JSExportAs(sortedArrayWithOptionsUsingComparator,
-(NSArray *) jssortedArrayWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
-(id) objectAtIndexedSubscript: (NSUInteger) idx ;
JSExportAs(enumerateObjectsWithOptionsUsingBlock,
-(void) jsenumerateObjectsWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
-(BOOL) isEqualToArray: (NSArray *) otherArray ;
-(id) firstObjectCommonWithArray: (NSArray *) otherArray ;
-(NSArray *) objectsAtIndexes: (NSIndexSet *) indexes ;
JSExportAs(indexOfObjectWithOptionsPassingTest,
-(NSUInteger) jsindexOfObjectWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(enumerateObjectsAtIndexesOptionsUsingBlock,
-(void) jsenumerateObjectsAtIndexes: (NSIndexSet *) s options: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(indexesOfObjectsPassingTest,
-(NSIndexSet *) jsindexesOfObjectsPassingTest: (JSValue *) predicate );
-(NSString *) descriptionWithLocale: (id) locale ;
JSExportAs(indexOfObjectPassingTest,
-(NSUInteger) jsindexOfObjectPassingTest: (JSValue *) predicate );
JSExportAs(indexesOfObjectsAtIndexesOptionsPassingTest,
-(NSIndexSet *) jsindexesOfObjectsAtIndexes: (NSIndexSet *) s options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(makeObjectsPerformSelector,
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector );
JSExportAs(indexOfObjectInSortedRangeOptionsUsingComparator,
-(NSUInteger) jsindexOfObject: (id) obj inSortedRange: (NSRange) r options: (NSBinarySearchingOptions) opts usingComparator: (JSValue *) cmp );
-(NSUInteger) indexOfObject: (id) anObject inRange: (NSRange) range ;
-(NSUInteger) indexOfObject: (id) anObject ;
-(NSArray *) subarrayWithRange: (NSRange) range ;
JSExportAs(indexOfObjectAtIndexesOptionsPassingTest,
-(NSUInteger) jsindexOfObjectAtIndexes: (NSIndexSet *) s options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(sortedArrayUsingSelector,
-(NSArray *) jssortedArrayUsingSelector: (NSString *) comparator );
-(NSUInteger) indexOfObjectIdenticalTo: (id) anObject inRange: (NSRange) range ;
JSExportAs(writeToURLError,
-(BOOL) jswriteToURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(makeObjectsPerformSelectorWithObject,
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector withObject: (id) argument );
@end
@protocol NSArrayNSExtendedArrayCategoryClassExports<JSExport>
@end
@protocol NSArrayNSArrayCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithObjects,
-(id) jsinitWithObjects: (id) firstObj arguments: (NSArray *) args );
JSExportAs(initWithArrayCopyItems,
-(id) jsinitWithArray: (NSArray *) array copyItems: (BOOL) flag );
JSExportAs(initWithArray,
-(id) jsinitWithArray: (NSArray *) array );
JSExportAs(initWithContentsOfURLError,
-(NSArray *) jsinitWithContentsOfURL: (NSURL *) url error: (JSValue *) error );
@end
@protocol NSArrayNSArrayCreationCategoryClassExports<JSExport>
JSExportAs(arrayWithContentsOfURLError,
+(NSArray *) jsarrayWithContentsOfURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(arrayWithObjects,
+(id) jsarrayWithObjects: (id) firstObj arguments: (NSArray *) args );
+(id) arrayWithObject: (id) anObject ;
+(id) array;
+(id) arrayWithArray: (NSArray *) array ;
@end
@protocol NSMutableArrayNSMutableArrayCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfURL,
-(NSMutableArray *) jsinitWithContentsOfURL: (NSURL *) url );
JSExportAs(initWithContentsOfFile,
-(NSMutableArray *) jsinitWithContentsOfFile: (NSString *) path );
@end
@protocol NSMutableArrayNSMutableArrayCreationCategoryClassExports<JSExport>
+(NSMutableArray *) arrayWithContentsOfURL: (NSURL *) url ;
+(id) arrayWithCapacity: (NSUInteger) numItems ;
+(NSMutableArray *) arrayWithContentsOfFile: (NSString *) path ;
@end
@protocol NSArrayInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
-(id) objectAtIndex: (NSUInteger) index ;
-(id) jsinit;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSArrayClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
@end
@protocol NSMutableArrayInstanceExports<JSExport>
-(void) removeObjectAtIndex: (NSUInteger) index ;
-(void) insertObject: (id) anObject atIndex: (NSUInteger) index ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
-(void) addObject: (id) anObject ;
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
-(id) jsinit;
-(void) removeLastObject;
-(void) replaceObjectAtIndex: (NSUInteger) index withObject: (id) anObject ;
@end
@protocol NSMutableArrayClassExports<JSExport>
@end
#pragma clang diagnostic pop