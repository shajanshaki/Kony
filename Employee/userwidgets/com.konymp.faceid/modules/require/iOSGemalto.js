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
    constants.TOKEN_TYPE = {
        OATH: 0,
        CAP: 1
    };
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
    this.config = null;
    this.faceAuthService = null;
    return {

        FaceIdService: function(serviceConfig, context) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                this.context = context;
                this.context.nativeClasses = null;
                this.iOSBindings = require("com/konymp/faceid/iOSJsBindings");

                this.context.nativeClasses = this.iOSBindings.import();
                this.config = JSON.parse(JSON.stringify(serviceConfig));
                this.initializeGemaltoSDK(serviceConfig);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);

            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },

        initializeGemaltoSDK: function(serviceConfig) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            //create  native wrapper and call initializeFaceSDK
            try {
                this.faceAuthService = this.context.nativeClasses.KonyFaceID.alloc().jsinit();
                this.faceAuthService.initializeSDKWithConfig(serviceConfig);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);

            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        _initialize: function(initCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                if (this.faceAuthService) {
                    this.faceAuthService.initializeWithSuccessCallbackErrorCallback(initCallbacks.onSuccess, initCallbacks.onFailed);
                } else {
                    initCallbacks.onFailed("FaceID SDK wrapper init created");
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);

            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);

        },
        permissionCallback: function(initCallbacks, permissionStatus) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                if (permissionStatus.status == kony.application.PERMISSION_GRANTED) {
                    this._initialize(initCallbacks);
                } else {
                    initCallbacks.onFailed("Initialization failed. Permission denied to access camera");
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);

            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },


        initialize: function(initCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var cameraPermission = kony.application.checkPermission(kony.os.RESOURCE_CAMERA);
                if (cameraPermission.status == kony.application.PERMISSION_DENIED) {
                    kony.application.requestPermission(kony.os.RESOURCE_CAMERA, this.permissionCallback.bind(this, initCallbacks));
                } else {
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

                this.faceAuthService.enrollWithSuccessCallbackErrorCallback(enrollCallbacks.onSuccess, enrollCallbacks.onFailed);
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
        getProvisioningConfiguration: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var tokenConfigType = this.config.tokenConfig.tokenConfigType;
                var tokenConfig = null;
                if (tokenConfigType === constants.TOKEN_CONFIG_TYPE.EPS) {
                    tokenConfig = this.getEpsTokenConfiguration();
                } else if (tokenConfigType === constants.TOKEN_CONFIG_TYPE.CLEAR_TEXT) {
                    this.getClearTextSecretTokenConfiguration();
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
                var IdpCore = this.context.nativeClasses.IdpCore;
                var EpsConfigurationBuilder = this.context.nativeClasses.EpsConfigurationBuilder;
                var URL = this.context.nativeClasses.URL;

                var secureContainerFactory = IdpCore.getInstance().getSecureContainerFactory();
                var registrationCode = secureContainerFactory.fromString(this.config.tokenConfig.registrationCode);
                var url = new URL(this.config.tokenConfig.url);
                var epsTokenConfig = new EpsConfigurationBuilder(
                    registrationCode,
                    url,
                    this.getProvisioningProtocolVersion(),
                    this.config.tokenConfig.rsaKeyId,
                    this.getJavaByteArrayForHex(this.config.tokenConfig.rsaExponent),
                    this.getJavaByteArrayForHex(this.config.tokenConfig.rsaModulus)
                ).build();
                return epsTokenConfig;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);

            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },

        getClearTextSecretTokenConfiguration: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var IdpCore = this.context.nativeClasses.IdpCore;
                var ClearTextSecretTokenConfigurationBuilder = this.context.nativeClasses.ClearTextSecretTokenConfigurationBuilder;
                var AuthenticationModule = this.context.nativeClasses.AuthenticationModule;
                var PinAuthService = this.context.nativeClasses.PinAuthService;

                var pinAuthInput = PinAuthService.create(AuthenticationModule.create()).createAuthInput(this.config.tokenConfig.pin);
                var secret = IdpCore.getInstance().getSecureContainerFactory().createByteArray(this.config.tokenConfig.secret.getBytes(), true);
                var clearTextTokenConfig = new ClearTextSecretTokenConfigurationBuilder(
                    pinAuthInput,
                    secret,
                    true
                ).build();
                return clearTextTokenConfig;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);

            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },

        getOfflineTokenConfiguration: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var IdpCore = this.context.nativeClasses.IdpCore;
                var OfflineTokenConfigurationBuilder = this.context.nativeClasses.OfflineTokenConfigurationBuilder;

                var secureContainerFactory = IdpCore.getInstance().getSecureContainerFactory();
                var sessionKey = secureContainerFactory.fromByteArray(this.getJavaByteArrayForHex(this.config.tokenConfig.sessionKey), true);
                var provisioningResponse = secureContainerFactory.fromByteArray(this.getJavaByteArrayForHex(this.config.tokenConfig.provisioningResponse), true);
                var offlineTokenConfig = new OfflineTokenConfigurationBuilder(
                    this.getProvisioningProtocolVersion(),
                    sessionKey,
                    provisioningResponse
                ).build();
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

        verify: function(verifyCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                if (this.faceAuthService === null || !this.faceAuthService.isInitialized()) {
                    verifyCallbacks.onFailed("FaceAuth service not initialized");
                    return;
                }

                if (!this.faceAuthService.isConfigured()) {
                    verifyCallbacks.onFailed("Face not enrolled");
                    return;
                }


                this.faceAuthService.verifyWithSuccessCallbackErrorCallback(verifyCallbacks.onSuccess, verifyCallbacks.onFailed);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);

            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);

        },
        unenroll: function(unenrollCallbacks) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                if (this.faceAuthService === null || !this.faceAuthService.isInitialized()) {
                    unenrollCallbacks.onFailed("FaceAuth service not initialized");
                    return;
                }

                if (!this.faceAuthService.isConfigured()) {
                    unenrollCallbacks.onFailed("Face not enrolled");
                    return;
                }

                this.faceAuthService.unEnrollWithSuccessCallbackErrorCallback(unenrollCallbacks.onSuccess, unenrollCallbacks.onFailed);

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
        }
    };
});