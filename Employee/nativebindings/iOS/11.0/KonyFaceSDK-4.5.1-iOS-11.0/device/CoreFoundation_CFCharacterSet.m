#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CFCharacterSetGetTypeID"] = ^CFTypeID() {
		return CFCharacterSetGetTypeID();
	};
	context[@"CFCharacterSetCreateMutable"] = ^id(id arg0) {
		return CFCharacterSetCreateMutable(arg0);
	};
	context[@"CFCharacterSetRemoveCharactersInRange"] = ^void(id arg0, CFRange arg1) {
		CFCharacterSetRemoveCharactersInRange(arg0, arg1);
	};
	context[@"CFCharacterSetAddCharactersInString"] = ^void(id arg0, id arg1) {
		CFCharacterSetAddCharactersInString(arg0, arg1);
	};
	context[@"CFCharacterSetCreateWithCharactersInRange"] = ^id(id arg0, CFRange arg1) {
		return CFCharacterSetCreateWithCharactersInRange(arg0, arg1);
	};
	context[@"CFCharacterSetIsLongCharacterMember"] = ^Boolean(id arg0, UTF32Char arg1) {
		return CFCharacterSetIsLongCharacterMember(arg0, arg1);
	};
	context[@"CFCharacterSetInvert"] = ^void(id arg0) {
		CFCharacterSetInvert(arg0);
	};
	context[@"CFCharacterSetIsCharacterMember"] = ^Boolean(id arg0, UniChar arg1) {
		return CFCharacterSetIsCharacterMember(arg0, arg1);
	};
	context[@"CFCharacterSetIntersect"] = ^void(id arg0, id arg1) {
		CFCharacterSetIntersect(arg0, arg1);
	};
	context[@"CFCharacterSetUnion"] = ^void(id arg0, id arg1) {
		CFCharacterSetUnion(arg0, arg1);
	};
	context[@"CFCharacterSetHasMemberInPlane"] = ^Boolean(id arg0, CFIndex arg1) {
		return CFCharacterSetHasMemberInPlane(arg0, arg1);
	};
	context[@"CFCharacterSetAddCharactersInRange"] = ^void(id arg0, CFRange arg1) {
		CFCharacterSetAddCharactersInRange(arg0, arg1);
	};
	context[@"CFCharacterSetGetPredefined"] = ^id(CFCharacterSetPredefinedSet arg0) {
		return CFCharacterSetGetPredefined(arg0);
	};
	context[@"CFCharacterSetCreateInvertedSet"] = ^id(id arg0, id arg1) {
		return CFCharacterSetCreateInvertedSet(arg0, arg1);
	};
	context[@"CFCharacterSetRemoveCharactersInString"] = ^void(id arg0, id arg1) {
		CFCharacterSetRemoveCharactersInString(arg0, arg1);
	};
	context[@"CFCharacterSetCreateWithBitmapRepresentation"] = ^id(id arg0, id arg1) {
		return CFCharacterSetCreateWithBitmapRepresentation(arg0, arg1);
	};
	context[@"CFCharacterSetCreateWithCharactersInString"] = ^id(id arg0, id arg1) {
		return CFCharacterSetCreateWithCharactersInString(arg0, arg1);
	};
	context[@"CFCharacterSetCreateMutableCopy"] = ^id(id arg0, id arg1) {
		return CFCharacterSetCreateMutableCopy(arg0, arg1);
	};
	context[@"CFCharacterSetCreateCopy"] = ^id(id arg0, id arg1) {
		return CFCharacterSetCreateCopy(arg0, arg1);
	};
	context[@"CFCharacterSetCreateBitmapRepresentation"] = ^id(id arg0, id arg1) {
		return CFCharacterSetCreateBitmapRepresentation(arg0, arg1);
	};
	context[@"CFCharacterSetIsSupersetOfSet"] = ^Boolean(id arg0, id arg1) {
		return CFCharacterSetIsSupersetOfSet(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFCharacterSetControl"] = @1L;
	context[@"kCFCharacterSetWhitespace"] = @2L;
	context[@"kCFCharacterSetWhitespaceAndNewline"] = @3L;
	context[@"kCFCharacterSetDecimalDigit"] = @4L;
	context[@"kCFCharacterSetLetter"] = @5L;
	context[@"kCFCharacterSetLowercaseLetter"] = @6L;
	context[@"kCFCharacterSetUppercaseLetter"] = @7L;
	context[@"kCFCharacterSetNonBase"] = @8L;
	context[@"kCFCharacterSetDecomposable"] = @9L;
	context[@"kCFCharacterSetAlphaNumeric"] = @10L;
	context[@"kCFCharacterSetPunctuation"] = @11L;
	context[@"kCFCharacterSetCapitalizedLetter"] = @13L;
	context[@"kCFCharacterSetSymbol"] = @14L;
	context[@"kCFCharacterSetNewline"] = @15L;
	context[@"kCFCharacterSetIllegal"] = @12L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFCharacterSet_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
