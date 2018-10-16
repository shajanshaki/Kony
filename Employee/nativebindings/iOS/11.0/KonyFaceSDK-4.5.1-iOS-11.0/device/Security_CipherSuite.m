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
}
static void registerEnumConstants(JSContext* context)
{
	context[@"SSL_NULL_WITH_NULL_NULL"] = @0;
	context[@"SSL_RSA_WITH_NULL_MD5"] = @1;
	context[@"SSL_RSA_WITH_NULL_SHA"] = @2;
	context[@"SSL_RSA_EXPORT_WITH_RC4_40_MD5"] = @3;
	context[@"SSL_RSA_WITH_RC4_128_MD5"] = @4;
	context[@"SSL_RSA_WITH_RC4_128_SHA"] = @5;
	context[@"SSL_RSA_EXPORT_WITH_RC2_CBC_40_MD5"] = @6;
	context[@"SSL_RSA_WITH_IDEA_CBC_SHA"] = @7;
	context[@"SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"] = @8;
	context[@"SSL_RSA_WITH_DES_CBC_SHA"] = @9;
	context[@"SSL_RSA_WITH_3DES_EDE_CBC_SHA"] = @10;
	context[@"SSL_DH_DSS_EXPORT_WITH_DES40_CBC_SHA"] = @11;
	context[@"SSL_DH_DSS_WITH_DES_CBC_SHA"] = @12;
	context[@"SSL_DH_DSS_WITH_3DES_EDE_CBC_SHA"] = @13;
	context[@"SSL_DH_RSA_EXPORT_WITH_DES40_CBC_SHA"] = @14;
	context[@"SSL_DH_RSA_WITH_DES_CBC_SHA"] = @15;
	context[@"SSL_DH_RSA_WITH_3DES_EDE_CBC_SHA"] = @16;
	context[@"SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"] = @17;
	context[@"SSL_DHE_DSS_WITH_DES_CBC_SHA"] = @18;
	context[@"SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"] = @19;
	context[@"SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"] = @20;
	context[@"SSL_DHE_RSA_WITH_DES_CBC_SHA"] = @21;
	context[@"SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"] = @22;
	context[@"SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"] = @23;
	context[@"SSL_DH_anon_WITH_RC4_128_MD5"] = @24;
	context[@"SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"] = @25;
	context[@"SSL_DH_anon_WITH_DES_CBC_SHA"] = @26;
	context[@"SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"] = @27;
	context[@"SSL_FORTEZZA_DMS_WITH_NULL_SHA"] = @28;
	context[@"SSL_FORTEZZA_DMS_WITH_FORTEZZA_CBC_SHA"] = @29;
	context[@"TLS_RSA_WITH_AES_128_CBC_SHA"] = @47;
	context[@"TLS_DH_DSS_WITH_AES_128_CBC_SHA"] = @48;
	context[@"TLS_DH_RSA_WITH_AES_128_CBC_SHA"] = @49;
	context[@"TLS_DHE_DSS_WITH_AES_128_CBC_SHA"] = @50;
	context[@"TLS_DHE_RSA_WITH_AES_128_CBC_SHA"] = @51;
	context[@"TLS_DH_anon_WITH_AES_128_CBC_SHA"] = @52;
	context[@"TLS_RSA_WITH_AES_256_CBC_SHA"] = @53;
	context[@"TLS_DH_DSS_WITH_AES_256_CBC_SHA"] = @54;
	context[@"TLS_DH_RSA_WITH_AES_256_CBC_SHA"] = @55;
	context[@"TLS_DHE_DSS_WITH_AES_256_CBC_SHA"] = @56;
	context[@"TLS_DHE_RSA_WITH_AES_256_CBC_SHA"] = @57;
	context[@"TLS_DH_anon_WITH_AES_256_CBC_SHA"] = @58;
	context[@"TLS_ECDH_ECDSA_WITH_NULL_SHA"] = @-16383;
	context[@"TLS_ECDH_ECDSA_WITH_RC4_128_SHA"] = @-16382;
	context[@"TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"] = @-16381;
	context[@"TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"] = @-16380;
	context[@"TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"] = @-16379;
	context[@"TLS_ECDHE_ECDSA_WITH_NULL_SHA"] = @-16378;
	context[@"TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"] = @-16377;
	context[@"TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"] = @-16376;
	context[@"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"] = @-16375;
	context[@"TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"] = @-16374;
	context[@"TLS_ECDH_RSA_WITH_NULL_SHA"] = @-16373;
	context[@"TLS_ECDH_RSA_WITH_RC4_128_SHA"] = @-16372;
	context[@"TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"] = @-16371;
	context[@"TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"] = @-16370;
	context[@"TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"] = @-16369;
	context[@"TLS_ECDHE_RSA_WITH_NULL_SHA"] = @-16368;
	context[@"TLS_ECDHE_RSA_WITH_RC4_128_SHA"] = @-16367;
	context[@"TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"] = @-16366;
	context[@"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"] = @-16365;
	context[@"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"] = @-16364;
	context[@"TLS_ECDH_anon_WITH_NULL_SHA"] = @-16363;
	context[@"TLS_ECDH_anon_WITH_RC4_128_SHA"] = @-16362;
	context[@"TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"] = @-16361;
	context[@"TLS_ECDH_anon_WITH_AES_128_CBC_SHA"] = @-16360;
	context[@"TLS_ECDH_anon_WITH_AES_256_CBC_SHA"] = @-16359;
	context[@"TLS_NULL_WITH_NULL_NULL"] = @0;
	context[@"TLS_RSA_WITH_NULL_MD5"] = @1;
	context[@"TLS_RSA_WITH_NULL_SHA"] = @2;
	context[@"TLS_RSA_WITH_RC4_128_MD5"] = @4;
	context[@"TLS_RSA_WITH_RC4_128_SHA"] = @5;
	context[@"TLS_RSA_WITH_3DES_EDE_CBC_SHA"] = @10;
	context[@"TLS_RSA_WITH_NULL_SHA256"] = @59;
	context[@"TLS_RSA_WITH_AES_128_CBC_SHA256"] = @60;
	context[@"TLS_RSA_WITH_AES_256_CBC_SHA256"] = @61;
	context[@"TLS_DH_DSS_WITH_3DES_EDE_CBC_SHA"] = @13;
	context[@"TLS_DH_RSA_WITH_3DES_EDE_CBC_SHA"] = @16;
	context[@"TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA"] = @19;
	context[@"TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA"] = @22;
	context[@"TLS_DH_DSS_WITH_AES_128_CBC_SHA256"] = @62;
	context[@"TLS_DH_RSA_WITH_AES_128_CBC_SHA256"] = @63;
	context[@"TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"] = @64;
	context[@"TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"] = @103;
	context[@"TLS_DH_DSS_WITH_AES_256_CBC_SHA256"] = @104;
	context[@"TLS_DH_RSA_WITH_AES_256_CBC_SHA256"] = @105;
	context[@"TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"] = @106;
	context[@"TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"] = @107;
	context[@"TLS_DH_anon_WITH_RC4_128_MD5"] = @24;
	context[@"TLS_DH_anon_WITH_3DES_EDE_CBC_SHA"] = @27;
	context[@"TLS_DH_anon_WITH_AES_128_CBC_SHA256"] = @108;
	context[@"TLS_DH_anon_WITH_AES_256_CBC_SHA256"] = @109;
	context[@"TLS_PSK_WITH_RC4_128_SHA"] = @138;
	context[@"TLS_PSK_WITH_3DES_EDE_CBC_SHA"] = @139;
	context[@"TLS_PSK_WITH_AES_128_CBC_SHA"] = @140;
	context[@"TLS_PSK_WITH_AES_256_CBC_SHA"] = @141;
	context[@"TLS_DHE_PSK_WITH_RC4_128_SHA"] = @142;
	context[@"TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA"] = @143;
	context[@"TLS_DHE_PSK_WITH_AES_128_CBC_SHA"] = @144;
	context[@"TLS_DHE_PSK_WITH_AES_256_CBC_SHA"] = @145;
	context[@"TLS_RSA_PSK_WITH_RC4_128_SHA"] = @146;
	context[@"TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA"] = @147;
	context[@"TLS_RSA_PSK_WITH_AES_128_CBC_SHA"] = @148;
	context[@"TLS_RSA_PSK_WITH_AES_256_CBC_SHA"] = @149;
	context[@"TLS_PSK_WITH_NULL_SHA"] = @44;
	context[@"TLS_DHE_PSK_WITH_NULL_SHA"] = @45;
	context[@"TLS_RSA_PSK_WITH_NULL_SHA"] = @46;
	context[@"TLS_RSA_WITH_AES_128_GCM_SHA256"] = @156;
	context[@"TLS_RSA_WITH_AES_256_GCM_SHA384"] = @157;
	context[@"TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"] = @158;
	context[@"TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"] = @159;
	context[@"TLS_DH_RSA_WITH_AES_128_GCM_SHA256"] = @160;
	context[@"TLS_DH_RSA_WITH_AES_256_GCM_SHA384"] = @161;
	context[@"TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"] = @162;
	context[@"TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"] = @163;
	context[@"TLS_DH_DSS_WITH_AES_128_GCM_SHA256"] = @164;
	context[@"TLS_DH_DSS_WITH_AES_256_GCM_SHA384"] = @165;
	context[@"TLS_DH_anon_WITH_AES_128_GCM_SHA256"] = @166;
	context[@"TLS_DH_anon_WITH_AES_256_GCM_SHA384"] = @167;
	context[@"TLS_PSK_WITH_AES_128_GCM_SHA256"] = @168;
	context[@"TLS_PSK_WITH_AES_256_GCM_SHA384"] = @169;
	context[@"TLS_DHE_PSK_WITH_AES_128_GCM_SHA256"] = @170;
	context[@"TLS_DHE_PSK_WITH_AES_256_GCM_SHA384"] = @171;
	context[@"TLS_RSA_PSK_WITH_AES_128_GCM_SHA256"] = @172;
	context[@"TLS_RSA_PSK_WITH_AES_256_GCM_SHA384"] = @173;
	context[@"TLS_PSK_WITH_AES_128_CBC_SHA256"] = @174;
	context[@"TLS_PSK_WITH_AES_256_CBC_SHA384"] = @175;
	context[@"TLS_PSK_WITH_NULL_SHA256"] = @176;
	context[@"TLS_PSK_WITH_NULL_SHA384"] = @177;
	context[@"TLS_DHE_PSK_WITH_AES_128_CBC_SHA256"] = @178;
	context[@"TLS_DHE_PSK_WITH_AES_256_CBC_SHA384"] = @179;
	context[@"TLS_DHE_PSK_WITH_NULL_SHA256"] = @180;
	context[@"TLS_DHE_PSK_WITH_NULL_SHA384"] = @181;
	context[@"TLS_RSA_PSK_WITH_AES_128_CBC_SHA256"] = @182;
	context[@"TLS_RSA_PSK_WITH_AES_256_CBC_SHA384"] = @183;
	context[@"TLS_RSA_PSK_WITH_NULL_SHA256"] = @184;
	context[@"TLS_RSA_PSK_WITH_NULL_SHA384"] = @185;
	context[@"TLS_AES_128_GCM_SHA256"] = @4865;
	context[@"TLS_AES_256_GCM_SHA384"] = @4866;
	context[@"TLS_CHACHA20_POLY1305_SHA256"] = @4867;
	context[@"TLS_AES_128_CCM_SHA256"] = @4868;
	context[@"TLS_AES_128_CCM_8_SHA256"] = @4869;
	context[@"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"] = @-16349;
	context[@"TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"] = @-16348;
	context[@"TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"] = @-16347;
	context[@"TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"] = @-16346;
	context[@"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"] = @-16345;
	context[@"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"] = @-16344;
	context[@"TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"] = @-16343;
	context[@"TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"] = @-16342;
	context[@"TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"] = @-16341;
	context[@"TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"] = @-16340;
	context[@"TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"] = @-16339;
	context[@"TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"] = @-16338;
	context[@"TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"] = @-16337;
	context[@"TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"] = @-16336;
	context[@"TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"] = @-16335;
	context[@"TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"] = @-16334;
	context[@"TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"] = @-13144;
	context[@"TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"] = @-13143;
	context[@"TLS_EMPTY_RENEGOTIATION_INFO_SCSV"] = @255;
	context[@"SSL_RSA_WITH_RC2_CBC_MD5"] = @-128;
	context[@"SSL_RSA_WITH_IDEA_CBC_MD5"] = @-127;
	context[@"SSL_RSA_WITH_DES_CBC_MD5"] = @-126;
	context[@"SSL_RSA_WITH_3DES_EDE_CBC_MD5"] = @-125;
	context[@"SSL_NO_SUCH_CIPHERSUITE"] = @-1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Security_CipherSuite_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
