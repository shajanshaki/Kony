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
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                var nativeClasses = {};
                nativeClasses.KonyFaceID = objc.import("KonyFaceID");
                konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
                return nativeClasses;

            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);

            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);

        },
        import: function() {
            try {
                konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
                if (this.instance === null || this.instance === undefined) {

                    this.instance = this.importClasses();
                }
                konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
                return this.instance;


            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);

            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        }
    };
});