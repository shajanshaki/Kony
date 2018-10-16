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
    constants.ENROLL_QUALITY_THRESHOLD = {
        MIN: 0,
        MAX: 100,
        DEFAULT: 50
    };
    constants.LIVENESS_MODE = {
        IMAGE: 0,
        LIVENESS_PASSIVE: 1,
    };
    constants.LIVENESS_THRESHOLD = {
        MIN: 0,
        MAX: 100,
        DEFAULT: 0
    };
    constants.VERIFY_QUALITY_THRESHOLD = {
        MIN: 0,
        MAX: 100,
        DEFAULT: 50,
    };
    constants.MATCHING_THRESHOLD = {
        MIN: 0,
        MAX: 72,
        DEFAULT: 48
    };
    constants.TOKEN_CONFIG_TYPE = {
        CLEAR_TEXT: 1
    };
    constants.TOKEN_TYPE = {
        OATH: 0
    };
    constants.FACE_ID_SERVICE_PROVIDERS = {
        GEMALTO: "FaceIdServiceProviders.GEMALTO"
    };
    constants.SECRET_LENGTH = 20;
    return {
        /**
         * @constructor constructor
         * @param basicConfig
         * @param layoutConfig
         * @param pspConfig
         */
        constructor: function(baseConfig, layoutConfig, pspConfig) {

            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);

        },
        /**
         * @function initGettersSetters
         * @description contains getters/setters for custom properties
         */
        initGettersSetters: function() {

            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            defineGetter(this, "enrollTimeout", function() {
                return this._enrollTimeout;
            });
            defineSetter(this, "enrollTimeout", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting enrollTimeout Start", konymp.logger.FUNCTION_ENTRY);
                    this._enrollTimeout = value;
                } catch (e) {
                    konymp.logger.error(JSON.stringify(e), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting enrollTimeout End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "enrollQualityThreshold", function() {
                return this._enrollQualityThreshold;
            });
            defineSetter(this, "enrollQualityThreshold", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting enrollQualityThreshold Start", konymp.logger.FUNCTION_ENTRY);
                    if (value >= constants.ENROLL_QUALITY_THRESHOLD.MIN && value <= constants.ENROLL_QUALITY_THRESHOLD.MAX)
                        this._enrollQualityThreshold = value;
                    else {
                        this._enrollQualityThreshold = constants.ENROLL_QUALITY_THRESHOLD.DEFAULT;
                        konymp.logger.info("The given value is not between 0 to 100, Setting the default value", konymp.logger.DEFAULT);
                    }
                } catch (e) {
                    konymp.logger.error(JSON.stringify(e), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting enrollQualityThreshold End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "verifyTimeout", function() {
                return this._verifyTimeout;
            });
            defineSetter(this, "verifyTimeout", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting verifyTimeout Start", konymp.logger.FUNCTION_ENTRY);
                    this._verifyTimeout = value;
                } catch (e) {
                    konymp.logger.error(JSON.stringify(e), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting verifyTimeout End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "livenessMode", function() {
                return this._livenessMode;
            });
            defineSetter(this, "livenessMode", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting livenessMode Start", konymp.logger.FUNCTION_ENTRY);
                    if (value == "IMAGE")
                        this._livenessMode = constants.LIVENESS_MODE.IMAGE;
                    else if (value == "LIVENESS_PASSIVE")
                        this._livenessMode = constants.LIVENESS_MODE.LIVENESS_PASSIVE;
                } catch (e) {
                    konymp.logger.error(JSON.stringify(e), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting livenessMode End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "livenessThreshold", function() {
                return this._livenessThreshold;
            });
            defineSetter(this, "livenessThreshold", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting livenessThreshold Start", konymp.logger.FUNCTION_ENTRY);
                    if (value >= constants.LIVENESS_THRESHOLD.MIN && value <= constants.LIVENESS_THRESHOLD.MAX)
                        this._livenessThreshold = value;
                    else {
                        this._livenessThreshold = constants.LIVENESS_THRESHOLD.DEFAULT;
                        konymp.logger.info("The given value is not between 0 to 100, Setting the default value", konymp.logger.DEFAULT);
                    }
                } catch (e) {
                    konymp.logger.error(JSON.stringify(e), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting livenessThreshold End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "blinkTimeout", function() {
                return this._blinkTimeout;
            });
            defineSetter(this, "blinkTimeout", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting blinkTimeout Start", konymp.logger.FUNCTION_ENTRY);
                    this._blinkTimeout = value;
                } catch (e) {
                    konymp.logger.error(JSON.stringify(e), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting blinkTimeout End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "verifyQualityThreshold", function() {
                return this._verifyQualityThreshold;
            });
            defineSetter(this, "verifyQualityThreshold", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting verifyQualityThreshold Start", konymp.logger.FUNCTION_ENTRY);
                    if (value >= constants.VERIFY_QUALITY_THRESHOLD.MIN && value <= constants.VERIFY_QUALITY_THRESHOLD.MAX)
                        this._verifyQualityThreshold = value;
                    else {
                        this._verifyQualityThreshold = constants.VERIFY_QUALITY_THRESHOLD.DEFAULT;
                        konymp.logger.info("The given value is not between 0 to 100, Setting the default value", konymp.logger.DEFAULT);
                    }
                } catch (e) {
                    konymp.logger.error(JSON.stringify(e), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting verifyQualityThreshold End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "matchingThreshold", function() {
                return this._matchingThreshold;
            });
            defineSetter(this, "matchingThreshold", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting matchingThreshold Start", konymp.logger.FUNCTION_ENTRY);
                    if (value >= constants.MATCHING_THRESHOLD.MIN && value <= constants.MATCHING_THRESHOLD.MAX)
                        this._matchingThreshold = value;
                    else {
                        this._matchingThreshold = constants.MATCHING_THRESHOLD.DEFAULT;
                        konymp.logger.info("The given value is not between 0 to 72, Setting the default value", konymp.logger.DEFAULT);
                    }
                } catch (e) {
                    konymp.logger.error(JSON.stringify(e), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting matchingThreshold End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "tokenName", function() {
                return this._tokenName;
            });
            defineSetter(this, "tokenName", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting tokenName Start", konymp.logger.FUNCTION_ENTRY);
                    this._tokenName = value;
                } catch (e) {
                    konymp.logger.error(JSON.stringify(e), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting tokenName End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "tokenConfigType", function() {
                return this._tokenConfigType;
            });
            defineSetter(this, "tokenConfigType", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting tokenConfigType Start", konymp.logger.FUNCTION_ENTRY);
                    if (value == "CLEAR_TEXT")
                        this._tokenConfigType = constants.TOKEN_CONFIG_TYPE.CLEAR_TEXT;
                } catch (e) {
                    konymp.logger.error(JSON.stringify(e), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting tokenConfigType End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "secret", function() {
                return this._secret;
            });
            defineSetter(this, "secret", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting secret Start", konymp.logger.FUNCTION_ENTRY);
                    if (value.length === constants.SECRET_LENGTH) {
                        this._secret = value;
                    } else {
                        throw {
                            "message": "Secret should be of 20 characters",
                            "Error": "Secret length error",
                            "name": "Userdefined Exception"
                        };
                    }

                } catch (exception) {
                    konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
                    if (exception.name === "Userdefined Exception") {
                        throw JSON.stringify(exception);
                    }
                }
                konymp.logger.trace("-----------------------------Setting secret End", konymp.logger.FUNCTION_EXIT);
            });
            defineGetter(this, "pin", function() {
                return this._pin;
            });
            defineSetter(this, "pin", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting pin Start", konymp.logger.FUNCTION_ENTRY);
                    this._pin = value;
                } catch (exception) {
                    konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting pin End", konymp.logger.FUNCTION_EXIT);
            });
           defineGetter(this, "licenseString", function() {
                return this._licenseString;
            });
            defineSetter(this, "licenseString", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting licenseString Start", konymp.logger.FUNCTION_ENTRY);
                    this._licenseString = value;
                } catch (exception) {
                    konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting licenseString End", konymp.logger.FUNCTION_EXIT);
            });
          defineGetter(this, "serverURL", function() {
                return this._serverURL;
            });
            defineSetter(this, "serverURL", function(value) {
                try {
                    konymp.logger.trace("----------------------------- Setting licenseString Start", konymp.logger.FUNCTION_ENTRY);
                    this._serverURL = value;
                } catch (exception) {
                    konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
                }
                konymp.logger.trace("-----------------------------Setting licenseString End", konymp.logger.FUNCTION_EXIT);
            });
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);

        },
        /**
         * @function configuration
         * @description This function is used to configure gemalto
         * @public
         */
        configuration: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var serviceConfig = {
                    tokenConfig: {
                        tokenName: this.tokenName,
                        tokenType: constants.TOKEN_TYPE.OATH, //oath - Fos passphrase or CAP
                        tokenConfigType: parseInt(this.tokenConfigType), //eps or cleartext or offline

                        //Following properties are valid if value of tokenConfigType property is cleartext
                        secret: this.secret,
						pin: this.pin
                    },

                    licenseConfig: {
                        licenseString: this.licenseString,
                      	licenseServerUrl: this.serverURL
                    },

                    enrollConfig: {
                        timeout: this.enrollTimeout,
                        qualityThreshold: this.enrollQualityThreshold
                    },

                    verifyConfig: {
                        timeout: this.verifyTimeout,
                        livenessMode: parseInt(this.livenessMode),
                        livenessThreshold: this.livenessThreshold,
                        blinkTimeout: this.blinkTimeout,
                        qualityThreshold: this.verifyQualityThreshold,
                        matchingThreshold: this.matchingThreshold
                    }

                };
                var returnValue = this.areEventsConfigured();
                if (returnValue === "Events are configured") {

                    this.konyfaceID = require("com/konymp/faceid/konyFaceId");
                    this.konyfaceID.getInstance(constants.FACE_ID_SERVICE_PROVIDERS.GEMALTO, serviceConfig, this);
                    this.initialize();
                } else {
                    throw {
                        "message": returnValue,
                        "Error": "Events not configured",
                        "name": "Userdefined Exception"
                    };
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
                if (exception.name === "Userdefined Exception") {
                    throw JSON.stringify(exception);
                }
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function initialize
         * @description This function is used to initialize gemalto
         * @public
         */
        initialize: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {

                var self = this;
                kony.application.showLoadingScreen(null, "Loading...", constants.LOADING_SCREEN_POSITION_ONLY_CENTER, false, true, {});
                this.gemalto.initialize({
                    onSuccess: function() {
                        kony.application.dismissLoadingScreen();
                        if (self.onInitSuccess !== null && self.onInitSuccess !== undefined) {
                            self.onInitSuccess();
                        } else {
                            konymp.logger.info("Initialize Success", konymp.logger.DEFAULT);
                        }
                    },
                    onFailed: function(e) {
                        kony.application.dismissLoadingScreen();
                        if (self.onInitFailure !== null && self.onInitFailure !== undefined) {
                            self.onInitFailure(e);
                        } else {
                            konymp.logger.info("Initialize Failure", konymp.logger.DEFAULT);
                        }
                    }
                }, this);


            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function enroll
         * @description This function is used to enroll the face
         * @public
         */
        enroll: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var self = this;
                this.gemalto.enroll({
                    onSuccess: function() {
                        kony.application.dismissLoadingScreen();
                        if (self.onEnrollSuccess !== null && self.onEnrollSuccess !== undefined) {
                            self.onEnrollSuccess();
                        } else {
                            konymp.logger.info("Enroll Success", konymp.logger.DEFAULT);
                        }
                    },
                    onFailed: function(e) {
                        kony.application.dismissLoadingScreen();
                        if (self.onEnrollFailure !== null && self.onEnrollFailure !== undefined) {
                            self.onEnrollFailure(e);
                        } else {
                            konymp.logger.info("Enroll Failure", konymp.logger.DEFAULT);
                        }
                    }
                }, this);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function verify
         * @description This function is used to verify the face
         * @public
         */
        verify: function() {

            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var self = this;
                this.gemalto.verify({
                    onSuccess: function() {
                        kony.application.dismissLoadingScreen();
                        if (self.onVerifySuccess !== null && self.onVerifySuccess !== undefined) {
                            self.onVerifySuccess();
                        } else {
                            konymp.logger.info("Verify Success", konymp.logger.DEFAULT);
                        }
                    },
                    onFailed: function(e) {
                        kony.application.dismissLoadingScreen();
                        if (self.onVerifyFailure !== null && self.onVerifyFailure !== undefined) {
                            self.onVerifyFailure(e);
                        } else {
                            konymp.logger.info("Enroll Failure", konymp.logger.DEFAULT);
                        }
                    }
                }, this);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function unenroll
         * @description This function is used to unenroll the face
         * @public
         */
        unenroll: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var self = this;
                this.gemalto.unenroll({
                    onSuccess: function() {
                        kony.application.dismissLoadingScreen();
                        if (self.onUnenrollSuccess !== null && self.onUnenrollSuccess !== undefined) {
                            self.onUnenrollSuccess();
                        } else {
                            konymp.logger.info("Uneroll Success", konymp.logger.DEFAULT);
                        }
                    },
                    onFailed: function(e) {
                        kony.application.dismissLoadingScreen();
                        if (self.onUnenrollFailure !== null && self.onUnenrollFailure !== undefined) {
                            self.onUnenrollFailure(e);
                        } else {
                            konymp.logger.info("Unenroll Failure", konymp.logger.DEFAULT);
                        }
                    }
                }, this);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function uninitialize
         * @description This function is used to uninitialize gemalto
         * @public
         */
        uninitialize: function() {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                this.gemalto.uninitialize();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function areEventsConfigured
         * @description This function is used verify the actions are configured
         * @private
         */
        areEventsConfigured: function() {
            try {
                if (this.onInitSuccess === null || this.onInitSuccess === undefined || this.onInitFailure === null || this.onInitFailure === undefined) {
                    return "Init events are not defined";
                } else if (this.onEnrollSuccess === null || this.onEnrollSuccess === undefined || this.onEnrollFailure === null || this.onEnrollFailure === undefined) {
                    return "Enroll events are not defined";
                } else if (this.onVerifySuccess === null || this.onVerifySuccess === undefined || this.onVerifyFailure === null || this.onVerifyFailure === undefined) {
                    return "Verify events are not defined";
                } else if (this.onUnenrollSuccess === null || this.onUnenrollSuccess === undefined || this.onUnenrollFailure === null || this.onUnenrollFailure === undefined) {
                    return "Unenroll events are not defined";
                }

                return "Events are configured";
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
        }
    };
});