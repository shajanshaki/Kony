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
	context[@"errSecSuccess"] = @0;
	context[@"errSecUnimplemented"] = @-4;
	context[@"errSecDskFull"] = @-34;
	context[@"errSecIO"] = @-36;
	context[@"errSecOpWr"] = @-49;
	context[@"errSecParam"] = @-50;
	context[@"errSecWrPerm"] = @-61;
	context[@"errSecAllocate"] = @-108;
	context[@"errSecUserCanceled"] = @-128;
	context[@"errSecBadReq"] = @-909;
	context[@"errSecInternalComponent"] = @-2070;
	context[@"errSecCoreFoundationUnknown"] = @-4960;
	context[@"errSecMissingEntitlement"] = @-34018;
	context[@"errSecNotAvailable"] = @-25291;
	context[@"errSecReadOnly"] = @-25292;
	context[@"errSecAuthFailed"] = @-25293;
	context[@"errSecNoSuchKeychain"] = @-25294;
	context[@"errSecInvalidKeychain"] = @-25295;
	context[@"errSecDuplicateKeychain"] = @-25296;
	context[@"errSecDuplicateCallback"] = @-25297;
	context[@"errSecInvalidCallback"] = @-25298;
	context[@"errSecDuplicateItem"] = @-25299;
	context[@"errSecItemNotFound"] = @-25300;
	context[@"errSecBufferTooSmall"] = @-25301;
	context[@"errSecDataTooLarge"] = @-25302;
	context[@"errSecNoSuchAttr"] = @-25303;
	context[@"errSecInvalidItemRef"] = @-25304;
	context[@"errSecInvalidSearchRef"] = @-25305;
	context[@"errSecNoSuchClass"] = @-25306;
	context[@"errSecNoDefaultKeychain"] = @-25307;
	context[@"errSecInteractionNotAllowed"] = @-25308;
	context[@"errSecReadOnlyAttr"] = @-25309;
	context[@"errSecWrongSecVersion"] = @-25310;
	context[@"errSecKeySizeNotAllowed"] = @-25311;
	context[@"errSecNoStorageModule"] = @-25312;
	context[@"errSecNoCertificateModule"] = @-25313;
	context[@"errSecNoPolicyModule"] = @-25314;
	context[@"errSecInteractionRequired"] = @-25315;
	context[@"errSecDataNotAvailable"] = @-25316;
	context[@"errSecDataNotModifiable"] = @-25317;
	context[@"errSecCreateChainFailed"] = @-25318;
	context[@"errSecInvalidPrefsDomain"] = @-25319;
	context[@"errSecInDarkWake"] = @-25320;
	context[@"errSecACLNotSimple"] = @-25240;
	context[@"errSecPolicyNotFound"] = @-25241;
	context[@"errSecInvalidTrustSetting"] = @-25242;
	context[@"errSecNoAccessForItem"] = @-25243;
	context[@"errSecInvalidOwnerEdit"] = @-25244;
	context[@"errSecTrustNotAvailable"] = @-25245;
	context[@"errSecUnsupportedFormat"] = @-25256;
	context[@"errSecUnknownFormat"] = @-25257;
	context[@"errSecKeyIsSensitive"] = @-25258;
	context[@"errSecMultiplePrivKeys"] = @-25259;
	context[@"errSecPassphraseRequired"] = @-25260;
	context[@"errSecInvalidPasswordRef"] = @-25261;
	context[@"errSecInvalidTrustSettings"] = @-25262;
	context[@"errSecNoTrustSettings"] = @-25263;
	context[@"errSecPkcs12VerifyFailure"] = @-25264;
	context[@"errSecNotSigner"] = @-26267;
	context[@"errSecDecode"] = @-26275;
	context[@"errSecServiceNotAvailable"] = @-67585;
	context[@"errSecInsufficientClientID"] = @-67586;
	context[@"errSecDeviceReset"] = @-67587;
	context[@"errSecDeviceFailed"] = @-67588;
	context[@"errSecAppleAddAppACLSubject"] = @-67589;
	context[@"errSecApplePublicKeyIncomplete"] = @-67590;
	context[@"errSecAppleSignatureMismatch"] = @-67591;
	context[@"errSecAppleInvalidKeyStartDate"] = @-67592;
	context[@"errSecAppleInvalidKeyEndDate"] = @-67593;
	context[@"errSecConversionError"] = @-67594;
	context[@"errSecAppleSSLv2Rollback"] = @-67595;
	context[@"errSecDiskFull"] = @-34;
	context[@"errSecQuotaExceeded"] = @-67596;
	context[@"errSecFileTooBig"] = @-67597;
	context[@"errSecInvalidDatabaseBlob"] = @-67598;
	context[@"errSecInvalidKeyBlob"] = @-67599;
	context[@"errSecIncompatibleDatabaseBlob"] = @-67600;
	context[@"errSecIncompatibleKeyBlob"] = @-67601;
	context[@"errSecHostNameMismatch"] = @-67602;
	context[@"errSecUnknownCriticalExtensionFlag"] = @-67603;
	context[@"errSecNoBasicConstraints"] = @-67604;
	context[@"errSecNoBasicConstraintsCA"] = @-67605;
	context[@"errSecInvalidAuthorityKeyID"] = @-67606;
	context[@"errSecInvalidSubjectKeyID"] = @-67607;
	context[@"errSecInvalidKeyUsageForPolicy"] = @-67608;
	context[@"errSecInvalidExtendedKeyUsage"] = @-67609;
	context[@"errSecInvalidIDLinkage"] = @-67610;
	context[@"errSecPathLengthConstraintExceeded"] = @-67611;
	context[@"errSecInvalidRoot"] = @-67612;
	context[@"errSecCRLExpired"] = @-67613;
	context[@"errSecCRLNotValidYet"] = @-67614;
	context[@"errSecCRLNotFound"] = @-67615;
	context[@"errSecCRLServerDown"] = @-67616;
	context[@"errSecCRLBadURI"] = @-67617;
	context[@"errSecUnknownCertExtension"] = @-67618;
	context[@"errSecUnknownCRLExtension"] = @-67619;
	context[@"errSecCRLNotTrusted"] = @-67620;
	context[@"errSecCRLPolicyFailed"] = @-67621;
	context[@"errSecIDPFailure"] = @-67622;
	context[@"errSecSMIMEEmailAddressesNotFound"] = @-67623;
	context[@"errSecSMIMEBadExtendedKeyUsage"] = @-67624;
	context[@"errSecSMIMEBadKeyUsage"] = @-67625;
	context[@"errSecSMIMEKeyUsageNotCritical"] = @-67626;
	context[@"errSecSMIMENoEmailAddress"] = @-67627;
	context[@"errSecSMIMESubjAltNameNotCritical"] = @-67628;
	context[@"errSecSSLBadExtendedKeyUsage"] = @-67629;
	context[@"errSecOCSPBadResponse"] = @-67630;
	context[@"errSecOCSPBadRequest"] = @-67631;
	context[@"errSecOCSPUnavailable"] = @-67632;
	context[@"errSecOCSPStatusUnrecognized"] = @-67633;
	context[@"errSecEndOfData"] = @-67634;
	context[@"errSecIncompleteCertRevocationCheck"] = @-67635;
	context[@"errSecNetworkFailure"] = @-67636;
	context[@"errSecOCSPNotTrustedToAnchor"] = @-67637;
	context[@"errSecRecordModified"] = @-67638;
	context[@"errSecOCSPSignatureError"] = @-67639;
	context[@"errSecOCSPNoSigner"] = @-67640;
	context[@"errSecOCSPResponderMalformedReq"] = @-67641;
	context[@"errSecOCSPResponderInternalError"] = @-67642;
	context[@"errSecOCSPResponderTryLater"] = @-67643;
	context[@"errSecOCSPResponderSignatureRequired"] = @-67644;
	context[@"errSecOCSPResponderUnauthorized"] = @-67645;
	context[@"errSecOCSPResponseNonceMismatch"] = @-67646;
	context[@"errSecCodeSigningBadCertChainLength"] = @-67647;
	context[@"errSecCodeSigningNoBasicConstraints"] = @-67648;
	context[@"errSecCodeSigningBadPathLengthConstraint"] = @-67649;
	context[@"errSecCodeSigningNoExtendedKeyUsage"] = @-67650;
	context[@"errSecCodeSigningDevelopment"] = @-67651;
	context[@"errSecResourceSignBadCertChainLength"] = @-67652;
	context[@"errSecResourceSignBadExtKeyUsage"] = @-67653;
	context[@"errSecTrustSettingDeny"] = @-67654;
	context[@"errSecInvalidSubjectName"] = @-67655;
	context[@"errSecUnknownQualifiedCertStatement"] = @-67656;
	context[@"errSecMobileMeRequestQueued"] = @-67657;
	context[@"errSecMobileMeRequestRedirected"] = @-67658;
	context[@"errSecMobileMeServerError"] = @-67659;
	context[@"errSecMobileMeServerNotAvailable"] = @-67660;
	context[@"errSecMobileMeServerAlreadyExists"] = @-67661;
	context[@"errSecMobileMeServerServiceErr"] = @-67662;
	context[@"errSecMobileMeRequestAlreadyPending"] = @-67663;
	context[@"errSecMobileMeNoRequestPending"] = @-67664;
	context[@"errSecMobileMeCSRVerifyFailure"] = @-67665;
	context[@"errSecMobileMeFailedConsistencyCheck"] = @-67666;
	context[@"errSecNotInitialized"] = @-67667;
	context[@"errSecInvalidHandleUsage"] = @-67668;
	context[@"errSecPVCReferentNotFound"] = @-67669;
	context[@"errSecFunctionIntegrityFail"] = @-67670;
	context[@"errSecInternalError"] = @-67671;
	context[@"errSecMemoryError"] = @-67672;
	context[@"errSecInvalidData"] = @-67673;
	context[@"errSecMDSError"] = @-67674;
	context[@"errSecInvalidPointer"] = @-67675;
	context[@"errSecSelfCheckFailed"] = @-67676;
	context[@"errSecFunctionFailed"] = @-67677;
	context[@"errSecModuleManifestVerifyFailed"] = @-67678;
	context[@"errSecInvalidGUID"] = @-67679;
	context[@"errSecInvalidHandle"] = @-67680;
	context[@"errSecInvalidDBList"] = @-67681;
	context[@"errSecInvalidPassthroughID"] = @-67682;
	context[@"errSecInvalidNetworkAddress"] = @-67683;
	context[@"errSecCRLAlreadySigned"] = @-67684;
	context[@"errSecInvalidNumberOfFields"] = @-67685;
	context[@"errSecVerificationFailure"] = @-67686;
	context[@"errSecUnknownTag"] = @-67687;
	context[@"errSecInvalidSignature"] = @-67688;
	context[@"errSecInvalidName"] = @-67689;
	context[@"errSecInvalidCertificateRef"] = @-67690;
	context[@"errSecInvalidCertificateGroup"] = @-67691;
	context[@"errSecTagNotFound"] = @-67692;
	context[@"errSecInvalidQuery"] = @-67693;
	context[@"errSecInvalidValue"] = @-67694;
	context[@"errSecCallbackFailed"] = @-67695;
	context[@"errSecACLDeleteFailed"] = @-67696;
	context[@"errSecACLReplaceFailed"] = @-67697;
	context[@"errSecACLAddFailed"] = @-67698;
	context[@"errSecACLChangeFailed"] = @-67699;
	context[@"errSecInvalidAccessCredentials"] = @-67700;
	context[@"errSecInvalidRecord"] = @-67701;
	context[@"errSecInvalidACL"] = @-67702;
	context[@"errSecInvalidSampleValue"] = @-67703;
	context[@"errSecIncompatibleVersion"] = @-67704;
	context[@"errSecPrivilegeNotGranted"] = @-67705;
	context[@"errSecInvalidScope"] = @-67706;
	context[@"errSecPVCAlreadyConfigured"] = @-67707;
	context[@"errSecInvalidPVC"] = @-67708;
	context[@"errSecEMMLoadFailed"] = @-67709;
	context[@"errSecEMMUnloadFailed"] = @-67710;
	context[@"errSecAddinLoadFailed"] = @-67711;
	context[@"errSecInvalidKeyRef"] = @-67712;
	context[@"errSecInvalidKeyHierarchy"] = @-67713;
	context[@"errSecAddinUnloadFailed"] = @-67714;
	context[@"errSecLibraryReferenceNotFound"] = @-67715;
	context[@"errSecInvalidAddinFunctionTable"] = @-67716;
	context[@"errSecInvalidServiceMask"] = @-67717;
	context[@"errSecModuleNotLoaded"] = @-67718;
	context[@"errSecInvalidSubServiceID"] = @-67719;
	context[@"errSecAttributeNotInContext"] = @-67720;
	context[@"errSecModuleManagerInitializeFailed"] = @-67721;
	context[@"errSecModuleManagerNotFound"] = @-67722;
	context[@"errSecEventNotificationCallbackNotFound"] = @-67723;
	context[@"errSecInputLengthError"] = @-67724;
	context[@"errSecOutputLengthError"] = @-67725;
	context[@"errSecPrivilegeNotSupported"] = @-67726;
	context[@"errSecDeviceError"] = @-67727;
	context[@"errSecAttachHandleBusy"] = @-67728;
	context[@"errSecNotLoggedIn"] = @-67729;
	context[@"errSecAlgorithmMismatch"] = @-67730;
	context[@"errSecKeyUsageIncorrect"] = @-67731;
	context[@"errSecKeyBlobTypeIncorrect"] = @-67732;
	context[@"errSecKeyHeaderInconsistent"] = @-67733;
	context[@"errSecUnsupportedKeyFormat"] = @-67734;
	context[@"errSecUnsupportedKeySize"] = @-67735;
	context[@"errSecInvalidKeyUsageMask"] = @-67736;
	context[@"errSecUnsupportedKeyUsageMask"] = @-67737;
	context[@"errSecInvalidKeyAttributeMask"] = @-67738;
	context[@"errSecUnsupportedKeyAttributeMask"] = @-67739;
	context[@"errSecInvalidKeyLabel"] = @-67740;
	context[@"errSecUnsupportedKeyLabel"] = @-67741;
	context[@"errSecInvalidKeyFormat"] = @-67742;
	context[@"errSecUnsupportedVectorOfBuffers"] = @-67743;
	context[@"errSecInvalidInputVector"] = @-67744;
	context[@"errSecInvalidOutputVector"] = @-67745;
	context[@"errSecInvalidContext"] = @-67746;
	context[@"errSecInvalidAlgorithm"] = @-67747;
	context[@"errSecInvalidAttributeKey"] = @-67748;
	context[@"errSecMissingAttributeKey"] = @-67749;
	context[@"errSecInvalidAttributeInitVector"] = @-67750;
	context[@"errSecMissingAttributeInitVector"] = @-67751;
	context[@"errSecInvalidAttributeSalt"] = @-67752;
	context[@"errSecMissingAttributeSalt"] = @-67753;
	context[@"errSecInvalidAttributePadding"] = @-67754;
	context[@"errSecMissingAttributePadding"] = @-67755;
	context[@"errSecInvalidAttributeRandom"] = @-67756;
	context[@"errSecMissingAttributeRandom"] = @-67757;
	context[@"errSecInvalidAttributeSeed"] = @-67758;
	context[@"errSecMissingAttributeSeed"] = @-67759;
	context[@"errSecInvalidAttributePassphrase"] = @-67760;
	context[@"errSecMissingAttributePassphrase"] = @-67761;
	context[@"errSecInvalidAttributeKeyLength"] = @-67762;
	context[@"errSecMissingAttributeKeyLength"] = @-67763;
	context[@"errSecInvalidAttributeBlockSize"] = @-67764;
	context[@"errSecMissingAttributeBlockSize"] = @-67765;
	context[@"errSecInvalidAttributeOutputSize"] = @-67766;
	context[@"errSecMissingAttributeOutputSize"] = @-67767;
	context[@"errSecInvalidAttributeRounds"] = @-67768;
	context[@"errSecMissingAttributeRounds"] = @-67769;
	context[@"errSecInvalidAlgorithmParms"] = @-67770;
	context[@"errSecMissingAlgorithmParms"] = @-67771;
	context[@"errSecInvalidAttributeLabel"] = @-67772;
	context[@"errSecMissingAttributeLabel"] = @-67773;
	context[@"errSecInvalidAttributeKeyType"] = @-67774;
	context[@"errSecMissingAttributeKeyType"] = @-67775;
	context[@"errSecInvalidAttributeMode"] = @-67776;
	context[@"errSecMissingAttributeMode"] = @-67777;
	context[@"errSecInvalidAttributeEffectiveBits"] = @-67778;
	context[@"errSecMissingAttributeEffectiveBits"] = @-67779;
	context[@"errSecInvalidAttributeStartDate"] = @-67780;
	context[@"errSecMissingAttributeStartDate"] = @-67781;
	context[@"errSecInvalidAttributeEndDate"] = @-67782;
	context[@"errSecMissingAttributeEndDate"] = @-67783;
	context[@"errSecInvalidAttributeVersion"] = @-67784;
	context[@"errSecMissingAttributeVersion"] = @-67785;
	context[@"errSecInvalidAttributePrime"] = @-67786;
	context[@"errSecMissingAttributePrime"] = @-67787;
	context[@"errSecInvalidAttributeBase"] = @-67788;
	context[@"errSecMissingAttributeBase"] = @-67789;
	context[@"errSecInvalidAttributeSubprime"] = @-67790;
	context[@"errSecMissingAttributeSubprime"] = @-67791;
	context[@"errSecInvalidAttributeIterationCount"] = @-67792;
	context[@"errSecMissingAttributeIterationCount"] = @-67793;
	context[@"errSecInvalidAttributeDLDBHandle"] = @-67794;
	context[@"errSecMissingAttributeDLDBHandle"] = @-67795;
	context[@"errSecInvalidAttributeAccessCredentials"] = @-67796;
	context[@"errSecMissingAttributeAccessCredentials"] = @-67797;
	context[@"errSecInvalidAttributePublicKeyFormat"] = @-67798;
	context[@"errSecMissingAttributePublicKeyFormat"] = @-67799;
	context[@"errSecInvalidAttributePrivateKeyFormat"] = @-67800;
	context[@"errSecMissingAttributePrivateKeyFormat"] = @-67801;
	context[@"errSecInvalidAttributeSymmetricKeyFormat"] = @-67802;
	context[@"errSecMissingAttributeSymmetricKeyFormat"] = @-67803;
	context[@"errSecInvalidAttributeWrappedKeyFormat"] = @-67804;
	context[@"errSecMissingAttributeWrappedKeyFormat"] = @-67805;
	context[@"errSecStagedOperationInProgress"] = @-67806;
	context[@"errSecStagedOperationNotStarted"] = @-67807;
	context[@"errSecVerifyFailed"] = @-67808;
	context[@"errSecQuerySizeUnknown"] = @-67809;
	context[@"errSecBlockSizeMismatch"] = @-67810;
	context[@"errSecPublicKeyInconsistent"] = @-67811;
	context[@"errSecDeviceVerifyFailed"] = @-67812;
	context[@"errSecInvalidLoginName"] = @-67813;
	context[@"errSecAlreadyLoggedIn"] = @-67814;
	context[@"errSecInvalidDigestAlgorithm"] = @-67815;
	context[@"errSecInvalidCRLGroup"] = @-67816;
	context[@"errSecCertificateCannotOperate"] = @-67817;
	context[@"errSecCertificateExpired"] = @-67818;
	context[@"errSecCertificateNotValidYet"] = @-67819;
	context[@"errSecCertificateRevoked"] = @-67820;
	context[@"errSecCertificateSuspended"] = @-67821;
	context[@"errSecInsufficientCredentials"] = @-67822;
	context[@"errSecInvalidAction"] = @-67823;
	context[@"errSecInvalidAuthority"] = @-67824;
	context[@"errSecVerifyActionFailed"] = @-67825;
	context[@"errSecInvalidCertAuthority"] = @-67826;
	context[@"errSecInvaldCRLAuthority"] = @-67827;
	context[@"errSecInvalidCRLEncoding"] = @-67828;
	context[@"errSecInvalidCRLType"] = @-67829;
	context[@"errSecInvalidCRL"] = @-67830;
	context[@"errSecInvalidFormType"] = @-67831;
	context[@"errSecInvalidID"] = @-67832;
	context[@"errSecInvalidIdentifier"] = @-67833;
	context[@"errSecInvalidIndex"] = @-67834;
	context[@"errSecInvalidPolicyIdentifiers"] = @-67835;
	context[@"errSecInvalidTimeString"] = @-67836;
	context[@"errSecInvalidReason"] = @-67837;
	context[@"errSecInvalidRequestInputs"] = @-67838;
	context[@"errSecInvalidResponseVector"] = @-67839;
	context[@"errSecInvalidStopOnPolicy"] = @-67840;
	context[@"errSecInvalidTuple"] = @-67841;
	context[@"errSecMultipleValuesUnsupported"] = @-67842;
	context[@"errSecNotTrusted"] = @-67843;
	context[@"errSecNoDefaultAuthority"] = @-67844;
	context[@"errSecRejectedForm"] = @-67845;
	context[@"errSecRequestLost"] = @-67846;
	context[@"errSecRequestRejected"] = @-67847;
	context[@"errSecUnsupportedAddressType"] = @-67848;
	context[@"errSecUnsupportedService"] = @-67849;
	context[@"errSecInvalidTupleGroup"] = @-67850;
	context[@"errSecInvalidBaseACLs"] = @-67851;
	context[@"errSecInvalidTupleCredendtials"] = @-67852;
	context[@"errSecInvalidEncoding"] = @-67853;
	context[@"errSecInvalidValidityPeriod"] = @-67854;
	context[@"errSecInvalidRequestor"] = @-67855;
	context[@"errSecRequestDescriptor"] = @-67856;
	context[@"errSecInvalidBundleInfo"] = @-67857;
	context[@"errSecInvalidCRLIndex"] = @-67858;
	context[@"errSecNoFieldValues"] = @-67859;
	context[@"errSecUnsupportedFieldFormat"] = @-67860;
	context[@"errSecUnsupportedIndexInfo"] = @-67861;
	context[@"errSecUnsupportedLocality"] = @-67862;
	context[@"errSecUnsupportedNumAttributes"] = @-67863;
	context[@"errSecUnsupportedNumIndexes"] = @-67864;
	context[@"errSecUnsupportedNumRecordTypes"] = @-67865;
	context[@"errSecFieldSpecifiedMultiple"] = @-67866;
	context[@"errSecIncompatibleFieldFormat"] = @-67867;
	context[@"errSecInvalidParsingModule"] = @-67868;
	context[@"errSecDatabaseLocked"] = @-67869;
	context[@"errSecDatastoreIsOpen"] = @-67870;
	context[@"errSecMissingValue"] = @-67871;
	context[@"errSecUnsupportedQueryLimits"] = @-67872;
	context[@"errSecUnsupportedNumSelectionPreds"] = @-67873;
	context[@"errSecUnsupportedOperator"] = @-67874;
	context[@"errSecInvalidDBLocation"] = @-67875;
	context[@"errSecInvalidAccessRequest"] = @-67876;
	context[@"errSecInvalidIndexInfo"] = @-67877;
	context[@"errSecInvalidNewOwner"] = @-67878;
	context[@"errSecInvalidModifyMode"] = @-67879;
	context[@"errSecMissingRequiredExtension"] = @-67880;
	context[@"errSecExtendedKeyUsageNotCritical"] = @-67881;
	context[@"errSecTimestampMissing"] = @-67882;
	context[@"errSecTimestampInvalid"] = @-67883;
	context[@"errSecTimestampNotTrusted"] = @-67884;
	context[@"errSecTimestampServiceNotAvailable"] = @-67885;
	context[@"errSecTimestampBadAlg"] = @-67886;
	context[@"errSecTimestampBadRequest"] = @-67887;
	context[@"errSecTimestampBadDataFormat"] = @-67888;
	context[@"errSecTimestampTimeNotAvailable"] = @-67889;
	context[@"errSecTimestampUnacceptedPolicy"] = @-67890;
	context[@"errSecTimestampUnacceptedExtension"] = @-67891;
	context[@"errSecTimestampAddInfoNotAvailable"] = @-67892;
	context[@"errSecTimestampSystemFailure"] = @-67893;
	context[@"errSecSigningTimeMissing"] = @-67894;
	context[@"errSecTimestampRejection"] = @-67895;
	context[@"errSecTimestampWaiting"] = @-67896;
	context[@"errSecTimestampRevocationWarning"] = @-67897;
	context[@"errSecTimestampRevocationNotification"] = @-67898;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Security_SecBase_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
