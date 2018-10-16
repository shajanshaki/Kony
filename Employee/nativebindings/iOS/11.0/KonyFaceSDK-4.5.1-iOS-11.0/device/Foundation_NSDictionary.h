#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDictionary_symbols(JSContext*);
@protocol NSMutableDictionaryNSMutableDictionaryCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfURL,
-(NSMutableDictionary *) jsinitWithContentsOfURL: (NSURL *) url );
JSExportAs(initWithContentsOfFile,
-(NSMutableDictionary *) jsinitWithContentsOfFile: (NSString *) path );
@end
@protocol NSMutableDictionaryNSMutableDictionaryCreationCategoryClassExports<JSExport>
+(NSMutableDictionary *) dictionaryWithContentsOfURL: (NSURL *) url ;
+(id) dictionaryWithCapacity: (NSUInteger) numItems ;
+(NSMutableDictionary *) dictionaryWithContentsOfFile: (NSString *) path ;
@end
@protocol NSDictionaryNSDeprecatedCategoryInstanceExports<JSExport>
-(BOOL) writeToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile ;
-(BOOL) writeToURL: (NSURL *) url atomically: (BOOL) atomically ;
JSExportAs(initWithContentsOfURL,
-(NSDictionary *) jsinitWithContentsOfURL: (NSURL *) url );
JSExportAs(initWithContentsOfFile,
-(NSDictionary *) jsinitWithContentsOfFile: (NSString *) path );
@end
@protocol NSDictionaryNSDeprecatedCategoryClassExports<JSExport>
+(NSDictionary *) dictionaryWithContentsOfURL: (NSURL *) url ;
+(NSDictionary *) dictionaryWithContentsOfFile: (NSString *) path ;
@end
@protocol NSDictionaryNSSharedKeySetDictionaryCategoryInstanceExports<JSExport>
@end
@protocol NSDictionaryNSSharedKeySetDictionaryCategoryClassExports<JSExport>
+(id) sharedKeySetForKeys: (NSArray *) keys ;
@end
@protocol NSMutableDictionaryNSExtendedMutableDictionaryCategoryInstanceExports<JSExport>
-(void) setDictionary: (NSDictionary *) otherDictionary ;
-(void) addEntriesFromDictionary: (NSDictionary *) otherDictionary ;
-(void) removeAllObjects;
-(void) removeObjectsForKeys: (NSArray *) keyArray ;
@end
@protocol NSMutableDictionaryNSExtendedMutableDictionaryCategoryClassExports<JSExport>
@end
@protocol NSDictionaryNSGenericFastEnumeraitonCategoryInstanceExports<JSExport, NSFastEnumerationInstanceExports_>
@end
@protocol NSDictionaryNSGenericFastEnumeraitonCategoryClassExports<JSExport, NSFastEnumerationClassExports_>
@end
@protocol NSDictionaryNSDictionaryCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithDictionaryCopyItems,
-(id) jsinitWithDictionary: (NSDictionary *) otherDictionary copyItems: (BOOL) flag );
JSExportAs(initWithDictionary,
-(id) jsinitWithDictionary: (NSDictionary *) otherDictionary );
JSExportAs(initWithContentsOfURLError,
-(NSDictionary *) jsinitWithContentsOfURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(initWithObjectsForKeys,
-(id) jsinitWithObjects: (NSArray *) objects forKeys: (NSArray *) keys );
JSExportAs(initWithObjectsAndKeys,
-(id) jsinitWithObjectsAndKeys: (id) firstObject arguments: (NSArray *) args );
@end
@protocol NSDictionaryNSDictionaryCreationCategoryClassExports<JSExport>
+(id) dictionaryWithDictionary: (NSDictionary *) dict ;
+(id) dictionary;
+(id) dictionaryWithObjects: (NSArray *) objects forKeys: (NSArray *) keys ;
JSExportAs(dictionaryWithObjectsAndKeys,
+(id) jsdictionaryWithObjectsAndKeys: (id) firstObject arguments: (NSArray *) args );
JSExportAs(dictionaryWithContentsOfURLError,
+(NSDictionary *) jsdictionaryWithContentsOfURL: (NSURL *) url error: (JSValue *) error );
@end
@protocol NSDictionaryNSExtendedDictionaryCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * allValues;
@property (readonly,copy) NSString * description;
@property (readonly,copy) NSArray * allKeys;
@property (readonly,copy) NSString * descriptionInStringsFileFormat;
JSExportAs(enumerateKeysAndObjectsWithOptionsUsingBlock,
-(void) jsenumerateKeysAndObjectsWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(keysSortedByValueWithOptionsUsingComparator,
-(NSArray *) jskeysSortedByValueWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
-(NSEnumerator *) objectEnumerator;
-(NSString *) descriptionWithLocale: (id) locale ;
-(NSArray *) allKeysForObject: (id) anObject ;
JSExportAs(enumerateKeysAndObjectsUsingBlock,
-(void) jsenumerateKeysAndObjectsUsingBlock: (JSValue *) block );
JSExportAs(keysSortedByValueUsingSelector,
-(NSArray *) jskeysSortedByValueUsingSelector: (NSString *) comparator );
JSExportAs(keysOfEntriesWithOptionsPassingTest,
-(NSSet *) jskeysOfEntriesWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(keysSortedByValueUsingComparator,
-(NSArray *) jskeysSortedByValueUsingComparator: (JSValue *) cmptr );
-(NSString *) descriptionWithLocale: (id) locale indent: (NSUInteger) level ;
-(NSArray *) objectsForKeys: (NSArray *) keys notFoundMarker: (id) marker ;
-(BOOL) isEqualToDictionary: (NSDictionary *) otherDictionary ;
JSExportAs(writeToURLError,
-(BOOL) jswriteToURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(keysOfEntriesPassingTest,
-(NSSet *) jskeysOfEntriesPassingTest: (JSValue *) predicate );
-(id) objectForKeyedSubscript: (id) key ;
@end
@protocol NSDictionaryNSExtendedDictionaryCategoryClassExports<JSExport>
@end
@protocol NSMutableDictionaryNSSharedKeySetDictionaryCategoryInstanceExports<JSExport>
@end
@protocol NSMutableDictionaryNSSharedKeySetDictionaryCategoryClassExports<JSExport>
+(NSMutableDictionary *) dictionaryWithSharedKeySet: (id) keyset ;
@end
@protocol NSDictionaryInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
-(NSEnumerator *) keyEnumerator;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
-(id) jsinit;
-(id) objectForKey: (id) aKey ;
@end
@protocol NSDictionaryClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
@end
@protocol NSMutableDictionaryInstanceExports<JSExport>
-(void) removeObjectForKey: (id) aKey ;
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
-(id) jsinit;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSMutableDictionaryClassExports<JSExport>
@end
#pragma clang diagnostic pop