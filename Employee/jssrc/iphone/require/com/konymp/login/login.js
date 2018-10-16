define(function() {
    return function(controller) {
        var login = new kony.ui.FlexContainer({
            "clipBounds": true,
            "isMaster": true,
            "height": "100%",
            "id": "login",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "postShow": controller.AS_FlexContainer_i7ffa13263b341b2aa0d80216aef04e8,
            "skin": "CopyCopyCopyCopyslFbox2",
            "top": "0dp",
            "width": "100%"
        }, {}, {});
        login.setDefaultUnit(kony.flex.DP);
        var flxLogin = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": false,
            "height": "100%",
            "id": "flxLogin",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": 0,
            "skin": "CopyCopyCopyCopysknslFbox",
            "top": "0dp",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flxLogin.setDefaultUnit(kony.flex.DP);
        var flxBottomContainer = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "0dp",
            "centerX": "50%",
            "clipBounds": true,
            "height": "60%",
            "id": "flxBottomContainer",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "skin": "CopyCopyCopyCopysknCopyslFbox",
            "width": "100%",
            "zIndex": 8
        }, {}, {});
        flxBottomContainer.setDefaultUnit(kony.flex.DP);
        flxBottomContainer.add();
        var flxlogo = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "clipBounds": false,
            "height": "40%",
            "id": "flxlogo",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "skin": "CopyCopyCopyCopyslFbox0c6504045684a47",
            "top": "0dp",
            "width": "100%",
            "zIndex": 8
        }, {}, {});
        flxlogo.setDefaultUnit(kony.flex.DP);
        var imgLogo = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "40%",
            "height": "30%",
            "id": "imgLogo",
            "isVisible": true,
            "skin": "CopyCopyCopyslImage4",
            "src": "reusablelogin_logo.png",
            "width": "30%",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxlogo.add(imgLogo);
        var flxTouchId = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerY": "78%",
            "clipBounds": true,
            "height": "8%",
            "id": "flxTouchId",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "onClick": controller.AS_FlexContainer_3f4759b1cb7a4fb98713ae4f20b21a3c,
            "skin": "CopyCopyCopyslFbox4",
            "width": "100%",
            "zIndex": 8
        }, {}, {});
        flxTouchId.setDefaultUnit(kony.flex.DP);
        var imgTouchId = new kony.ui.Image2({
            "centerY": "50%",
            "height": "40dp",
            "id": "imgTouchId",
            "isVisible": true,
            "left": "22%",
            "skin": "CopyCopyCopyslImage4",
            "src": "reusablelogin_touch_id_icon.png",
            "width": "40dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var lblTouchId = new kony.ui.Label({
            "centerY": "50%",
            "id": "lblTouchId",
            "isVisible": true,
            "left": "37%",
            "skin": "CopyCopyCopyCopyslLabel087388c354cc642",
            "text": "Sign in with Touch ID",
            "textStyle": {},
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        flxTouchId.add(imgTouchId, lblTouchId);
        var flxSocialLogin = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerY": "90.50%",
            "clipBounds": true,
            "height": "19%",
            "id": "flxSocialLogin",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "width": "100%",
            "zIndex": 8
        }, {}, {});
        flxSocialLogin.setDefaultUnit(kony.flex.DP);
        var flxOr = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "40%",
            "id": "flxOr",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopyCopyslFbox4",
            "top": "0%",
            "width": "100%",
            "zIndex": 8
        }, {}, {});
        flxOr.setDefaultUnit(kony.flex.DP);
        var lblLine1 = new kony.ui.Label({
            "centerX": "25%",
            "height": "2%",
            "id": "lblLine1",
            "isVisible": true,
            "skin": "CopyCopyCopyCopyslLabel4",
            "top": "50%",
            "width": "35%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        var lblOr = new kony.ui.Label({
            "centerX": "50%",
            "height": "50%",
            "id": "lblOr",
            "isVisible": true,
            "skin": "CopyCopyCopyCopyslLabel5",
            "text": "OR",
            "top": "25%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        var lblLine2 = new kony.ui.Label({
            "centerX": "75%",
            "height": "2%",
            "id": "lblLine2",
            "isVisible": true,
            "skin": "CopyCopyCopyCopyslLabel4",
            "top": "50%",
            "width": "35%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        flxOr.add(lblLine1, lblOr, lblLine2);
        var flxFacebook = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "centerY": "60%",
            "clipBounds": true,
            "height": "40dp",
            "id": "flxFacebook",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "onClick": controller.AS_FlexContainer_e9ad4a95e2c143fc9b7482817c7c021c,
            "skin": "CopyslFbox3",
            "width": "40dp",
            "zIndex": 8
        }, {}, {});
        flxFacebook.setDefaultUnit(kony.flex.DP);
        var imgFaceBook = new kony.ui.Image2({
            "height": "100%",
            "id": "imgFaceBook",
            "isVisible": true,
            "left": "0%",
            "src": "reusablelogin_facebook.png",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxFacebook.add(imgFaceBook);
        var flxLinkedin = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "65%",
            "centerY": "60%",
            "clipBounds": true,
            "height": "40dp",
            "id": "flxLinkedin",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "228dp",
            "onClick": controller.AS_FlexContainer_8aa71a407d0741f1856cc1a46f951780,
            "skin": "CopyslFbox3",
            "top": "22dp",
            "width": "40dp",
            "zIndex": 8
        }, {}, {});
        flxLinkedin.setDefaultUnit(kony.flex.DP);
        var imgLinkedIn = new kony.ui.Image2({
            "height": "100%",
            "id": "imgLinkedIn",
            "isVisible": true,
            "left": "0%",
            "src": "reusablelogin_linkedin.png",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxLinkedin.add(imgLinkedIn);
        var flxGoogle = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "centerY": "60%",
            "clipBounds": true,
            "height": "40dp",
            "id": "flxGoogle",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "157dp",
            "onClick": controller.AS_FlexContainer_a7dae437cf8a4c72b4850fadd8a8a349,
            "skin": "CopyslFbox3",
            "top": "41dp",
            "width": "40dp",
            "zIndex": 8
        }, {}, {});
        flxGoogle.setDefaultUnit(kony.flex.DP);
        var imgGoogle = new kony.ui.Image2({
            "height": "100%",
            "id": "imgGoogle",
            "isVisible": true,
            "left": "0%",
            "src": "google.png",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxGoogle.add(imgGoogle);
        var flxOffice365 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "35%",
            "centerY": "60%",
            "clipBounds": true,
            "height": "40dp",
            "id": "flxOffice365",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "onClick": controller.AS_FlexContainer_87de587aa5364f8e8395977ec9119d02,
            "skin": "CopyslFbox3",
            "width": "40dp",
            "zIndex": 8
        }, {}, {});
        flxOffice365.setDefaultUnit(kony.flex.DP);
        var imgOffice365 = new kony.ui.Image2({
            "height": "100%",
            "id": "imgOffice365",
            "isVisible": true,
            "left": "0%",
            "skin": "CopyslImage3",
            "src": "reusablelogin_office365.png",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxOffice365.add(imgOffice365);
        flxSocialLogin.add(flxOr, flxFacebook, flxLinkedin, flxGoogle, flxOffice365);
        var flxCredentials = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "centerY": "50%",
            "clipBounds": false,
            "height": "43%",
            "id": "flxCredentials",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "skin": "CopyCopyCopyCopyskngenericCard",
            "width": "92%",
            "zIndex": 8
        }, {}, {});
        flxCredentials.setDefaultUnit(kony.flex.DP);
        var flxUsername = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "flxUsername",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "5%",
            "right": "5%",
            "skin": "CopyCopyCopyCopysknslFbox",
            "top": "4%",
            "width": "90%",
            "zIndex": 1
        }, {}, {});
        flxUsername.setDefaultUnit(kony.flex.DP);
        var tbxUsername = new kony.ui.TextBox2({
            "autoCapitalize": constants.TEXTBOX_AUTO_CAPITALIZE_NONE,
            "focusSkin": "CopyCopyCopyCopysknloginTextField",
            "height": "33dp",
            "id": "tbxUsername",
            "isVisible": true,
            "keyBoardStyle": constants.TEXTBOX_KEY_BOARD_STYLE_DEFAULT,
            "left": "0dp",
            "maxTextLength": 30,
            "onDone": controller.AS_TextField_addb224a01cd4b28a13b24b70471fed3,
            "right": 0,
            "secureTextEntry": false,
            "skin": "CopyCopyCopyCopysknloginTextField",
            "textInputMode": constants.TEXTBOX_INPUT_MODE_ANY,
            "top": "15%",
            "width": "100%"
        }, {
            "containerHeightMode": constants.TEXTBOX_FONT_METRICS_DRIVEN_HEIGHT,
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "autoCorrect": false,
            "closeButtonText": "Done",
            "keyboardActionLabel": constants.TEXTBOX_KEYBOARD_LABEL_DONE,
            "placeholderSkin": "CopyCopyCopysknPlaceholderKA",
            "showClearButton": true,
            "showCloseButton": false,
            "showProgressIndicator": false,
            "viewType": constants.TEXTBOX_VIEW_TYPE_DEFAULT
        });
        var flxBottomUsername = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "12%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxBottomUsername",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "right": "0dp",
            "skin": "CopyCopyCopyCopyskntextFieldDivider",
            "zIndex": 1
        }, {}, {});
        flxBottomUsername.setDefaultUnit(kony.flex.DP);
        flxBottomUsername.add();
        flxUsername.add(tbxUsername, flxBottomUsername);
        var flxPassword = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "flxPassword",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "5%",
            "right": "5%",
            "skin": "CopyCopyCopyCopysknslFbox",
            "top": "21%",
            "width": "90%",
            "zIndex": 1
        }, {}, {});
        flxPassword.setDefaultUnit(kony.flex.DP);
        var tbxPassword = new kony.ui.TextBox2({
            "autoCapitalize": constants.TEXTBOX_AUTO_CAPITALIZE_NONE,
            "focusSkin": "CopyCopyCopyCopysknloginTextField",
            "height": "36dp",
            "id": "tbxPassword",
            "isVisible": true,
            "keyBoardStyle": constants.TEXTBOX_KEY_BOARD_STYLE_DEFAULT,
            "left": "0dp",
            "maxTextLength": 30,
            "onDone": controller.AS_TextField_0a3b861b491744a88711ddf9aafda4c2,
            "right": 0,
            "secureTextEntry": true,
            "skin": "CopyCopyCopyCopysknloginTextField",
            "textInputMode": constants.TEXTBOX_INPUT_MODE_ANY,
            "top": "15%",
            "width": "100%"
        }, {
            "containerHeightMode": constants.TEXTBOX_FONT_METRICS_DRIVEN_HEIGHT,
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "autoCorrect": false,
            "keyboardActionLabel": constants.TEXTBOX_KEYBOARD_LABEL_DONE,
            "placeholderSkin": "CopyCopyCopysknPlaceholderKA",
            "showClearButton": true,
            "showCloseButton": true,
            "showProgressIndicator": true,
            "viewType": constants.TEXTBOX_VIEW_TYPE_DEFAULT
        });
        var flxBottomPassword = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "12%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxBottomPassword",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "right": "0dp",
            "skin": "CopyCopyCopyCopyskntextFieldDivider",
            "zIndex": 1
        }, {}, {});
        flxBottomPassword.setDefaultUnit(kony.flex.DP);
        flxBottomPassword.add();
        flxPassword.add(tbxPassword, flxBottomPassword);
        var flxRememberMe = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": false,
            "height": "34dp",
            "id": "flxRememberMe",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "6.97%",
            "onClick": controller.AS_FlexContainer_d0aab5b4acc04152a0ec450e15e772b5,
            "right": "5%",
            "skin": "CopyCopyCopyCopysknslFbox",
            "top": "40.96%",
            "width": "85%",
            "zIndex": 1
        }, {}, {});
        flxRememberMe.setDefaultUnit(kony.flex.DP);
        var lblRememberMe = new kony.ui.Label({
            "centerY": "50.00%",
            "id": "lblRememberMe",
            "isVisible": true,
            "left": "5%",
            "skin": "CopyCopyCopyCopyskn",
            "text": "Remember Me",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        var imgRememberme = new kony.ui.Image2({
            "centerY": "50%",
            "height": "30dp",
            "id": "imgRememberme",
            "imageWhenFailed": "checkbox_unselected.png",
            "isVisible": false,
            "left": "84%",
            "skin": "CopyCopyCopyCopyslImage3",
            "src": "reusablelogin_checkbox_selected.png",
            "top": "0dp",
            "width": "40dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var imgUnselected = new kony.ui.Image2({
            "centerY": "50%",
            "height": "30dp",
            "id": "imgUnselected",
            "isVisible": true,
            "left": "84%",
            "skin": "CopyCopyCopyslImage5",
            "src": "reusablelogin_checkbox_unselected.png",
            "width": "40dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxRememberMe.add(lblRememberMe, imgRememberme, imgUnselected);
        var flxForgotPassword = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "clipBounds": true,
            "height": "30dp",
            "id": "flxForgotPassword",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "skin": "CopyCopyCopyslFbox4",
            "top": "80%",
            "width": "90%",
            "zIndex": 1
        }, {}, {});
        flxForgotPassword.setDefaultUnit(kony.flex.DP);
        var btnForgotPassword = new kony.ui.Button({
            "centerX": "50%",
            "centerY": "50%",
            "focusSkin": "CopyCopyCopysknsecondaryActionFocus",
            "height": "80%",
            "id": "btnForgotPassword",
            "isVisible": true,
            "left": "0%",
            "onClick": controller.AS_forgotPasswordOnClick_b2de6f8330d14c2489a31088725ac514,
            "skin": "CopyCopyCopyCopysknsecondaryAction",
            "text": "Forgot password?",
            "width": "90%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "showProgressIndicator": false
        });
        var lblSknHidden = new kony.ui.Label({
            "height": "0%",
            "id": "lblSknHidden",
            "isVisible": true,
            "left": "0%",
            "skin": "CopysknAnimate",
            "top": "0%",
            "width": "0%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        flxForgotPassword.add(btnForgotPassword, lblSknHidden);
        var lblPassword = new kony.ui.Label({
            "height": "33dp",
            "id": "lblPassword",
            "isVisible": true,
            "left": "5%",
            "skin": "CopysknLblAnimate",
            "text": "Password",
            "top": "23%",
            "width": "90%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        var btnLogin = new kony.ui.Button({
            "centerX": "50.06%",
            "focusSkin": "CopyCopyCopysknprimaryActionFocus",
            "height": "42dp",
            "id": "btnLogin",
            "isVisible": true,
            "onClick": controller.AS_Button_d3d819d11cfd4f57995f9bdd5d8913e2,
            "skin": "Copyloginbuttonskin",
            "text": "SIGN IN",
            "top": "60.04%",
            "width": "80%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "showProgressIndicator": true
        });
        var lblUsername = new kony.ui.Label({
            "height": "33dp",
            "id": "lblUsername",
            "isVisible": true,
            "left": "5%",
            "skin": "CopysknLblAnimate",
            "text": "Username",
            "top": "6%",
            "width": "90%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        var flxLblUsername = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "33dp",
            "id": "flxLblUsername",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "5%",
            "onClick": controller.AS_FlexContainer_652bd46dc9544e8c8d52115b75f0d1dd,
            "skin": "CopyslFbox3",
            "top": "6%",
            "width": "90%",
            "zIndex": 1
        }, {}, {});
        flxLblUsername.setDefaultUnit(kony.flex.DP);
        flxLblUsername.add();
        var flxLblPassword = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "33dp",
            "id": "flxLblPassword",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "5%",
            "onClick": controller.AS_FlexContainer_72686f4fb8d94fd69846952b47579bce,
            "skin": "CopyslFbox3",
            "top": "23%",
            "width": "90%",
            "zIndex": 1
        }, {}, {});
        flxLblPassword.setDefaultUnit(kony.flex.DP);
        flxLblPassword.add();
        flxCredentials.add(flxUsername, flxPassword, flxRememberMe, flxForgotPassword, lblPassword, btnLogin, lblUsername, flxLblUsername, flxLblPassword);
        var flxPopups = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "100%",
            "id": "flxPopups",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknflxMob",
            "top": "0%",
            "width": "100%",
            "zIndex": 9
        }, {}, {});
        flxPopups.setDefaultUnit(kony.flex.DP);
        var flxEnableTouchIDPopup = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "27%",
            "centerX": "50%",
            "centerY": "50%",
            "clipBounds": true,
            "height": "40%",
            "id": "flxEnableTouchIDPopup",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxMobFFFFFFOp",
            "width": "89%",
            "zIndex": 10
        }, {}, {});
        flxEnableTouchIDPopup.setDefaultUnit(kony.flex.DP);
        var flxButtons = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "0%",
            "clipBounds": true,
            "height": "20%",
            "id": "flxButtons",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "skin": "CopyCopyslFbox3",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flxButtons.setDefaultUnit(kony.flex.DP);
        var btnEnable = new kony.ui.Button({
            "focusSkin": "CopyCopyCopyslButtonGlossRed",
            "height": "100%",
            "id": "btnEnable",
            "isVisible": true,
            "left": "50%",
            "onClick": controller.AS_Button_bb891907fa294fc8b937c8dd200d86f6,
            "skin": "CopyCopysknBtn",
            "text": "Enable",
            "top": "0%",
            "width": "50%",
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "showProgressIndicator": true
        });
        var btnCancel = new kony.ui.Button({
            "focusSkin": "CopyCopyCopyslButtonGlossRed",
            "height": "100%",
            "id": "btnCancel",
            "isVisible": true,
            "left": "0%",
            "onClick": controller.AS_Button_2ffefbe5a81e478fb83023f6f0fe51df,
            "skin": "CopyCopysknBtnFA",
            "text": "Cancel",
            "top": "0%",
            "width": "50%",
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "showProgressIndicator": true
        });
        flxButtons.add(btnEnable, btnCancel);
        var flxPopUpTitle = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "20%",
            "id": "flxPopUpTitle",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "skin": "CopyCopyslFbox3",
            "top": "0dp",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flxPopUpTitle.setDefaultUnit(kony.flex.DP);
        var lblHeader = new kony.ui.Label({
            "centerX": "50%",
            "centerY": "50%",
            "id": "lblHeader",
            "isVisible": true,
            "skin": "CopyCopyCopyslLabel1",
            "text": "Enable Touch ID",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        flxPopUpTitle.add(lblHeader);
        var flxEnableTouchIdPopupLine = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "2px",
            "id": "flxEnableTouchIdPopupLine",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "skin": "CopyCopysknFlxLineBg",
            "top": "20%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flxEnableTouchIdPopupLine.setDefaultUnit(kony.flex.DP);
        flxEnableTouchIdPopupLine.add();
        var imgEnableTouchIDIcon = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "40%",
            "height": "60dp",
            "id": "imgEnableTouchIDIcon",
            "isVisible": true,
            "skin": "CopyCopyslImage08da396f9f35e41",
            "src": "touchid.png",
            "width": "60dp",
            "zIndex": 10
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var lblMessage = new kony.ui.Label({
            "centerX": "50%",
            "centerY": "65%",
            "id": "lblMessage",
            "isVisible": true,
            "skin": "CopyCopyCopyslLabel2",
            "text": "You can use touch ID to Login",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        flxEnableTouchIDPopup.add(flxButtons, flxPopUpTitle, flxEnableTouchIdPopupLine, imgEnableTouchIDIcon, lblMessage);
        var flxTouchIDPopup = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "27%",
            "centerX": "50%",
            "centerY": "50%",
            "clipBounds": true,
            "height": "36%",
            "id": "flxTouchIDPopup",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxMobFFFFFFOp",
            "top": "0%",
            "width": "89%",
            "zIndex": 10
        }, {}, {});
        flxTouchIDPopup.setDefaultUnit(kony.flex.DP);
        var flxTouchIDButtons = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "0%",
            "clipBounds": true,
            "height": "25%",
            "id": "flxTouchIDButtons",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "skin": "CopyCopyslFbox3",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flxTouchIDButtons.setDefaultUnit(kony.flex.DP);
        var btnTouchCancel = new kony.ui.Button({
            "focusSkin": "CopyCopyCopyslButtonGlossRed",
            "height": "100%",
            "id": "btnTouchCancel",
            "isVisible": true,
            "left": "0%",
            "onClick": controller.AS_Button_2d63d9a7737a4d2b92bce31368476d66,
            "skin": "CopyCopysknBtnFA",
            "text": "Cancel",
            "top": "0%",
            "width": "100%",
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "showProgressIndicator": true
        });
        flxTouchIDButtons.add(btnTouchCancel);
        var flxTouchIDPopUpTitle = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "25%",
            "id": "flxTouchIDPopUpTitle",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "skin": "CopyCopyslFbox3",
            "top": "0dp",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flxTouchIDPopUpTitle.setDefaultUnit(kony.flex.DP);
        var lblTouchHeader = new kony.ui.Label({
            "centerX": "50%",
            "centerY": "50%",
            "id": "lblTouchHeader",
            "isVisible": true,
            "skin": "CopyCopyCopyslLabel07852cf81f23b46",
            "text": "Touch ID",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        flxTouchIDPopUpTitle.add(lblTouchHeader);
        var flxTouchIDPopupLine = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "2px",
            "id": "flxTouchIDPopupLine",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "skin": "CopyCopysknFlxLineBg",
            "top": "25%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flxTouchIDPopupLine.setDefaultUnit(kony.flex.DP);
        flxTouchIDPopupLine.add();
        var imgTouchIDPopupIcon = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "40%",
            "height": "50dp",
            "id": "imgTouchIDPopupIcon",
            "isVisible": true,
            "skin": "CopyCopyslImage08da396f9f35e41",
            "src": "touchid.png",
            "width": "50dp",
            "zIndex": 10
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var lblTouchMessage = new kony.ui.Label({
            "centerX": "50%",
            "centerY": "65%",
            "id": "lblTouchMessage",
            "isVisible": true,
            "skin": "CopyCopyCopyslLabel0b7d1ac611a8a4d",
            "text": "Use Touch ID to Login",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        flxTouchIDPopup.add(flxTouchIDButtons, flxTouchIDPopUpTitle, flxTouchIDPopupLine, imgTouchIDPopupIcon, lblTouchMessage);
        var flxEnableFaceIDPopup = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "centerY": "50%",
            "clipBounds": true,
            "height": "40%",
            "id": "flxEnableFaceIDPopup",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "skin": "CopyslFbox0d795945aed2549",
            "width": "89%",
            "zIndex": 1
        }, {}, {});
        flxEnableFaceIDPopup.setDefaultUnit(kony.flex.DP);
        var imgAlertIcon = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "40%",
            "height": "60dp",
            "id": "imgAlertIcon",
            "isVisible": true,
            "skin": "slImage",
            "src": "face_id.png",
            "width": "60dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var lblAlertMessage = new kony.ui.Label({
            "centerX": "50%",
            "centerY": "65%",
            "id": "lblAlertMessage",
            "isVisible": true,
            "skin": "CopyslLabel0h831e95ee19345",
            "text": "You can use face ID to login",
            "textStyle": {},
            "width": kony.flex.USE_PREFFERED_SIZE,
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
            "height": "20%",
            "id": "flxAlertActions",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "slFbox",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flxAlertActions.setDefaultUnit(kony.flex.DP);
        var btnAlertNO = new kony.ui.Button({
            "focusSkin": "slButtonGlossRed",
            "height": "100%",
            "id": "btnAlertNO",
            "isVisible": true,
            "left": "0%",
            "onClick": controller.AS_Button_ca75f5db46e4408db801629d40e18e0a,
            "skin": "CopyCopyCopysknBtnFA",
            "text": "Cancel",
            "top": "0%",
            "width": "50%",
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
            "focusSkin": "slButtonGlossRed",
            "height": "100%",
            "id": "btnAlertYES",
            "isVisible": true,
            "left": "50%",
            "onClick": controller.AS_Button_f91a3a8eae824e549e779b00f6fe90de,
            "skin": "CopyCopyCopysknBtn",
            "text": "Enable",
            "top": 0,
            "width": "50%",
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
        var CopyflxPopUpTitle0ab3a2f218c9047 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "20%",
            "id": "CopyflxPopUpTitle0ab3a2f218c9047",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "skin": "CopyCopyslFbox3",
            "top": "0dp",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        CopyflxPopUpTitle0ab3a2f218c9047.setDefaultUnit(kony.flex.DP);
        var CopylblHeader0b076b94bf0974d = new kony.ui.Label({
            "centerX": "50%",
            "centerY": "50%",
            "id": "CopylblHeader0b076b94bf0974d",
            "isVisible": true,
            "skin": "CopyCopyCopyslLabel1",
            "text": "Enable Face ID",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        CopyflxPopUpTitle0ab3a2f218c9047.add(CopylblHeader0b076b94bf0974d);
        var CopyflxEnableTouchIdPopupLine0a8fa2710bb5740 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "2px",
            "id": "CopyflxEnableTouchIdPopupLine0a8fa2710bb5740",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "skin": "CopyCopysknFlxLineBg",
            "top": "20%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        CopyflxEnableTouchIdPopupLine0a8fa2710bb5740.setDefaultUnit(kony.flex.DP);
        CopyflxEnableTouchIdPopupLine0a8fa2710bb5740.add();
        flxEnableFaceIDPopup.add(imgAlertIcon, lblAlertMessage, flxAlertActions, CopyflxPopUpTitle0ab3a2f218c9047, CopyflxEnableTouchIdPopupLine0a8fa2710bb5740);
        flxPopups.add(flxEnableTouchIDPopup, flxTouchIDPopup, flxEnableFaceIDPopup);
        var flxFaceId = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerY": "78%",
            "clipBounds": true,
            "height": "8%",
            "id": "flxFaceId",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "onClick": controller.AS_FlexContainer_e4e858da869147289e400d81a4bf0a3c,
            "skin": "slFbox",
            "width": "100%",
            "zIndex": 8
        }, {}, {});
        flxFaceId.setDefaultUnit(kony.flex.DP);
        var faceid = new com.konymp.faceid({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerY": "50%",
            "clipBounds": true,
            "height": "85%",
            "id": "faceid",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "30%",
            "masterType": constants.MASTER_TYPE_USERWIDGET,
            "skin": "CopyslFbox0d479687c4e0a42",
            "width": "60%"
        }, {}, {});
        faceid.btnSignInSkin = "btnTrans";
        faceid.enrollTimeout = 3000;
        faceid.verifyTimeout = 3000;
        faceid.licenseString = "6dbe1057-8a9f-41a8-a9f8-120f129de9f1";
        faceid.tokenName = "login";
        faceid.enrollQualityThreshold = 50;
        faceid.livenessMode = "LIVENESS_PASSIVE";
        faceid.serverURL = "https://ezio-uat.gemalto.sentinelcloud.com/ems";
        faceid.tokenConfigType = "CLEAR_TEXT";
        faceid.livenessThreshold = 0;
        faceid.blinkTimeout = 2000;
        faceid.secret = "12345678912345678900";
        faceid.verifyQualityThreshold = 50;
        faceid.pin = "1234";
        faceid.matchingThreshold = 48;
        faceid.onEnrollSuccess = controller.AS_UWI_c530f3fd28d94cf09991df44b69a774d;
        faceid.onInitSuccess = controller.AS_UWI_g7b52726bce74c5c81fa9c62c0621b9e;
        faceid.onVerifySuccess = controller.AS_UWI_e5f446ee72a9471d85d464d2aefdf6ec;
        faceid.onUnenrollSuccess = controller.AS_UWI_f1180c2ac06b442b82e26be11047702d;
        faceid.onInitFailure = controller.AS_UWI_b1c16c530a6f45a8bdde68c3294f04c1;
        faceid.onVerifyFailure = controller.AS_UWI_i2699c38778a4b86b9754aee1bf419d9;
        faceid.onEnrollFailure = controller.AS_UWI_h2fd06d92f184d04ae5dca1847cd56b7;
        faceid.onUnenrollFailure = controller.AS_UWI_a9f4d76ba0ac45859af4b8bf79f0c60e;
        faceid.onClick = controller.AS_forgotPasswordOnClick_b2de6f8330d14c2489a31088725ac514;
        var Image0a6b16a94abe344 = new kony.ui.Image2({
            "centerY": "50%",
            "height": "40dp",
            "id": "Image0a6b16a94abe344",
            "isVisible": true,
            "left": "22%",
            "skin": "slImage",
            "src": "face_id.png",
            "width": "40dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var CopylblTouchId0eb9dba0b97a746 = new kony.ui.Label({
            "centerY": "50%",
            "id": "CopylblTouchId0eb9dba0b97a746",
            "isVisible": true,
            "left": "37%",
            "skin": "CopyCopyCopyCopyslLabel087388c354cc642",
            "text": "Sign in with Face ID",
            "textStyle": {},
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        flxFaceId.add(faceid, Image0a6b16a94abe344, CopylblTouchId0eb9dba0b97a746);
        flxLogin.add(flxBottomContainer, flxlogo, flxTouchId, flxSocialLogin, flxCredentials, flxPopups, flxFaceId);
        var flxIdentity = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "centerY": "50%",
            "clipBounds": true,
            "height": "100%",
            "id": "flxIdentity",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "top": "0%",
            "width": "100%",
            "zIndex": 10
        }, {}, {});
        flxIdentity.setDefaultUnit(kony.flex.DP);
        var brwsrIdentity = new kony.ui.Browser({
            "detectTelNumber": true,
            "enableZoom": false,
            "height": "100%",
            "htmlString": "Please wait !!\n",
            "id": "brwsrIdentity",
            "isVisible": true,
            "left": "0%",
            "top": "0%",
            "width": "100%",
            "zIndex": 100
        }, {}, {});
        var flxClose = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "30dp",
            "id": "flxClose",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "onClick": controller.AS_FlexContainer_025fdba8604048b6b79a557ffde49c78,
            "right": "2%",
            "skin": "CopyslFbox3",
            "top": "0.50%",
            "width": "30dp",
            "zIndex": 101
        }, {}, {});
        flxClose.setDefaultUnit(kony.flex.DP);
        var imgClose = new kony.ui.Image2({
            "height": "100%",
            "id": "imgClose",
            "isVisible": true,
            "left": "0%",
            "src": "clear_input_icon.png",
            "top": "0%",
            "width": "100%",
            "zIndex": 101
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxClose.add(imgClose);
        flxIdentity.add(brwsrIdentity, flxClose);
        login.add(flxLogin, flxIdentity);
        return login;
    }
})