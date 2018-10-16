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
	context[@"kCFStringEncodingMacJapanese"] = @1L;
	context[@"kCFStringEncodingMacChineseTrad"] = @2L;
	context[@"kCFStringEncodingMacKorean"] = @3L;
	context[@"kCFStringEncodingMacArabic"] = @4L;
	context[@"kCFStringEncodingMacHebrew"] = @5L;
	context[@"kCFStringEncodingMacGreek"] = @6L;
	context[@"kCFStringEncodingMacCyrillic"] = @7L;
	context[@"kCFStringEncodingMacDevanagari"] = @9L;
	context[@"kCFStringEncodingMacGurmukhi"] = @10L;
	context[@"kCFStringEncodingMacGujarati"] = @11L;
	context[@"kCFStringEncodingMacOriya"] = @12L;
	context[@"kCFStringEncodingMacBengali"] = @13L;
	context[@"kCFStringEncodingMacTamil"] = @14L;
	context[@"kCFStringEncodingMacTelugu"] = @15L;
	context[@"kCFStringEncodingMacKannada"] = @16L;
	context[@"kCFStringEncodingMacMalayalam"] = @17L;
	context[@"kCFStringEncodingMacSinhalese"] = @18L;
	context[@"kCFStringEncodingMacBurmese"] = @19L;
	context[@"kCFStringEncodingMacKhmer"] = @20L;
	context[@"kCFStringEncodingMacThai"] = @21L;
	context[@"kCFStringEncodingMacLaotian"] = @22L;
	context[@"kCFStringEncodingMacGeorgian"] = @23L;
	context[@"kCFStringEncodingMacArmenian"] = @24L;
	context[@"kCFStringEncodingMacChineseSimp"] = @25L;
	context[@"kCFStringEncodingMacTibetan"] = @26L;
	context[@"kCFStringEncodingMacMongolian"] = @27L;
	context[@"kCFStringEncodingMacEthiopic"] = @28L;
	context[@"kCFStringEncodingMacCentralEurRoman"] = @29L;
	context[@"kCFStringEncodingMacVietnamese"] = @30L;
	context[@"kCFStringEncodingMacExtArabic"] = @31L;
	context[@"kCFStringEncodingMacSymbol"] = @33L;
	context[@"kCFStringEncodingMacDingbats"] = @34L;
	context[@"kCFStringEncodingMacTurkish"] = @35L;
	context[@"kCFStringEncodingMacCroatian"] = @36L;
	context[@"kCFStringEncodingMacIcelandic"] = @37L;
	context[@"kCFStringEncodingMacRomanian"] = @38L;
	context[@"kCFStringEncodingMacCeltic"] = @39L;
	context[@"kCFStringEncodingMacGaelic"] = @40L;
	context[@"kCFStringEncodingMacFarsi"] = @140L;
	context[@"kCFStringEncodingMacUkrainian"] = @152L;
	context[@"kCFStringEncodingMacInuit"] = @236L;
	context[@"kCFStringEncodingMacVT100"] = @252L;
	context[@"kCFStringEncodingMacHFS"] = @255L;
	context[@"kCFStringEncodingISOLatin2"] = @514L;
	context[@"kCFStringEncodingISOLatin3"] = @515L;
	context[@"kCFStringEncodingISOLatin4"] = @516L;
	context[@"kCFStringEncodingISOLatinCyrillic"] = @517L;
	context[@"kCFStringEncodingISOLatinArabic"] = @518L;
	context[@"kCFStringEncodingISOLatinGreek"] = @519L;
	context[@"kCFStringEncodingISOLatinHebrew"] = @520L;
	context[@"kCFStringEncodingISOLatin5"] = @521L;
	context[@"kCFStringEncodingISOLatin6"] = @522L;
	context[@"kCFStringEncodingISOLatinThai"] = @523L;
	context[@"kCFStringEncodingISOLatin7"] = @525L;
	context[@"kCFStringEncodingISOLatin8"] = @526L;
	context[@"kCFStringEncodingISOLatin9"] = @527L;
	context[@"kCFStringEncodingISOLatin10"] = @528L;
	context[@"kCFStringEncodingDOSLatinUS"] = @1024L;
	context[@"kCFStringEncodingDOSGreek"] = @1029L;
	context[@"kCFStringEncodingDOSBalticRim"] = @1030L;
	context[@"kCFStringEncodingDOSLatin1"] = @1040L;
	context[@"kCFStringEncodingDOSGreek1"] = @1041L;
	context[@"kCFStringEncodingDOSLatin2"] = @1042L;
	context[@"kCFStringEncodingDOSCyrillic"] = @1043L;
	context[@"kCFStringEncodingDOSTurkish"] = @1044L;
	context[@"kCFStringEncodingDOSPortuguese"] = @1045L;
	context[@"kCFStringEncodingDOSIcelandic"] = @1046L;
	context[@"kCFStringEncodingDOSHebrew"] = @1047L;
	context[@"kCFStringEncodingDOSCanadianFrench"] = @1048L;
	context[@"kCFStringEncodingDOSArabic"] = @1049L;
	context[@"kCFStringEncodingDOSNordic"] = @1050L;
	context[@"kCFStringEncodingDOSRussian"] = @1051L;
	context[@"kCFStringEncodingDOSGreek2"] = @1052L;
	context[@"kCFStringEncodingDOSThai"] = @1053L;
	context[@"kCFStringEncodingDOSJapanese"] = @1056L;
	context[@"kCFStringEncodingDOSChineseSimplif"] = @1057L;
	context[@"kCFStringEncodingDOSKorean"] = @1058L;
	context[@"kCFStringEncodingDOSChineseTrad"] = @1059L;
	context[@"kCFStringEncodingWindowsLatin2"] = @1281L;
	context[@"kCFStringEncodingWindowsCyrillic"] = @1282L;
	context[@"kCFStringEncodingWindowsGreek"] = @1283L;
	context[@"kCFStringEncodingWindowsLatin5"] = @1284L;
	context[@"kCFStringEncodingWindowsHebrew"] = @1285L;
	context[@"kCFStringEncodingWindowsArabic"] = @1286L;
	context[@"kCFStringEncodingWindowsBalticRim"] = @1287L;
	context[@"kCFStringEncodingWindowsVietnamese"] = @1288L;
	context[@"kCFStringEncodingWindowsKoreanJohab"] = @1296L;
	context[@"kCFStringEncodingANSEL"] = @1537L;
	context[@"kCFStringEncodingJIS_X0201_76"] = @1568L;
	context[@"kCFStringEncodingJIS_X0208_83"] = @1569L;
	context[@"kCFStringEncodingJIS_X0208_90"] = @1570L;
	context[@"kCFStringEncodingJIS_X0212_90"] = @1571L;
	context[@"kCFStringEncodingJIS_C6226_78"] = @1572L;
	context[@"kCFStringEncodingShiftJIS_X0213"] = @1576L;
	context[@"kCFStringEncodingShiftJIS_X0213_MenKuTen"] = @1577L;
	context[@"kCFStringEncodingGB_2312_80"] = @1584L;
	context[@"kCFStringEncodingGBK_95"] = @1585L;
	context[@"kCFStringEncodingGB_18030_2000"] = @1586L;
	context[@"kCFStringEncodingKSC_5601_87"] = @1600L;
	context[@"kCFStringEncodingKSC_5601_92_Johab"] = @1601L;
	context[@"kCFStringEncodingCNS_11643_92_P1"] = @1617L;
	context[@"kCFStringEncodingCNS_11643_92_P2"] = @1618L;
	context[@"kCFStringEncodingCNS_11643_92_P3"] = @1619L;
	context[@"kCFStringEncodingISO_2022_JP"] = @2080L;
	context[@"kCFStringEncodingISO_2022_JP_2"] = @2081L;
	context[@"kCFStringEncodingISO_2022_JP_1"] = @2082L;
	context[@"kCFStringEncodingISO_2022_JP_3"] = @2083L;
	context[@"kCFStringEncodingISO_2022_CN"] = @2096L;
	context[@"kCFStringEncodingISO_2022_CN_EXT"] = @2097L;
	context[@"kCFStringEncodingISO_2022_KR"] = @2112L;
	context[@"kCFStringEncodingEUC_JP"] = @2336L;
	context[@"kCFStringEncodingEUC_CN"] = @2352L;
	context[@"kCFStringEncodingEUC_TW"] = @2353L;
	context[@"kCFStringEncodingEUC_KR"] = @2368L;
	context[@"kCFStringEncodingShiftJIS"] = @2561L;
	context[@"kCFStringEncodingKOI8_R"] = @2562L;
	context[@"kCFStringEncodingBig5"] = @2563L;
	context[@"kCFStringEncodingMacRomanLatin1"] = @2564L;
	context[@"kCFStringEncodingHZ_GB_2312"] = @2565L;
	context[@"kCFStringEncodingBig5_HKSCS_1999"] = @2566L;
	context[@"kCFStringEncodingVISCII"] = @2567L;
	context[@"kCFStringEncodingKOI8_U"] = @2568L;
	context[@"kCFStringEncodingBig5_E"] = @2569L;
	context[@"kCFStringEncodingNextStepJapanese"] = @2818L;
	context[@"kCFStringEncodingEBCDIC_US"] = @3073L;
	context[@"kCFStringEncodingEBCDIC_CP037"] = @3074L;
	context[@"kCFStringEncodingUTF7"] = @67109120L;
	context[@"kCFStringEncodingUTF7_IMAP"] = @2576L;
	context[@"kCFStringEncodingShiftJIS_X0213_00"] = @1576L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFStringEncodingExt_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
