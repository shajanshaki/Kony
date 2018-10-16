#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSHashTable_symbols(JSContext*);
@protocol NSHashTableInstanceExports<JSExport, NSCopyingInstanceExports_, NSCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
@property (readonly,copy) NSArray * allObjects;
@property (readonly,nonatomic) id anyObject;
@property (readonly,copy) NSSet * setRepresentation;
@property (readonly,copy) NSPointerFunctions * pointerFunctions;
-(NSEnumerator *) objectEnumerator;
-(BOOL) containsObject: (id) anObject ;
-(BOOL) isEqualToHashTable: (NSHashTable *) other ;
-(void) addObject: (id) object ;
-(void) minusHashTable: (NSHashTable *) other ;
-(void) unionHashTable: (NSHashTable *) other ;
-(BOOL) isSubsetOfHashTable: (NSHashTable *) other ;
JSExportAs(initWithOptionsCapacity,
-(id) jsinitWithOptions: (NSPointerFunctionsOptions) options capacity: (NSUInteger) initialCapacity );
-(void) removeAllObjects;
JSExportAs(initWithPointerFunctionsCapacity,
-(id) jsinitWithPointerFunctions: (NSPointerFunctions *) functions capacity: (NSUInteger) initialCapacity );
-(void) intersectHashTable: (NSHashTable *) other ;
-(id) member: (id) object ;
-(BOOL) intersectsHashTable: (NSHashTable *) other ;
-(void) removeObject: (id) object ;
@end
@protocol NSHashTableClassExports<JSExport, NSCopyingClassExports_, NSCodingClassExports_, NSFastEnumerationClassExports_>
+(NSHashTable *) weakObjectsHashTable;
+(NSHashTable *) hashTableWithOptions: (NSPointerFunctionsOptions) options ;
@end
#pragma clang diagnostic pop