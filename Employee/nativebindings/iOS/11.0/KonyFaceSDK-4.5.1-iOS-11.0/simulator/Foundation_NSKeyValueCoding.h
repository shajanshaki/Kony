#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSKeyValueCoding_symbols(JSContext*);
@protocol NSObjectNSKeyValueCodingCategoryInstanceExports<JSExport>
-(NSMutableOrderedSet *) mutableOrderedSetValueForKeyPath: (NSString *) keyPath ;
-(NSMutableSet *) mutableSetValueForKey: (NSString *) key ;
-(id) valueForKey: (NSString *) key ;
-(NSMutableArray *) mutableArrayValueForKey: (NSString *) key ;
-(NSDictionary *) dictionaryWithValuesForKeys: (NSArray *) keys ;
-(void) setValue: (id) value forKey: (NSString *) key ;
-(NSMutableOrderedSet *) mutableOrderedSetValueForKey: (NSString *) key ;
-(id) valueForKeyPath: (NSString *) keyPath ;
-(id) valueForUndefinedKey: (NSString *) key ;
-(NSMutableArray *) mutableArrayValueForKeyPath: (NSString *) keyPath ;
-(void) setNilValueForKey: (NSString *) key ;
-(void) setValue: (id) value forKeyPath: (NSString *) keyPath ;
-(void) setValuesForKeysWithDictionary: (NSDictionary *) keyedValues ;
-(void) setValue: (id) value forUndefinedKey: (NSString *) key ;
-(NSMutableSet *) mutableSetValueForKeyPath: (NSString *) keyPath ;
@end
@protocol NSObjectNSKeyValueCodingCategoryClassExports<JSExport>
+(BOOL) accessInstanceVariablesDirectly;
@end
@protocol NSOrderedSetNSKeyValueCodingCategoryInstanceExports<JSExport>
-(void) setValue: (id) value forKey: (NSString *) key ;
-(id) valueForKey: (NSString *) key ;
@end
@protocol NSOrderedSetNSKeyValueCodingCategoryClassExports<JSExport>
@end
@protocol NSDictionaryNSKeyValueCodingCategoryInstanceExports<JSExport>
-(id) valueForKey: (NSString *) key ;
@end
@protocol NSDictionaryNSKeyValueCodingCategoryClassExports<JSExport>
@end
@protocol NSArrayNSKeyValueCodingCategoryInstanceExports<JSExport>
-(void) setValue: (id) value forKey: (NSString *) key ;
-(id) valueForKey: (NSString *) key ;
@end
@protocol NSArrayNSKeyValueCodingCategoryClassExports<JSExport>
@end
@protocol NSSetNSKeyValueCodingCategoryInstanceExports<JSExport>
-(void) setValue: (id) value forKey: (NSString *) key ;
-(id) valueForKey: (NSString *) key ;
@end
@protocol NSSetNSKeyValueCodingCategoryClassExports<JSExport>
@end
@protocol NSMutableDictionaryNSKeyValueCodingCategoryInstanceExports<JSExport>
-(void) setValue: (id) value forKey: (NSString *) key ;
@end
@protocol NSMutableDictionaryNSKeyValueCodingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop