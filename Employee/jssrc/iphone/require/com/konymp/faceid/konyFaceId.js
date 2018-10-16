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
    constants.FACE_ID_SERVICE_PROVIDERS = {
        GEMALTO: "FaceIdServiceProviders.GEMALTO"
    };
    return {
        getInstance: function(serviceProvider, serviceConfig, context) {
            konymp.logger.debug("", konymp.logger.FUNCTION_ENTRY);
            try {
                if (serviceProvider === constants.FACE_ID_SERVICE_PROVIDERS.GEMALTO) {
                    context.gemalto = require("com/konymp/faceid/iOSGemalto");
                    context.gemalto.FaceIdService(serviceConfig, context);
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.debug("", konymp.logger.FUNCTION_EXIT);
        }
    };
});