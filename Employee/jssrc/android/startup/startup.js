//startup.js file
var globalhttpheaders = {};
var appConfig = {
    appId: "EmpDirectory",
    appName: "EmployeeDirectory",
    appVersion: "1.0.0",
    platformVersion: null,
    isDebug: true,
    isturlbase: "https://empselfservice2.konycloud.com/services",
    isMFApp: true,
    appKey: "a9f7f91014d9a8fa7c43b0e922bf892d",
    appSecret: "52d856b18caadf8c4b4e2103da00d025",
    serviceUrl: "https://100017816.auth.konycloud.com/appconfig",
    svcDoc: {
        "selflink": "https://100017816.auth.konycloud.com/appconfig",
        "identity_meta": {
            "reusableLinkedinLogin": {
                "success_url": "allow_any"
            },
            "reusableOffice365Login": {
                "success_url": "allow_any"
            }
        },
        "integsvc": {
            "fetchImageService": "https://empselfservice2.konycloud.com/services/fetchImageService",
            "EmployeeStorageObjects": "https://empselfservice2.konycloud.com/services/EmployeeStorageObjects"
        },
        "service_doc_etag": "00000165B42B20D0",
        "appId": "0f177cbc-cf1c-422c-954b-760558655dcb",
        "identity_features": {
            "reporting_params_header_allowed": true
        },
        "name": "EmployeeDirectoryApp",
        "reportingsvc": {
            "session": "https://empselfservice2.konycloud.com/services/IST",
            "custom": "https://empselfservice2.konycloud.com/services/CMS"
        },
        "baseId": "851949b5-5773-413e-90c7-fcde3dea9bee",
        "login": [{
            "alias": "reusableLinkedinLogin",
            "type": "oauth2",
            "prov": "reusableLinkedinLogin",
            "url": "https://100017816.auth.konycloud.com"
        }, {
            "alias": "reusableOffice365Login",
            "type": "oauth2",
            "prov": "reusableOffice365Login",
            "url": "https://100017816.auth.konycloud.com"
        }, {
            "alias": "userstore",
            "type": "basic",
            "prov": "userstore",
            "url": "https://100017816.auth.konycloud.com"
        }, {
            "alias": "reusableFacebookLogin",
            "type": "oauth2",
            "prov": "reusableFacebookLogin",
            "url": "https://100017816.auth.konycloud.com"
        }],
        "services_meta": {
            "EmployeeModelSchema": {
                "offline": false,
                "metadata_url": "https://empselfservice2.konycloud.com/services/metadata/v1/EmployeeModelSchema",
                "type": "objectsvc",
                "version": "1.0",
                "url": "https://empselfservice2.konycloud.com/services/data/v1/EmployeeModelSchema"
            },
            "StorageObjectServices": {
                "offline": false,
                "metadata_url": "https://empselfservice2.konycloud.com/services/metadata/v1/StorageObjectServices",
                "type": "objectsvc",
                "version": "1.0",
                "url": "https://empselfservice2.konycloud.com/services/data/v1/StorageObjectServices"
            },
            "fetchImageService": {
                "type": "integsvc",
                "version": "1.0",
                "url": "https://empselfservice2.konycloud.com/services/fetchImageService"
            },
            "EmployeeStorageObjects": {
                "type": "integsvc",
                "version": "1.0",
                "url": "https://empselfservice2.konycloud.com/services/EmployeeStorageObjects"
            }
        }
    },
    runtimeAppVersion: "1.0",
    eventTypes: ["FormEntry", "Error", "Crash"],
    url: "https://100017816.auth.konycloud.com/appconfig",
    secureurl: "https://100017816.auth.konycloud.com/appconfig"
};
sessionID = "";

function appInit(params) {
    skinsInit();
    setAppBehaviors();
};

function setAppBehaviors() {
    kony.application.setApplicationBehaviors({
        applyMarginPaddingInBCGMode: false,
        adherePercentageStrictly: true,
        retainSpaceOnHide: true,
        isMVC: true,
        marginsIncludedInWidgetContainerWeight: true,
        APILevel: 7300
    })
};

function themeCallBack() {
    initializeGlobalVariables();
    applicationController = require("applicationController");
    callAppMenu();
    kony.application.setApplicationInitializationEvents({
        init: applicationController.appInit,
        showstartupform: function() {
            var startForm = new kony.mvc.Navigation("frmLogin");
            startForm.navigate();
        }
    });
};

function loadResources() {
    globalhttpheaders = {};
    kony.os.loadLibrary({
        "javaclassname": "com.konylabs.ffi.N_KonyLogger"
    });
    kony.os.loadLibrary({
        "javaclassname": "com.konylabs.ffi.N_binarydata"
    });
    kony.os.loadLibrary({
        "javaclassname": "com.konylabs.ffi.ND_binary_util"
    });
    sdkInitConfig = {
        "appConfig": appConfig,
        "isMFApp": appConfig.isMFApp,
        "appKey": appConfig.appKey,
        "appSecret": appConfig.appSecret,
        "eventTypes": appConfig.eventTypes,
        "serviceUrl": appConfig.serviceUrl
    }
    kony.setupsdks(sdkInitConfig, onSuccessSDKCallBack, onSuccessSDKCallBack);
};

function onSuccessSDKCallBack() {
    kony.theme.setCurrentTheme("default", themeCallBack, themeCallBack);
}

function onSuccess(oldlocalname, newlocalename, info) {
    loadResources();
};

function onFailure(errorcode, errormsg, info) {
    loadResources();
};
kony.application.setApplicationMode(constants.APPLICATION_MODE_NATIVE);
//If default locale is specified. This is set even before any other app life cycle event is called.
kony.i18n.setDefaultLocaleAsync("en_US", onSuccess, onFailure, null);
// If you wish to debug Application Initialization events, now is the time to
// place breakpoints.
debugger;