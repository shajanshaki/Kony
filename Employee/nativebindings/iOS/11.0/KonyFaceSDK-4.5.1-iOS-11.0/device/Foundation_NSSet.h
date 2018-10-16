#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSSet_symbols(JSContext*);
@protocol NSSetInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
-(id) jsinit;
-(NSEnumerator *) objectEnumerator;
-(id) member: (id) object ;
@end
@protocol NSSetClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
@end
@protocol NSMutableSetNSExtendedMutableSetCategoryInstanceExports<JSExport>
-(void) minusSet: (NSSet *) otherSet ;
-(void) addObjectsFromArray: (NSArray *) array ;
-(void) unionSet: (NSSet *) otherSet ;
-(void) removeAllObjects;
-(void) intersectSet: (NSSet *) otherSet ;
-(void) setSet: (NSSet *) otherSet ;
@end
@protocol NSMutableSetNSExtendedMutableSetCategoryClassExports<JSExport>
@end
@protocol NSCountedSetInstanceExports<JSExport>
JSExportAs(initWithSet,
-(id) jsinitWithSet: (NSSet *) set );
-(NSEnumerator *) objectEnumerator;
-(NSUInteger) countForObject: (id) object ;
-(void) addObject: (id) object ;
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
-(void) removeObject: (id) object ;
JSExportAs(initWithArray,
-(id) jsinitWithArray: (NSArray *) array );
@end
@protocol NSCountedSetClassExports<JSExport>
@end
@protocol NSMutableSetNSMutableSetCreationCategoryInstanceExports<JSExport>
@end
@protocol NSMutableSetNSMutableSetCreationCategoryClassExports<JSExport>
+(id) setWithCapacity: (NSUInteger) numItems ;
@end
@protocol NSSetNSExtendedSetCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * allObjects;
@property (readonly,copy) NSString * description;
-(id) anyObject;
-(BOOL) containsObject: (id) anObject ;
-(NSString *) descriptionWithLocale: (id) locale ;
JSExportAs(objectsPassingTest,
-(NSSet *) jsobjectsPassingTest: (JSValue *) predicate );
JSExportAs(enumerateObjectsUsingBlock,
-(void) jsenumerateObjectsUsingBlock: (JSValue *) block );
-(BOOL) isEqualToSet: (NSSet *) otherSet ;
-(NSSet *) setByAddingObjectsFromArray: (NSArray *) other ;
-(BOOL) intersectsSet: (NSSet *) otherSet ;
JSExportAs(makeObjectsPerformSelector,
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector );
-(NSSet *) setByAddingObjectsFromSet: (NSSet *) other ;
-(NSSet *) setByAddingObject: (id) anObject ;
JSExportAs(objectsWithOptionsPassingTest,
-(NSSet *) jsobjectsWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(enumerateObjectsWithOptionsUsingBlock,
-(void) jsenumerateObjectsWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
-(BOOL) isSubsetOfSet: (NSSet *) otherSet ;
JSExportAs(makeObjectsPerformSelectorWithObject,
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector withObject: (id) argument );
@end
@protocol NSSetNSExtendedSetCategoryClassExports<JSExport>
@end
@protocol NSMutableSetInstanceExports<JSExport>
-(void) addObject: (id) object ;
-(void) removeObject: (id) object ;
-(id) jsinit;
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSMutableSetClassExports<JSExport>
@end
@protocol NSSetNSSetCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithObjects,
-(id) jsinitWithObjects: (id) firstObj arguments: (NSArray *) args );
JSExportAs(initWithSet,
-(id) jsinitWithSet: (NSSet *) set );
JSExportAs(initWithArray,
-(id) jsinitWithArray: (NSArray *) array );
JSExportAs(initWithSetCopyItems,
-(id) jsinitWithSet: (NSSet *) set copyItems: (BOOL) flag );
@end
@protocol NSSetNSSetCreationCategoryClassExports<JSExport>
JSExportAs(setWithObjects,
+(id) jssetWithObjects: (id) firstObj arguments: (NSArray *) args );
+(id) set;
+(id) setWithSet: (NSSet *) set ;
+(id) setWithArray: (NSArray *) array ;
+(id) setWithObject: (id) object ;
@end
#pragma clang diagnostic pop