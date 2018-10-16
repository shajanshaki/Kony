#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSOrderedSet_symbols(JSContext*);
@protocol NSOrderedSetNSOrderedSetCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithSet,
-(id) jsinitWithSet: (NSSet *) set );
JSExportAs(initWithArrayCopyItems,
-(id) jsinitWithArray: (NSArray *) set copyItems: (BOOL) flag );
JSExportAs(initWithArrayRangeCopyItems,
-(id) jsinitWithArray: (NSArray *) set range: (NSRange) range copyItems: (BOOL) flag );
JSExportAs(initWithSetCopyItems,
-(id) jsinitWithSet: (NSSet *) set copyItems: (BOOL) flag );
JSExportAs(initWithObjects,
-(id) jsinitWithObjects: (id) firstObj arguments: (NSArray *) args );
JSExportAs(initWithArray,
-(id) jsinitWithArray: (NSArray *) array );
JSExportAs(initWithOrderedSet,
-(id) jsinitWithOrderedSet: (NSOrderedSet *) set );
JSExportAs(initWithOrderedSetRangeCopyItems,
-(id) jsinitWithOrderedSet: (NSOrderedSet *) set range: (NSRange) range copyItems: (BOOL) flag );
JSExportAs(initWithObject,
-(id) jsinitWithObject: (id) object );
JSExportAs(initWithOrderedSetCopyItems,
-(id) jsinitWithOrderedSet: (NSOrderedSet *) set copyItems: (BOOL) flag );
@end
@protocol NSOrderedSetNSOrderedSetCreationCategoryClassExports<JSExport>
+(id) orderedSetWithOrderedSet: (NSOrderedSet *) set ;
+(id) orderedSetWithOrderedSet: (NSOrderedSet *) set range: (NSRange) range copyItems: (BOOL) flag ;
JSExportAs(orderedSetWithObjects,
+(id) jsorderedSetWithObjects: (id) firstObj arguments: (NSArray *) args );
+(id) orderedSetWithObject: (id) object ;
+(id) orderedSetWithSet: (NSSet *) set copyItems: (BOOL) flag ;
+(id) orderedSetWithSet: (NSSet *) set ;
+(id) orderedSetWithArray: (NSArray *) array range: (NSRange) range copyItems: (BOOL) flag ;
+(id) orderedSetWithArray: (NSArray *) array ;
+(id) orderedSet;
@end
@protocol NSOrderedSetNSExtendedOrderedSetCategoryInstanceExports<JSExport>
@property (readonly,strong) NSSet * set;
@property (readonly,copy) NSString * description;
@property (readonly,nonatomic) id lastObject;
@property (readonly,nonatomic) id firstObject;
@property (readonly,copy) NSOrderedSet * reversedOrderedSet;
@property (readonly,strong) NSArray * array;
-(BOOL) containsObject: (id) object ;
JSExportAs(sortedArrayUsingComparator,
-(NSArray *) jssortedArrayUsingComparator: (JSValue *) cmptr );
-(BOOL) isSubsetOfOrderedSet: (NSOrderedSet *) other ;
-(BOOL) isSubsetOfSet: (NSSet *) set ;
-(NSEnumerator *) reverseObjectEnumerator;
-(NSEnumerator *) objectEnumerator;
-(BOOL) isEqualToOrderedSet: (NSOrderedSet *) other ;
JSExportAs(sortedArrayWithOptionsUsingComparator,
-(NSArray *) jssortedArrayWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
-(id) objectAtIndexedSubscript: (NSUInteger) idx ;
-(NSArray *) objectsAtIndexes: (NSIndexSet *) indexes ;
-(NSString *) descriptionWithLocale: (id) locale ;
-(BOOL) intersectsOrderedSet: (NSOrderedSet *) other ;
JSExportAs(indexOfObjectInSortedRangeOptionsUsingComparator,
-(NSUInteger) jsindexOfObject: (id) object inSortedRange: (NSRange) range options: (NSBinarySearchingOptions) opts usingComparator: (JSValue *) cmp );
-(BOOL) intersectsSet: (NSSet *) set ;
-(NSString *) descriptionWithLocale: (id) locale indent: (NSUInteger) level ;
@end
@protocol NSOrderedSetNSExtendedOrderedSetCategoryClassExports<JSExport>
@end
@protocol NSMutableOrderedSetNSMutableOrderedSetCreationCategoryInstanceExports<JSExport>
@end
@protocol NSMutableOrderedSetNSMutableOrderedSetCreationCategoryClassExports<JSExport>
+(id) orderedSetWithCapacity: (NSUInteger) numItems ;
@end
@protocol NSMutableOrderedSetNSExtendedMutableOrderedSetCategoryInstanceExports<JSExport>
-(void) replaceObjectsAtIndexes: (NSIndexSet *) indexes withObjects: (NSArray *) objects ;
-(void) setObject: (id) obj atIndex: (NSUInteger) idx ;
-(void) removeObjectsAtIndexes: (NSIndexSet *) indexes ;
-(void) removeAllObjects;
-(void) insertObjects: (NSArray *) objects atIndexes: (NSIndexSet *) indexes ;
-(void) intersectSet: (NSSet *) other ;
-(void) removeObject: (id) object ;
JSExportAs(sortUsingComparator,
-(void) jssortUsingComparator: (JSValue *) cmptr );
-(void) addObjectsFromArray: (NSArray *) array ;
-(void) intersectOrderedSet: (NSOrderedSet *) other ;
JSExportAs(sortRangeOptionsUsingComparator,
-(void) jssortRange: (NSRange) range options: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
-(void) minusOrderedSet: (NSOrderedSet *) other ;
-(void) moveObjectsAtIndexes: (NSIndexSet *) indexes toIndex: (NSUInteger) idx ;
-(void) exchangeObjectAtIndex: (NSUInteger) idx1 withObjectAtIndex: (NSUInteger) idx2 ;
-(void) unionSet: (NSSet *) other ;
-(void) removeObjectsInArray: (NSArray *) array ;
-(void) unionOrderedSet: (NSOrderedSet *) other ;
-(void) setObject: (id) obj atIndexedSubscript: (NSUInteger) idx ;
-(void) removeObjectsInRange: (NSRange) range ;
-(void) addObject: (id) object ;
-(void) minusSet: (NSSet *) other ;
JSExportAs(sortWithOptionsUsingComparator,
-(void) jssortWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
@end
@protocol NSMutableOrderedSetNSExtendedMutableOrderedSetCategoryClassExports<JSExport>
@end
@protocol NSMutableOrderedSetInstanceExports<JSExport>
-(void) removeObjectAtIndex: (NSUInteger) idx ;
-(void) insertObject: (id) object atIndex: (NSUInteger) idx ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
-(id) jsinit;
-(void) replaceObjectAtIndex: (NSUInteger) idx withObject: (id) object ;
@end
@protocol NSMutableOrderedSetClassExports<JSExport>
@end
@protocol NSOrderedSetInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
-(id) objectAtIndex: (NSUInteger) idx ;
-(NSUInteger) indexOfObject: (id) object ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
-(id) jsinit;
@end
@protocol NSOrderedSetClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
@end
#pragma clang diagnostic pop