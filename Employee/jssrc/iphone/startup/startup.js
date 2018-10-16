//startup.js file
var globalhttpheaders = {};
var appConfig = {
    appId: "EmpDirectory",
    appName: "EmployeeDirectory",
    appVersion: "1.0.0",
    platformVersion: null,
    serverIp: "10.10.3.65",
    serverPort: "80",
    secureServerPort: "443",
    isDebug: true,
    middlewareContext: "EmpDirectory",
    isturlbase: "https://empselfservice1.konycloud.com/services",
    isMFApp: true,
    appKey: "41990a08432dc89128ec211786e051c2",
    appSecret: "de2fc06c008610f74988202b293ce287",
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
            "fetchImageService": "https://empselfservice1.konycloud.com/services/fetchImageService",
            "EmployeeStorageObjects": "https://empselfservice1.konycloud.com/services/EmployeeStorageObjects"
        },
        "service_doc_etag": "0000016372B4E1D8",
        "appId": "753d179f-ea87-47a8-bb84-e78f475c7bc8",
        "identity_features": {
            "reporting_params_header_allowed": true
        },
        "name": "EmployeeDirectoryApp",
        "reportingsvc": {
            "session": "https://empselfservice1.konycloud.com/services/IST",
            "custom": "https://empselfservice1.konycloud.com/services/CMS"
        },
        "baseId": "851949b5-5773-413e-90c7-fcde3dea9bee",
        "login": [{
            "alias": "reusableFacebookLogin",
            "type": "oauth2",
            "prov": "reusableFacebookLogin",
            "url": "https://100017816.auth.konycloud.com"
        }, {
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
        }],
        "services_meta": {
            "EmployeeModelSchema": {
                "offline": false,
                "metadata_url": "https://empselfservice1.konycloud.com/services/metadata/v1/EmployeeModelSchema",
                "type": "objectsvc",
                "version": "1.0",
                "url": "https://empselfservice1.konycloud.com/services/data/v1/EmployeeModelSchema"
            },
            "StorageObjectServices": {
                "offline": false,
                "metadata_url": "https://empselfservice1.konycloud.com/services/metadata/v1/StorageObjectServices",
                "type": "objectsvc",
                "version": "1.0",
                "url": "https://empselfservice1.konycloud.com/services/data/v1/StorageObjectServices"
            },
            "fetchImageService": {
                "type": "integsvc",
                "version": "1.0",
                "url": "https://empselfservice1.konycloud.com/services/fetchImageService"
            },
            "EmployeeStorageObjects": {
                "type": "integsvc",
                "version": "1.0",
                "url": "https://empselfservice1.konycloud.com/services/EmployeeStorageObjects"
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
    kony.application.setCheckBoxSelectionImageAlignment(constants.CHECKBOX_SELECTION_IMAGE_ALIGNMENT_RIGHT);
    kony.application.setDefaultTextboxPadding(false);
    kony.application.setRespectImageSizeForImageWidgetAlignment(true);
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