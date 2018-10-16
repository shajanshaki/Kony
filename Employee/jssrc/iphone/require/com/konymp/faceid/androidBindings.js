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
    this.instance = null;
    return {
        importClasses: function() {
            try {
                var nativeClasses = {};
                //TODO: import all native classes and populate them in "nativeClasses"
                nativeClasses.KonyMain = java.import("com.konylabs.android.KonyMain");
                nativeClasses.URL = java.import("java.net.URL");
                nativeClasses.Intent = java.import("android.content.Intent");
                nativeClasses.FaceEnrollActivity = java.import("com.kony.gemaltofaceauth.FaceEnrollActivity");
                nativeClasses.FaceEnrollmentActivity = java.import("com.kony.gemaltofaceauth.faceui.FaceEnrollmentActivity");
                nativeClasses.FaceVerifyActivity = java.import("com.kony.gemaltofaceauth.FaceVerifyActivity");
                nativeClasses.FaceVerificationActivity = java.import("com.kony.gemaltofaceauth.faceui.FaceVerificationActivity");
                nativeClasses.ApplicationContextHolder = java.import("com.gemalto.idp.mobile.core.ApplicationContextHolder");
                nativeClasses.IdpCore = java.import("com.gemalto.idp.mobile.core.IdpCore");
                nativeClasses.OtpConfiguration = java.import("com.gemalto.idp.mobile.otp.OtpConfiguration");
                nativeClasses.AuthenticationModule = java.import("com.gemalto.idp.mobile.authentication.AuthenticationModule");
                nativeClasses.FaceAuthService = java.import("com.gemalto.idp.mobile.authentication.mode.face.FaceAuthService");
                nativeClasses.FaceAuthFactory = java.import("com.gemalto.idp.mobile.authentication.mode.face.FaceAuthFactory");
                nativeClasses.FaceAuthSettings = java.import("com.gemalto.idp.mobile.authentication.mode.face.FaceAuthSettings");
                nativeClasses.FaceAuthLicense = java.import("com.gemalto.idp.mobile.authentication.mode.face.FaceAuthLicense");
                nativeClasses.FaceAuthStatus = java.import("com.gemalto.idp.mobile.authentication.mode.face.FaceAuthStatus");
                nativeClasses.OfflineTokenConfigurationBuilder = java.import("com.gemalto.idp.mobile.otp.provisioning.OfflineTokenConfigurationBuilder");
                nativeClasses.EpsConfigurationBuilder = java.import("com.gemalto.idp.mobile.otp.provisioning.EpsConfigurationBuilder");
                nativeClasses.MobileProvisioningProtocol = java.import("com.gemalto.idp.mobile.otp.provisioning.MobileProvisioningProtocol");
                nativeClasses.ClearTextSecretTokenConfigurationBuilder = java.import("com.gemalto.idp.mobile.otp.provisioning.ClearTextSecretTokenConfigurationBuilder");
                nativeClasses.OtpModule = java.import("com.gemalto.idp.mobile.otp.OtpModule");
                nativeClasses.OathService = java.import("com.gemalto.idp.mobile.otp.oath.OathService");
                nativeClasses.CapService = java.import("com.gemalto.idp.mobile.otp.cap.CapService");
                nativeClasses.PinAuthInput = java.import("com.gemalto.idp.mobile.authentication.mode.pin.PinAuthInput");
                nativeClasses.PinAuthService = java.import("com.gemalto.idp.mobile.authentication.mode.pin.PinAuthService");
                nativeClasses.FaceAuthLicenseConfigurationCallback = java.newClass("FaceAuthLicenseConfigurationCallback", "java.lang.Object", ["com.gemalto.idp.mobile.authentication.mode.face.FaceAuthLicenseConfigurationCallback"], {
                    onSuccess: null,
                    onFailed: null,
                    onLicenseConfigurationFailure: function(e) {
                        this.onFailed(e.getMessage());
                    },
                    onLicenseConfigurationSuccess: function() {
                        this.onSuccess();
                    }
                });
                nativeClasses.FaceAuthInitializeCallback = java.newClass("FaceAuthInitializeCallback", "java.lang.Object", ["com.gemalto.idp.mobile.authentication.mode.face.FaceAuthInitializeCallback"], {
                    onSuccess: null,
                    onFailed: null,
                    onInitializeCamera: function(cameraNames) {
                        return null;
                    },
                    onInitializeError: function(e) {
                        this.onFailed(e.getMessage());
                    },
                    onInitializeSuccess: function() {
                        this.onSuccess();
                    }
                });
                nativeClasses.FaceEnrollmentCallback = java.newClass("FaceEnrollmentCallback", "java.lang.Object", ["com.kony.gemaltofaceauth.FaceEnrollmentCallback"], {
                    enrollSuccess: null,
                    enrollFailed: null,
                    onEnrollmentSuccess: function(faceAuthStatus) {
                        this.enrollSuccess();
                    },
                    onEnrollmentFailed: function(e) {
                        this.enrollFailed(e);
                    }
                });
                nativeClasses.FaceVerificationCallback = java.newClass("FaceVerificationCallback", "java.lang.Object", ["com.kony.gemaltofaceauth.FaceVerificationCallback"], {
                    verifySuccess: null,
                    verifyFailed: null,
                    onVerificationSuccess: function() {
                        this.verifySuccess();
                    },
                    onVerificationFailed: function(e) {
                        this.verifyFailed(e);
                    }
                });
                nativeClasses.FaceAuthUnenrollerCallback = java.newClass("FaceAuthUnenrollerCallback", "java.lang.Object", ["com.gemalto.idp.mobile.authentication.mode.face.FaceAuthUnenrollerCallback"], {
                    unenrollFinishCallback: null,
                    unenrollErrorCallback: null,
                    onUnenrollFinish: function(faceAuthStatus) {
                        this.unenrollFinishCallback(faceAuthStatus);
                    },
                    onUnenrollError: function(e) {
                        this.unenrollErrorCallback(e.getMessage());
                    }
                });
                return nativeClasses;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
        },
        import: function() {
            try {
                if (this.instance === null || this.instance === undefined) {
                    this.instance = this.importClasses();
                }
                return this.instance;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
        }
    };
});