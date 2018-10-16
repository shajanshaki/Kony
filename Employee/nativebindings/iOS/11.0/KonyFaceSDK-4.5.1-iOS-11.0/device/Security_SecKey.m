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
	context[@"SecKeyIsAlgorithmSupported"] = ^Boolean(id arg0, SecKeyOperationType arg1, id arg2) {
		return SecKeyIsAlgorithmSupported(arg0, arg1, arg2);
	};
	context[@"SecKeyGetBlockSize"] = ^size_t(id arg0) {
		return SecKeyGetBlockSize(arg0);
	};
	context[@"SecKeyCopyPublicKey"] = ^id(id arg0) {
		return SecKeyCopyPublicKey(arg0);
	};
	context[@"SecKeyCopyAttributes"] = ^id(id arg0) {
		return SecKeyCopyAttributes(arg0);
	};
	context[@"SecKeyGetTypeID"] = ^CFTypeID() {
		return SecKeyGetTypeID();
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kSecPaddingNone"] = @0U;
	context[@"kSecPaddingPKCS1"] = @1U;
	context[@"kSecPaddingOAEP"] = @2U;
	context[@"kSecPaddingSigRaw"] = @16384U;
	context[@"kSecPaddingPKCS1MD2"] = @32768U;
	context[@"kSecPaddingPKCS1MD5"] = @32769U;
	context[@"kSecPaddingPKCS1SHA1"] = @32770U;
	context[@"kSecPaddingPKCS1SHA224"] = @32771U;
	context[@"kSecPaddingPKCS1SHA256"] = @32772U;
	context[@"kSecPaddingPKCS1SHA384"] = @32773U;
	context[@"kSecPaddingPKCS1SHA512"] = @32774U;

	context[@"kSecKeyOperationTypeSign"] = @0L;
	context[@"kSecKeyOperationTypeVerify"] = @1L;
	context[@"kSecKeyOperationTypeEncrypt"] = @2L;
	context[@"kSecKeyOperationTypeDecrypt"] = @3L;
	context[@"kSecKeyOperationTypeKeyExchange"] = @4L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPSSSHA224;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPSSSHA224"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPSSSHA224 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA384AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA384AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA384AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureDigestX962SHA256;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureDigestX962SHA256"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureDigestX962SHA256 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionCofactorX963SHA512AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionCofactorX963SHA512AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionCofactorX963SHA512AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionCofactorX963SHA224AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionCofactorX963SHA224AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionCofactorX963SHA224AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionOAEPSHA224AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionOAEPSHA224AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionOAEPSHA224AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureMessageX962SHA512;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureMessageX962SHA512"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureMessageX962SHA512 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeStandard;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeStandard"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeStandard inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPSSSHA256;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPSSSHA256"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPSSSHA256 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA224;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA224"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA224 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureMessageX962SHA256"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureMessageX962SHA256 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionStandardX963SHA1AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionStandardX963SHA1AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionStandardX963SHA1AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA1;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA1"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA1 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA224;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA224"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA224 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureMessagePSSSHA256;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureMessagePSSSHA256"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureMessagePSSSHA256 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionOAEPSHA384;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionOAEPSHA384"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionOAEPSHA384 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPKCS1v15Raw;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPKCS1v15Raw"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPKCS1v15Raw inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA224;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA224"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA224 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA384;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA384"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA384 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA256;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA256"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA256 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureMessageX962SHA1;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureMessageX962SHA1"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureMessageX962SHA1 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionOAEPSHA512;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionOAEPSHA512"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionOAEPSHA512 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPSSSHA384;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPSSSHA384"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPSSSHA384 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA1;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA1"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA1 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureMessageX962SHA224;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureMessageX962SHA224"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureMessageX962SHA224 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionOAEPSHA1;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionOAEPSHA1"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionOAEPSHA1 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA256;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA256"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA256 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureMessagePSSSHA512;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureMessagePSSSHA512"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureMessagePSSSHA512 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA512;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA512"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA512 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA384;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA384"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA384 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA512AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA512AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA512AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA512AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA512AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA512AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA256AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA256AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA256AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureDigestX962;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureDigestX962"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureDigestX962 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionStandardX963SHA256AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionStandardX963SHA256AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionStandardX963SHA256AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA512;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA512"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA512 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureMessagePSSSHA384;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureMessagePSSSHA384"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureMessagePSSSHA384 inContext: context];
	p = (void*) &kSecPublicKeyAttrs;
	if (p != NULL) context[@"kSecPublicKeyAttrs"] = [JSValue valueWithObject: (__bridge id) kSecPublicKeyAttrs inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA1;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA1"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeCofactorX963SHA1 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureRFC4754;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureRFC4754"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureRFC4754 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA384;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA384"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA384 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPSSSHA1;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPSSSHA1"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPSSSHA1 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionCofactorX963SHA256AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionCofactorX963SHA256AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionCofactorX963SHA256AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA512;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA512"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA512 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionOAEPSHA1AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionOAEPSHA1AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionOAEPSHA1AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionCofactorX963SHA1AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionCofactorX963SHA1AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionCofactorX963SHA1AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA512;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA512"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA512 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA1;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA1"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA1 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionOAEPSHA256;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionOAEPSHA256"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionOAEPSHA256 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionCofactorX963SHA384AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionCofactorX963SHA384AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionCofactorX963SHA384AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionPKCS1;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionPKCS1"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionPKCS1 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA256;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA256"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA256 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA384AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA384AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA384AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionRaw;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionRaw"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionRaw inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA384;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA384"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA384 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionOAEPSHA384AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionOAEPSHA384AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionOAEPSHA384AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureDigestX962SHA1;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureDigestX962SHA1"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureDigestX962SHA1 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeCofactor;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeCofactor"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeCofactor inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA224AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA224AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA224AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureMessagePSSSHA224;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureMessagePSSSHA224"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureMessagePSSSHA224 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureMessagePSSSHA1;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureMessagePSSSHA1"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureMessagePSSSHA1 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureMessageX962SHA384;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureMessageX962SHA384"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureMessageX962SHA384 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureRaw;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureRaw"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureRaw inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureDigestX962SHA512;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureDigestX962SHA512"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureDigestX962SHA512 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionStandardX963SHA512AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionStandardX963SHA512AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionStandardX963SHA512AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureDigestX962SHA224;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureDigestX962SHA224"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureDigestX962SHA224 inContext: context];
	p = (void*) &kSecKeyAlgorithmECDSASignatureDigestX962SHA384;
	if (p != NULL) context[@"kSecKeyAlgorithmECDSASignatureDigestX962SHA384"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDSASignatureDigestX962SHA384 inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionStandardX963SHA384AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionStandardX963SHA384AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionStandardX963SHA384AESGCM inContext: context];
	p = (void*) &kSecPrivateKeyAttrs;
	if (p != NULL) context[@"kSecPrivateKeyAttrs"] = [JSValue valueWithObject: (__bridge id) kSecPrivateKeyAttrs inContext: context];
	p = (void*) &kSecKeyKeyExchangeParameterSharedInfo;
	if (p != NULL) context[@"kSecKeyKeyExchangeParameterSharedInfo"] = [JSValue valueWithObject: (__bridge id) kSecKeyKeyExchangeParameterSharedInfo inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionOAEPSHA224;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionOAEPSHA224"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionOAEPSHA224 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionOAEPSHA256AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionOAEPSHA256AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionOAEPSHA256AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmRSASignatureDigestPSSSHA512;
	if (p != NULL) context[@"kSecKeyAlgorithmRSASignatureDigestPSSSHA512"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSASignatureDigestPSSSHA512 inContext: context];
	p = (void*) &kSecKeyAlgorithmRSAEncryptionOAEPSHA512AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmRSAEncryptionOAEPSHA512AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmRSAEncryptionOAEPSHA512AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionStandardX963SHA224AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionStandardX963SHA224AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionStandardX963SHA224AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA224AESGCM;
	if (p != NULL) context[@"kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA224AESGCM"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECIESEncryptionCofactorVariableIVX963SHA224AESGCM inContext: context];
	p = (void*) &kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA224;
	if (p != NULL) context[@"kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA224"] = [JSValue valueWithObject: (__bridge id) kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA224 inContext: context];
	p = (void*) &kSecKeyKeyExchangeParameterRequestedSize;
	if (p != NULL) context[@"kSecKeyKeyExchangeParameterRequestedSize"] = [JSValue valueWithObject: (__bridge id) kSecKeyKeyExchangeParameterRequestedSize inContext: context];
}
void load_Security_SecKey_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
