#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSCharacterSet_symbols(JSContext*);
@protocol NSMutableCharacterSetInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
-(void) formIntersectionWithCharacterSet: (NSCharacterSet *) otherSet ;
-(void) removeCharactersInRange: (NSRange) aRange ;
-(void) formUnionWithCharacterSet: (NSCharacterSet *) otherSet ;
-(void) removeCharactersInString: (NSString *) aString ;
-(void) addCharactersInRange: (NSRange) aRange ;
-(void) invert;
-(void) addCharactersInString: (NSString *) aString ;
@end
@protocol NSMutableCharacterSetClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
+(NSMutableCharacterSet *) newlineCharacterSet;
+(NSMutableCharacterSet *) letterCharacterSet;
+(NSMutableCharacterSet *) nonBaseCharacterSet;
+(NSMutableCharacterSet *) symbolCharacterSet;
+(NSMutableCharacterSet *) characterSetWithBitmapRepresentation: (NSData *) data ;
+(NSMutableCharacterSet *) alphanumericCharacterSet;
+(NSMutableCharacterSet *) uppercaseLetterCharacterSet;
+(NSMutableCharacterSet *) whitespaceCharacterSet;
+(NSMutableCharacterSet *) lowercaseLetterCharacterSet;
+(NSMutableCharacterSet *) punctuationCharacterSet;
+(NSMutableCharacterSet *) whitespaceAndNewlineCharacterSet;
+(NSMutableCharacterSet *) controlCharacterSet;
+(NSMutableCharacterSet *) characterSetWithCharactersInString: (NSString *) aString ;
+(NSMutableCharacterSet *) capitalizedLetterCharacterSet;
+(NSMutableCharacterSet *) characterSetWithContentsOfFile: (NSString *) fName ;
+(NSMutableCharacterSet *) illegalCharacterSet;
+(NSMutableCharacterSet *) decomposableCharacterSet;
+(NSMutableCharacterSet *) characterSetWithRange: (NSRange) aRange ;
+(NSMutableCharacterSet *) decimalDigitCharacterSet;
@end
@protocol NSCharacterSetInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSCharacterSet * invertedSet;
@property (readonly,copy) NSData * bitmapRepresentation;
-(BOOL) isSupersetOfSet: (NSCharacterSet *) theOtherSet ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
-(BOOL) characterIsMember: (unichar) aCharacter ;
-(BOOL) longCharacterIsMember: (UTF32Char) theLongChar ;
-(BOOL) hasMemberInPlane: (uint8_t) thePlane ;
@end
@protocol NSCharacterSetClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
+(NSCharacterSet *) punctuationCharacterSet;
+(NSCharacterSet *) letterCharacterSet;
+(NSCharacterSet *) nonBaseCharacterSet;
+(NSCharacterSet *) symbolCharacterSet;
+(NSCharacterSet *) alphanumericCharacterSet;
+(NSCharacterSet *) uppercaseLetterCharacterSet;
+(NSCharacterSet *) whitespaceCharacterSet;
+(NSCharacterSet *) lowercaseLetterCharacterSet;
+(NSCharacterSet *) characterSetWithBitmapRepresentation: (NSData *) data ;
+(NSCharacterSet *) whitespaceAndNewlineCharacterSet;
+(NSCharacterSet *) controlCharacterSet;
+(NSCharacterSet *) newlineCharacterSet;
+(NSCharacterSet *) characterSetWithCharactersInString: (NSString *) aString ;
+(NSCharacterSet *) capitalizedLetterCharacterSet;
+(NSCharacterSet *) characterSetWithContentsOfFile: (NSString *) fName ;
+(NSCharacterSet *) characterSetWithRange: (NSRange) aRange ;
+(NSCharacterSet *) decomposableCharacterSet;
+(NSCharacterSet *) illegalCharacterSet;
+(NSCharacterSet *) decimalDigitCharacterSet;
@end
#pragma clang diagnostic pop