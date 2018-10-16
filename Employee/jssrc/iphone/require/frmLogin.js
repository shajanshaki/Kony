define("frmLogin", function() {
    return function(controller) {
        function addWidgetsfrmLogin() {
            this.setDefaultUnit(kony.flex.DP);
            var login = new com.konymp.login({
                "clipBounds": true,
                "height": "100%",
                "id": "login",
                "isVisible": true,
                "layoutType": kony.flex.FREE_FORM,
                "left": "0dp",
                "masterType": constants.MASTER_TYPE_USERWIDGET,
                "skin": "CopyCopyCopyslFbox5",
                "top": "0dp",
                "width": "100%",
                "zIndex": 1
            }, {}, {});
            login.logoSource = "login_image.png";
            login.passwordPlaceholder = "Password";
            login.socialLoginVisible = false;
            login.usernamePlaceholder = "Username";
            login.usernameMinimumChar = "8";
            login.passwordMinimumChar = "8";
            login.usernameValidationMsg = "Username Too Small";
            login.passwordValidationMsg = "Password Too Small";
            login.providerName = "userstore";
            login.encryptCredentials = true;
            login.faceIdProperty = true;
            login.touchIDProperty = true;
            login.loginSuccessEvent = controller.AS_UWI_b22a02ec4f2145a99424013c06da9cef;
            var flxCustomAlert = new kony.ui.FlexContainer({
                "autogrowMode": kony.flex.AUTOGROW_NONE,
                "clipBounds": true,
                "height": "100%",
                "id": "flxCustomAlert",
                "isVisible": true,
                "layoutType": kony.flex.FREE_FORM,
                "left": "100%",
                "skin": "FLXBLACK40DP",
                "top": "0dp",
                "width": "100%",
                "zIndex": 10
            }, {}, {});
            flxCustomAlert.setDefaultUnit(kony.flex.DP);
            var flxAlertWraper = new kony.ui.FlexContainer({
                "autogrowMode": kony.flex.AUTOGROW_NONE,
                "centerX": "50%",
                "centerY": "50%",
                "clipBounds": true,
                "height": "30%",
                "id": "flxAlertWraper",
                "isVisible": true,
                "layoutType": kony.flex.FREE_FORM,
                "skin": "CopyslFbox0d795945aed2549",
                "width": "90%",
                "zIndex": 1
            }, {}, {});
            flxAlertWraper.setDefaultUnit(kony.flex.DP);
            var imgAlertIcon = new kony.ui.Image2({
                "centerX": "50%",
                "height": "60dp",
                "id": "imgAlertIcon",
                "isVisible": true,
                "skin": "slImage",
                "src": "imagedrag.png",
                "top": "4%",
                "width": "60dp",
                "zIndex": 1
            }, {
                "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
                "padding": [0, 0, 0, 0],
                "paddingInPixel": false
            }, {});
            var lblAlertMessage = new kony.ui.Label({
                "centerX": "50%",
                "centerY": "50%",
                "id": "lblAlertMessage",
                "isVisible": true,
                "left": "81dp",
                "skin": "CopyslLabel0h831e95ee19345",
                "text": "You want to enable FaceId ?",
                "textStyle": {},
                "top": "82dp",
                "width": "92%",
                "zIndex": 1
            }, {
                "contentAlignment": constants.CONTENT_ALIGN_CENTER,
                "padding": [0, 0, 0, 0],
                "paddingInPixel": false
            }, {
                "textCopyable": false,
                "wrapping": constants.WIDGET_TEXT_WORD_WRAP
            });
            var flxAlertActions = new kony.ui.FlexContainer({
                "autogrowMode": kony.flex.AUTOGROW_NONE,
                "bottom": "0%",
                "centerX": "50%",
                "clipBounds": true,
                "height": "60dp",
                "id": "flxAlertActions",
                "isVisible": true,
                "layoutType": kony.flex.FREE_FORM,
                "skin": "slFbox",
                "width": "100%",
                "zIndex": 1
            }, {}, {});
            flxAlertActions.setDefaultUnit(kony.flex.DP);
            var btnAlertNO = new kony.ui.Button({
                "centerX": "25%",
                "centerY": "50%",
                "focusSkin": "slButtonGlossRed",
                "height": "40dp",
                "id": "btnAlertNO",
                "isVisible": true,
                "onClick": controller.AS_Button_ee9315ce12f44c888fd19bada586ea59,
                "skin": "BTNALERTNO",
                "text": "No",
                "width": "40%",
                "zIndex": 1
            }, {
                "contentAlignment": constants.CONTENT_ALIGN_CENTER,
                "displayText": true,
                "padding": [0, 0, 0, 0],
                "paddingInPixel": false
            }, {
                "showProgressIndicator": true
            });
            var btnAlertYES = new kony.ui.Button({
                "centerX": "75%",
                "centerY": "50%",
                "focusSkin": "slButtonGlossRed",
                "height": "40dp",
                "id": "btnAlertYES",
                "isVisible": true,
                "onClick": controller.AS_Button_b069b0d974ed43a7bf71f6e551a43943,
                "skin": "BTNALERTNO",
                "text": "YES",
                "width": "40%",
                "zIndex": 1
            }, {
                "contentAlignment": constants.CONTENT_ALIGN_CENTER,
                "displayText": true,
                "padding": [0, 0, 0, 0],
                "paddingInPixel": false
            }, {
                "showProgressIndicator": true
            });
            flxAlertActions.add(btnAlertNO, btnAlertYES);
            flxAlertWraper.add(imgAlertIcon, lblAlertMessage, flxAlertActions);
            flxCustomAlert.add(flxAlertWraper);
            this.add(login, flxCustomAlert);
        };
        return [{
            "addWidgets": addWidgetsfrmLogin,
            "enabledForIdleTimeout": false,
            "id": "frmLogin",
            "layoutType": kony.flex.FREE_FORM,
            "needAppMenu": false,
            "skin": "CopyslForm0h5841b36ffce4b"
        }, {
            "displayOrientation": constants.FORM_DISPLAY_ORIENTATION_PORTRAIT,
            "layoutType": kony.flex.FREE_FORM,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "configureExtendBottom": false,
            "configureExtendTop": false,
            "configureStatusBarStyle": false,
            "footerOverlap": false,
            "formTransparencyDuringPostShow": "100",
            "headerOverlap": false,
            "inputAccessoryViewType": constants.FORM_INPUTACCESSORYVIEW_CANCEL,
            "needsIndicatorDuringPostShow": false,
            "retainScrollPosition": false,
            "titleBar": false,
            "titleBarSkin": "slTitleBar"
        }]
    }
});