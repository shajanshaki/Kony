#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSMapTable_symbols(JSContext*);
@protocol NSMapTableInstanceExports<JSExport, NSCopyingInstanceExports_, NSCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
@property (readonly,copy) NSPointerFunctions * valuePointerFunctions;
@property (readonly,copy) NSPointerFunctions * keyPointerFunctions;
-(NSEnumerator *) objectEnumerator;
-(NSEnumerator *) keyEnumerator;
-(NSDictionary *) dictionaryRepresentation;
-(void) setObject: (id) anObject forKey: (id) aKey ;
-(void) removeAllObjects;
-(void) removeObjectForKey: (id) aKey ;
JSExportAs(initWithKeyPointerFunctionsValuePointerFunctionsCapacity,
-(id) jsinitWithKeyPointerFunctions: (NSPointerFunctions *) keyFunctions valuePointerFunctions: (NSPointerFunctions *) valueFunctions capacity: (NSUInteger) initialCapacity );
JSExportAs(initWithKeyOptionsValueOptionsCapacity,
-(id) jsinitWithKeyOptions: (NSPointerFunctionsOptions) keyOptions valueOptions: (NSPointerFunctionsOptions) valueOptions capacity: (NSUInteger) initialCapacity );
-(id) objectForKey: (id) aKey ;
@end
@protocol NSMapTableClassExports<JSExport, NSCopyingClassExports_, NSCodingClassExports_, NSFastEnumerationClassExports_>
+(NSMapTable *) mapTableWithKeyOptions: (NSPointerFunctionsOptions) keyOptions valueOptions: (NSPointerFunctionsOptions) valueOptions ;
+(NSMapTable *) weakToStrongObjectsMapTable;
+(NSMapTable *) strongToStrongObjectsMapTable;
+(NSMapTable *) weakToWeakObjectsMapTable;
+(NSMapTable *) strongToWeakObjectsMapTable;
@end
#pragma clang diagnostic pop