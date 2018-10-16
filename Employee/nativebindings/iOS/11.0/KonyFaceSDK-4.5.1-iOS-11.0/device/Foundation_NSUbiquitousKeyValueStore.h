#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSUbiquitousKeyValueStore_symbols(JSContext*);
@protocol NSUbiquitousKeyValueStoreInstanceExports<JSExport>
@property (readonly,copy) NSDictionary * dictionaryRepresentation;
-(double) doubleForKey: (NSString *) aKey ;
-(void) setData: (NSData *) aData forKey: (NSString *) aKey ;
-(void) setArray: (NSArray *) anArray forKey: (NSString *) aKey ;
-(BOOL) boolForKey: (NSString *) aKey ;
-(void) setLongLong: (long long) value forKey: (NSString *) aKey ;
-(BOOL) synchronize;
-(NSData *) dataForKey: (NSString *) aKey ;
-(void) setString: (NSString *) aString forKey: (NSString *) aKey ;
-(NSArray *) arrayForKey: (NSString *) aKey ;
-(void) setObject: (id) anObject forKey: (NSString *) aKey ;
-(void) setDouble: (double) value forKey: (NSString *) aKey ;
-(void) setBool: (BOOL) value forKey: (NSString *) aKey ;
-(void) removeObjectForKey: (NSString *) aKey ;
-(NSDictionary *) dictionaryForKey: (NSString *) aKey ;
-(long long) longLongForKey: (NSString *) aKey ;
-(NSString *) stringForKey: (NSString *) aKey ;
-(id) objectForKey: (NSString *) aKey ;
-(void) setDictionary: (NSDictionary *) aDictionary forKey: (NSString *) aKey ;
@end
@protocol NSUbiquitousKeyValueStoreClassExports<JSExport>
+(NSUbiquitousKeyValueStore *) defaultStore;
@end
#pragma clang diagnostic pop