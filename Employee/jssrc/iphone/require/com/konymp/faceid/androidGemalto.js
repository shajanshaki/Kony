/**
#
#  Created by Team Kony.
#  Copyright (c) 2017 Kony Inc. All rights reserved.
#
**/
define(function() {
    var konymp = konymp || {};
    var konyLoggerModule = require("com/konymp/faceid/konyLogger");
    konymp.logger = (new konyLoggerModule("FaceId Component")) || function() {};
    konymp.logger.setLogLevel("DEBUG");
    constants.TOKEN_CONFIG_TYPE = {
        EPS: 0,
        CLEAR_TEXT: 1,
        OFFLINE: 2
    };
    constants.PROTOCOLS_VERSION = {
        V1: 1,
        V2: 2,
        V3: 3
    };
    constants.TOKEN_TYPE = {
        OATH: 0,
        CAP: 1
    };
    constants.LIVENESS_MODE = {
        IMAGE: 0,
        LIVENESS_PASSIVE: 1,
    };
    return {
        FaceIdService: function(serviceConfig, context) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                this.context = context;
                this.faceAuthService = null;
                this.enableFaceUI = true;
                this.context.nativeClasses = null;
                this.config = null;
                this.androidBindings = require("com/konymp/faceid/androidBindings");
                this.context.nativeClasses = this.androidBindings.import();
                this.config = JSON.parse(JSON.stringify(serviceConfig));
                this.initializeGemaltoSDK();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        initializeGemaltoSDK: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var ApplicationContextHolder = this.context.nativeClasses.ApplicationContextHolder;
                var KonyMain = this.context.nativeClasses.KonyMain;
                var IdpCore = this.context.nativeClasses.IdpCore;
                var OtpConfiguration = this.context.nativeClasses.OtpConfiguration;
                ApplicationContextHolder.setContext(KonyMain.getAppContext());
                if (!IdpCore.isConfigured()) {
                    // Initialize otp configuration
                    var otpConfig = new OtpConfiguration.Builder().setRootPolicy(OtpConfiguration.TokenRootPolicy.IGNORE).build();
                    var otpConfigArray = java.newArray("com.gemalto.idp.mobile.core.IdpConfiguration", [otpConfig]);
                    IdpCore.configure(otpConfigArray);
                    // Login to password manager
                    try {
                        IdpCore.getInstance().getPasswordManager().login();
                    } catch (e) {
                        e.printStackTrace();
                        throw e.getMessage();
                    }
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        getProvisioningConfiguration: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var tokenConfigType = this.config.tokenConfig.tokenConfigType;
                var tokenConfig = null;
                if (tokenConfigType === constants.TOKEN_CONFIG_TYPE.EPS) {
                    tokenConfig = this.getEpsTokenConfiguration();
                } else if (tokenConfigType === constants.TOKEN_CONFIG_TYPE.CLEAR_TEXT) {
                    tokenConfig = this.getClearTextSecretTokenConfiguration();
                } else if (tokenConfigType === constants.TOKEN_CONFIG_TYPE.OFFLINE) {
                    tokenConfig = this.getOfflineTokenConfiguration();
                }
                return tokenConfig;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        getEpsTokenConfiguration: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var EpsConfigurationBuilder = this.context.nativeClasses.EpsConfigurationBuilder;
                var URL = this.context.nativeClasses.URL;
                var secureContainerFactory = this.context.nativeClasses.IdpCore.getInstance().getSecureContainerFactory();
                var registrationCode = secureContainerFactory.fromString(this.config.tokenConfig.registrationCode);
                var url = new URL(this.config.tokenConfig.url);
                var epsTokenConfig = new EpsConfigurationBuilder(registrationCode, url, this.getProvisioningProtocolVersion(), this.config.tokenConfig.rsaKeyId, this.getJavaByteArrayForHex(this.config.tokenConfig.rsaExponent), this.getJavaByteArrayForHex(this.config.tokenConfig.rsaModulus)).build();
                return epsTokenConfig;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        getClearTextSecretTokenConfiguration: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var ClearTextSecretTokenConfigurationBuilder = this.context.nativeClasses.ClearTextSecretTokenConfigurationBuilder;
                var AuthenticationModule = this.context.nativeClasses.AuthenticationModule;
                var PinAuthService = this.context.nativeClasses.PinAuthService;
                var pinAuthInput = PinAuthService.create(AuthenticationModule.create()).createAuthInput(this.config.tokenConfig.pin);
                var secureContainerFactory = this.context.nativeClasses.IdpCore.getInstance().getSecureContainerFactory();
                var secretBytes = secureContainerFactory.fromString(this.config.tokenConfig.secret).toByteArray();
                secretBytes = this.getJavaByteArrayFromJsArray(secretBytes);
                var secret = this.context.nativeClasses.IdpCore.getInstance().getSecureContainerFactory().createByteArray(secretBytes, true);
                var clearTextTokenConfig = new ClearTextSecretTokenConfigurationBuilder(pinAuthInput, secret, true).build();
                return clearTextTokenConfig;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        getOfflineTokenConfiguration: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var OfflineTokenConfigurationBuilder = this.context.nativeClasses.OfflineTokenConfigurationBuilder;
                var secureContainerFactory = this.context.nativeClasses.IdpCore.getInstance().getSecureContainerFactory();
                var sessionKey = secureContainerFactory.fromByteArray(this.getJavaByteArrayForHex(this.config.tokenConfig.sessionKey), true);
                var provisioningResponse = secureContainerFactory.fromByteArray(this.getJavaByteArrayForHex(this.config.tokenConfig.provisioningResponse), true);
                var offlineTokenConfig = new OfflineTokenConfigurationBuilder(this.getProvisioningProtocolVersion(), sessionKey, provisioningResponse).build();
                return offlineTokenConfig;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        getJavaByteArrayForHex: function(hexString) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var out = [];
                if (hexString.length % 2 !== 0) {
                    hexString = 0 + hexString;
                }
                for (var startIndex = 0; startIndex < hexString.length; startIndex = startIndex + 2) {
                    var substring = hexString.substr(startIndex, 2);
                    out[startIndex / 2] = java.newByte(parseInt(substring, 16));
                }
                return java.newArray("byte", out);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        getJavaByteArrayFromJsArray: function(jsArray) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var out = [];
                for (var i = 0; i < jsArray.length; i++) {
                    out[i] = java.newByte(jsArray[i]);
                }
                return java.newArray("byte", out);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        getProvisioningProtocolVersion: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var protocolVersion = this.config.tokenConfig.protocolVersion;
                var MobileProvisioningProtocol = this.context.nativeClasses.MobileProvisioningProtocol;
                if (protocolVersion === constants.PROTOCOLS_VERSION.V1) {
                    return MobileProvisioningProtocol.PROVISIONING_PROTOCOL_V1;
                } else if (protocolVersion === constants.PROTOCOLS_VERSION.V2) {
                    return MobileProvisioningProtocol.PROVISIONING_PROTOCOL_V2;
                } else if (protocolVersion === constants.PROTOCOLS_VERSION.V3) {
                    return MobileProvisioningProtocol.PROVISIONING_PROTOCOL_V3;
                } else {
                    throw "Provisioning protocol version required";
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        createOATHToken: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var OtpModule = this.context.nativeClasses.OtpModule;
                var OathService = this.context.nativeClasses.OathService;
                var oathService = OathService.create(OtpModule.create());
                var tokenConfig = this.getProvisioningConfiguration(this.config.tokenConfig);
                var token = oathService.getTokenManager().createToken(this.config.tokenConfig.tokenName, tokenConfig);
                return token;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        initializeFaceAuth: function(initCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var uid = kony.os.deviceInfo().uid; //This is a hack to get phone state permission
                if (this.faceAuthService.isInitialized()) {
                    initCallbacks.onSuccess();
                } else {
                    var FaceAuthInitializeCallback = this.context.nativeClasses.FaceAuthInitializeCallback;
                    var faceAuthInitializeCallback = new FaceAuthInitializeCallback();
                    faceAuthInitializeCallback.onSuccess = this.onFaceAuthInitSuccess.bind(this, initCallbacks);
                    faceAuthInitializeCallback.onFailed = this.onFaceAuthInitFailed.bind(this, initCallbacks);
                    this.faceAuthService.initialize(faceAuthInitializeCallback);
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        onFaceAuthInitSuccess: function(initCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                initCallbacks.onSuccess();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        onFaceAuthInitFailed: function(e, initCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                initCallbacks.onFailed("Initialization failed due to " + e);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        configureLicense: function(initCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var FaceAuthLicense = this.context.nativeClasses.FaceAuthLicense;
                var FaceAuthLicenseConfigurationCallback = this.context.nativeClasses.FaceAuthLicenseConfigurationCallback;
                var license = new FaceAuthLicense.Builder().setServerUrl(this.config.licenseConfig.licenseServerUrl).setLicenseEntitlement(this.config.licenseConfig.licenseString).build();
                var faceAuthLicenseConfigurationCallback = new FaceAuthLicenseConfigurationCallback();
                faceAuthLicenseConfigurationCallback.onSuccess = this.onLicenseConfigurationSuccess.bind(this, initCallbacks);
                faceAuthLicenseConfigurationCallback.onFailed = this.onLicenseConfigurationFailed.bind(this, initCallbacks);
                this.faceAuthService.configureLicense(license, faceAuthLicenseConfigurationCallback);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        getOATHToken: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var OathService = this.context.nativeClasses.OathService;
                var OtpModule = this.context.nativeClasses.OtpModule;
                var oathService = OathService.create(OtpModule.create());
                var token = oathService.getTokenManager().getToken(this.config.tokenConfig.tokenName);
                return token;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        getToken: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var token = null;
                if (this.config.tokenConfig.tokenType === constants.TOKEN_TYPE.OATH) {
                    token = this.getOATHToken();
                }
                return token;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        createToken: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var token = this.getToken();
                if (!token) {
                    if (this.config.tokenConfig.tokenType === constants.TOKEN_TYPE.OATH) {
                        token = this.createOATHToken();
                    }
                }
                return token;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        _initialize: function(initCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var FaceAuthService = this.context.nativeClasses.FaceAuthService;
                if (this.faceAuthService === null) {
                    var AuthenticationModule = this.context.nativeClasses.AuthenticationModule;
                    var authModule = AuthenticationModule.create();
                    this.faceAuthService = FaceAuthService.create(authModule);
                    if (!this.faceAuthService.isSupported()) {
                        initCallbacks.onFailed("Initialization Failed. FaceAuth service not supported");
                    }
                }
                try {
                    var token = this.createToken();
                    if (token) {
                        // To-Do
                        FaceAuthService.setContext(this.context.nativeClasses.KonyMain.getActContext());
                        this.configureLicense(initCallbacks);
                    } else {
                        initCallbacks.onFailed("Initialization Failed. Failed to create token with name '" + this.config.tokenConfig.tokenName + "'");
                    }
                } catch (e) {
                    initCallbacks.onFailed("Initialization Failed due to " + e);
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        onLicenseConfigurationSuccess: function(initCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                this.initializeFaceAuth(initCallbacks);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        onLicenseConfigurationFailed: function(initCallbacks, e) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                initCallbacks.onFailed("Initialization failed. Unable to configure license due to " + e);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        permissionCallback: function(initCallbacks, permissionStatus) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                if (permissionStatus.status == kony.application.PERMISSION_GRANTED) {
                    try {
                        this.requestPhoneStatePermission();
                    } catch (exception) {
                        konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
                    }
                    this._initialize(initCallbacks);
                } else {
                    initCallbacks.onFailed("Initialization failed. Permission denied to access camera");
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        requestPhoneStatePermission: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            var uid = kony.os.deviceInfo().uid; //This is a hack to get phone state permission
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        initialize: function(initCallbacks, context) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                this.context = context;
                var cameraPermission = kony.application.checkPermission(kony.os.RESOURCE_CAMERA);
                if (cameraPermission.status == kony.application.PERMISSION_DENIED) {
                    kony.application.requestPermission(kony.os.RESOURCE_CAMERA, this.permissionCallback.bind(this, initCallbacks));
                } else {
                    try {
                        this.requestPhoneStatePermission();
                    } catch (exception) {
                        konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
                    }
                    this._initialize(initCallbacks);
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        enroll: function(enrollCallbacks, context) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                this.context = context;
                if (this.faceAuthService === null || !this.faceAuthService.isInitialized()) {
                    enrollCallbacks.onFailed("FaceAuth service not initialized");
                    return;
                }
                if (this.faceAuthService.isConfigured()) {
                    enrollCallbacks.onFailed("Face already enrolled");
                    return;
                }
                var FaceEnrollmentCallback = this.context.nativeClasses.FaceEnrollmentCallback;
                var Intent = this.context.nativeClasses.Intent;
                var FaceEnrollActivity = null;
                if (this.enableFaceUI) {
                    FaceEnrollActivity = this.context.nativeClasses.FaceEnrollmentActivity;
                } else {
                    FaceEnrollActivity = this.context.nativeClasses.FaceEnrollActivity;
                }
                var enrollConfig = this.config.enrollConfig;
                var faceEnrollmentCallback = new FaceEnrollmentCallback();
                faceEnrollmentCallback.enrollSuccess = this.onEnrollSuccess.bind(this, enrollCallbacks);
                faceEnrollmentCallback.enrollFailed = this.onEnrollFailed.bind(this, enrollCallbacks);
                if (enrollConfig && enrollConfig.timeout) {
                    FaceEnrollActivity.setTimeout(enrollConfig.timeout);
                } else {
                    FaceEnrollActivity.setTimeout(5000);
                }
                FaceEnrollActivity.setEnrollmentCallback(faceEnrollmentCallback);
                var enrollerSettings = this.faceAuthService.getFaceAuthFactory().createFaceAuthEnrollerSettings();
                this.setFaceAuthSettings(enrollerSettings, enrollConfig);
                FaceEnrollActivity.setEnrollerSettings(enrollerSettings);
                var intent = new Intent(this.context.nativeClasses.KonyMain.getActContext(), FaceEnrollActivity.class);
                this.context.nativeClasses.KonyMain.getActContext().startActivity(intent);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        onEnrollSuccess: function(enrollCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                this.activateFaceAuthMode();
                enrollCallbacks.onSuccess();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        onEnrollFailed: function(e, enrollCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                enrollCallbacks.onFailed("Enrollment Failed. " + e);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        setFaceAuthSettings: function(faceAuthSettings, config) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                if (!config) return;
                var livenessMode = this.getLivenessMode(config);
                if (livenessMode) {
                    faceAuthSettings.setLivenessMode(livenessMode);
                }
                var livenessThreshold = config.livenessThreshold;
                if (livenessThreshold) {
                    faceAuthSettings.setLivenessThreshold(livenessThreshold);
                }
                var blinkTimeout = config.blinkTimeout;
                if (blinkTimeout) {
                    faceAuthSettings.setLivenessBlinkTimeout(blinkTimeout);
                }
                var qualityThreshold = config.qualityThreshold;
                if (qualityThreshold) {
                    faceAuthSettings.setQualityThreshold(qualityThreshold);
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        getLivenessMode: function(config) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                if (!config) return;
                var livenessMode;
                var FaceAuthSettings = this.context.nativeClasses.FaceAuthSettings;
                if (config.livenessMode === constants.LIVENESS_MODE.IMAGE) {
                    livenessMode = FaceAuthSettings.FaceAuthLivenessMode.IMAGE;
                } else if (config.livenessMode === constants.LIVENESS_MODE.LIVENESS_PASSIVE) {
                    livenessMode = FaceAuthSettings.FaceAuthLivenessMode.LIVENESS_PASSIVE;
                }
                return livenessMode;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        activateFaceAuthMode: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var token = this.getToken();
                var PinAuthService = this.context.nativeClasses.PinAuthService;
                var AuthenticationModule = this.context.nativeClasses.AuthenticationModule;
                var pinAuthInput = PinAuthService.create(AuthenticationModule.create()).createAuthInput(this.config.tokenConfig.pin);
                if (!token.isMultiAuthModeEnabled()) {
                    token.upgradeToMultiAuthMode(pinAuthInput);
                }
                if (!token.isAuthModeActive(this.faceAuthService.getAuthMode())) {
                    token.activateAuthMode(this.faceAuthService.getAuthMode(), pinAuthInput);
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        verify: function(verifyCallbacks, context) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                this.context = context;
                if (this.faceAuthService === null || !this.faceAuthService.isInitialized()) {
                    verifyCallbacks.onFailed("FaceAuth service not initialized");
                    return;
                }
                if (!this.faceAuthService.isConfigured()) {
                    verifyCallbacks.onFailed("Face not enrolled");
                    return;
                }
                var IdpCore = this.context.nativeClasses.IdpCore;
                var token = null;
                var pm = IdpCore.getInstance().getPasswordManager();
                try {
                    if (!pm.isLoggedIn()) {
                        pm.isLoggedIn();
                    }
                    token = this.getToken();
                } catch (e) {
                    verifyCallbacks.onFailed("Verification failed. " + e);
                    return;
                }
                if (token) {
                    var FaceVerifyActivity;
                    var FaceVerificationCallback = this.context.nativeClasses.FaceVerificationCallback;
                    var Intent = this.context.nativeClasses.Intent;
                    var KonyMain = this.context.nativeClasses.KonyMain;
                    if (this.enableFaceUI) {
                        FaceVerifyActivity = this.context.nativeClasses.FaceVerificationActivity;
                    } else {
                        FaceVerifyActivity = this.context.nativeClasses.FaceVerifyActivity;
                    }
                    var verifyConfig = this.config.verifyConfig;
                    var faceVerificationCallback = new FaceVerificationCallback();
                    faceVerificationCallback.verifySuccess = this.onVerifySuccess.bind(this, verifyCallbacks);
                    faceVerificationCallback.verifyFailed = this.onVerifyFailed.bind(this, verifyCallbacks);
                    if (verifyConfig && verifyConfig.timeout) {
                        FaceVerifyActivity.setTimeout(verifyConfig.timeout);
                    } else {
                        FaceVerifyActivity.setTimeout(5000);
                    }
                    FaceVerifyActivity.setVerificationCallback(faceVerificationCallback);
                    FaceVerifyActivity.setToken(token);
                    var verifierSettings = this.faceAuthService.getFaceAuthFactory().createFaceAuthVerifierSettings();
                    this.setFaceAuthSettings(verifierSettings, verifyConfig);
                    if (verifyConfig && verifyConfig.matchingThreshold) {
                        verifierSettings.setMatchingThreshold(verifyConfig.matchingThreshold);
                    }
                    FaceVerifyActivity.setVerifierSettings(verifierSettings);
                    var intent = new Intent(KonyMain.getActContext(), FaceVerifyActivity.class);
                    KonyMain.getActContext().startActivity(intent);
                } else {
                    verifyCallbacks.onFailed("Verification failed. Token not found with name '" + this.config.tokenConfig.tokenName + "'");
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        onVerifySuccess: function(verifyCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                verifyCallbacks.onSuccess();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        onVerifyFailed: function(verifyCallbacks, error) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                verifyCallbacks.onFailed("Verfication failed. " + error);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        unenroll: function(unenrollCallbacks, context) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                this.context = context;
                if (this.faceAuthService === null || !this.faceAuthService.isInitialized()) {
                    unenrollCallbacks.onFailed("FaceAuth service not initialized");
                    return;
                }
                if (!this.faceAuthService.isConfigured()) {
                    unenrollCallbacks.onFailed("Face not enrolled");
                    return;
                }
                var KonyMain = this.context.nativeClasses.KonyMain;
                var FaceAuthUnenrollerCallback = this.context.nativeClasses.FaceAuthUnenrollerCallback;
                var FaceAuthService = this.context.nativeClasses.FaceAuthService;
                FaceAuthService.setContext(KonyMain.getActContext());
                var faceAuthFactory = this.faceAuthService.getFaceAuthFactory();
                var enroller = faceAuthFactory.createFaceAuthEnroller();
                var faceAuthUnenrollerCallback = new FaceAuthUnenrollerCallback();
                faceAuthUnenrollerCallback.unenrollFinishCallback = this.onUnenrollFinish.bind(this, unenrollCallbacks);
                faceAuthUnenrollerCallback.unenrollErrorCallback = this.onUnenrollError.bind(this, unenrollCallbacks);
                enroller.unenroll(faceAuthUnenrollerCallback);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        onUnenrollFinish: function(unenrollCallbacks, faceAuthStatus) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var FaceAuthStatus = this.context.nativeClasses.FaceAuthStatus;
                var status = faceAuthStatus.toString();
                if (status === FaceAuthStatus.SUCCESS.toString()) {
                    unenrollCallbacks.onSuccess();
                } else {
                    unenrollCallbacks.onFailed("Unenrollment failed due to " + status);
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        onUnenrollError: function(unenrollCallbacks, e) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                unenrollCallbacks.onFailed("Unenrollment failed due to " + e);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        uninitialize: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                if (this.faceAuthService !== null && this.faceAuthService.isInitialized()) {
                    this.faceAuthService.uninitialize();
                    konymp.logger.info("Un-initialize Success", konymp.logger.DEFAULT);
                } else {
                    konymp.logger.info("FaceAuth service not initialized", konymp.logger.DEFAULT);
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
    };
});