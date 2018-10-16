define(function() {
    return function(controller) {
        var listdetail = new kony.ui.FlexContainer({
            "clipBounds": true,
            "isMaster": true,
            "height": "100%",
            "id": "listdetail",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "postShow": controller.AS_FlexContainer_a1e7bbf392ee418b959ed91b8dd56eb4,
            "preShow": controller.AS_FlexContainer_25ea44184b88449db14f0d58103619d6,
            "top": "0dp",
            "width": "100%"
        }, {}, {});
        listdetail.setDefaultUnit(kony.flex.DP);
        var flxDetailsScreen = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "100%",
            "id": "flxDetailsScreen",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "100%",
            "skin": "CopysknFlxDetailsScreen1",
            "top": "0%",
            "width": "100%",
            "zIndex": 12
        }, {}, {});
        flxDetailsScreen.setDefaultUnit(kony.flex.DP);
        var flxDetailsHeader = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "42.25%",
            "id": "flxDetailsHeader",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "onClick": controller.AS_FlexContainer_918331803abc4fa2bc7bfb5944dd3a31,
            "skin": "CopyCopymflex1",
            "top": "0%",
            "width": "100%",
            "zIndex": 2
        }, {}, {});
        flxDetailsHeader.setDefaultUnit(kony.flex.DP);
        var flxHeaderBar = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "20%",
            "id": "flxHeaderBar",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopyCopyslFbox0345437b408404a",
            "top": "0%",
            "width": "100%",
            "zIndex": 4
        }, {}, {});
        flxHeaderBar.setDefaultUnit(kony.flex.DP);
        var imgBack = new kony.ui.Image2({
            "height": "30dp",
            "id": "imgBack",
            "isVisible": true,
            "left": "3%",
            "skin": "CopyCopyslImage0b597bc6cd1bb4f",
            "src": "arrow_left_white_icon.png",
            "top": "25%",
            "width": "30dp",
            "zIndex": 3
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var btnBack = new kony.ui.Button({
            "focusSkin": "CopyCopybtn3",
            "height": "100%",
            "id": "btnBack",
            "isVisible": true,
            "left": "1%",
            "onClick": controller.AS_Button_e7c6da3955f84592aad0fe2375f3cc8d,
            "skin": "CopyCopysknBtnInVisible1",
            "top": "0%",
            "width": "12%",
            "zIndex": 4
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxHeaderBar.add(imgBack, btnBack);
        var flxEmployeeName = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "35.40%",
            "id": "flxEmployeeName",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopybeforeanim1",
            "top": "64.60%",
            "width": "100%",
            "zIndex": 2
        }, {}, {});
        flxEmployeeName.setDefaultUnit(kony.flex.DP);
        flxEmployeeName.add();
        var flxEmployeeProfilePic = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "23.40%",
            "centerX": "50%",
            "clipBounds": false,
            "height": "38%",
            "id": "flxEmployeeProfilePic",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "width": "28%",
            "zIndex": 3
        }, {}, {});
        flxEmployeeProfilePic.setDefaultUnit(kony.flex.DP);
        var flxImageHolder = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "100%",
            "id": "flxImageHolder",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxImageHolder1",
            "top": "0%",
            "width": "100%",
            "zIndex": 6
        }, {}, {});
        flxImageHolder.setDefaultUnit(kony.flex.DP);
        var imgEmployee = new kony.ui.Image2({
            "height": "100%",
            "id": "imgEmployee",
            "imageWhileDownloading": "cover.png",
            "isVisible": true,
            "left": "0%",
            "skin": "CopyCopyslImage0b597bc6cd1bb4f",
            "src": "user_profile2.png",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_FIT_TO_DIMENSIONS,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxImageHolder.add(imgEmployee);
        var flxOnline = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "5%",
            "clipBounds": true,
            "height": "17%",
            "id": "flxOnline",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "right": "7%",
            "skin": "CopyCopysknFlxOnline1",
            "width": "17%",
            "zIndex": 8
        }, {}, {});
        flxOnline.setDefaultUnit(kony.flex.DP);
        var lblInvisible = new kony.ui.Label({
            "height": "100%",
            "id": "lblInvisible",
            "isVisible": true,
            "left": "0%",
            "skin": "CopysknLblOnline1",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "0%",
            "width": "100%",
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        flxOnline.add(lblInvisible);
        flxEmployeeProfilePic.add(flxImageHolder, flxOnline);
        var FlxBackGround = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "clipBounds": true,
            "height": "100%",
            "id": "FlxBackGround",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "skin": "CopyCopysknDarkHeaderBg1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        FlxBackGround.setDefaultUnit(kony.flex.DP);
        var imgCover = new kony.ui.Image2({
            "height": "100%",
            "id": "imgCover",
            "imageWhenFailed": "profile.png",
            "imageWhileDownloading": "arrow_left_white_icon.png",
            "isVisible": true,
            "left": "0%",
            "skin": "CopyslImage0481c3a1ac6b346",
            "src": "imagedrag.png",
            "top": "0%",
            "width": "100%",
            "zIndex": 4
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_FIT_TO_DIMENSIONS,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        FlxBackGround.add(imgCover);
        var flxWrapper = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "18%",
            "id": "flxWrapper",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyslFbox4",
            "top": "78%",
            "width": "100%",
            "zIndex": 5
        }, {}, {});
        flxWrapper.setDefaultUnit(kony.flex.DP);
        var lblEmployeeName = new kony.ui.Label({
            "centerX": "50%",
            "height": "44.40%",
            "id": "lblEmployeeName",
            "isVisible": true,
            "skin": "CopyCopybelabel1",
            "text": "Alfred Kevin",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "0%",
            "width": "100%",
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblEmployeeDesignation = new kony.ui.Label({
            "centerX": "50%",
            "height": "55.60%",
            "id": "lblEmployeeDesignation",
            "isVisible": true,
            "skin": "CopyCopybdlabel1",
            "text": "program manager",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "44.40%",
            "width": "80%",
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        flxWrapper.add(lblEmployeeName, lblEmployeeDesignation);
        flxDetailsHeader.add(flxHeaderBar, flxEmployeeName, flxEmployeeProfilePic, FlxBackGround, flxWrapper);
        var flxBody = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "90%",
            "id": "flxBody",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "top": "42.25%",
            "width": "100%",
            "zIndex": 5
        }, {}, {});
        flxBody.setDefaultUnit(kony.flex.DP);
        var flxCategory = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "12%",
            "id": "flxCategory",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxF1",
            "width": "100%",
            "zIndex": 4
        }, {}, {});
        flxCategory.setDefaultUnit(kony.flex.DP);
        var flxCategorySeparator = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "centerY": "50%",
            "clipBounds": true,
            "height": "100%",
            "id": "flxCategorySeparator",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "skin": "CopyCopysknFlxA2",
            "width": "0.20%",
            "zIndex": 2
        }, {}, {});
        flxCategorySeparator.setDefaultUnit(kony.flex.DP);
        flxCategorySeparator.add();
        var btnCategoryDetails = new kony.ui.Button({
            "focusSkin": "CopyCopybtn4",
            "height": "95%",
            "id": "btnCategoryDetails",
            "isVisible": true,
            "left": "0%",
            "skin": "Copybtn1",
            "text": "Details",
            "top": "0%",
            "width": "50%",
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var btnCategoryHierarchy = new kony.ui.Button({
            "focusSkin": "CopyCopybtn4",
            "height": "95%",
            "id": "btnCategoryHierarchy",
            "isVisible": true,
            "right": "0%",
            "skin": "CopyCopybtn5",
            "text": "Hierarchy",
            "top": "0%",
            "width": "50%",
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var lblDetailsColor = new kony.ui.Label({
            "bottom": "0%",
            "height": "4%",
            "id": "lblDetailsColor",
            "isVisible": true,
            "left": "0%",
            "skin": "CopyCopycolorvis1",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "width": "50%",
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxCategoryLineThin = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "1%",
            "id": "flxCategoryLineThin",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA2",
            "top": "99%",
            "width": "100%",
            "zIndex": 2
        }, {}, {});
        flxCategoryLineThin.setDefaultUnit(kony.flex.DP);
        flxCategoryLineThin.add();
        flxCategory.add(flxCategorySeparator, btnCategoryDetails, btnCategoryHierarchy, lblDetailsColor, flxCategoryLineThin);
        var flxShadowLine = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "3%",
            "id": "flxShadowLine",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknShadowDivider1",
            "top": "0%",
            "width": "100%",
            "zIndex": 3
        }, {}, {});
        flxShadowLine.setDefaultUnit(kony.flex.DP);
        flxShadowLine.add();
        var flxScrollDetails = new kony.ui.FlexScrollContainer({
            "allowHorizontalBounce": false,
            "allowVerticalBounce": true,
            "bounces": false,
            "clipBounds": false,
            "enableScrolling": false,
            "height": "88%",
            "horizontalScrollIndicator": true,
            "id": "flxScrollDetails",
            "isVisible": true,
            "layoutType": kony.flex.FLOW_VERTICAL,
            "left": "0%",
            "pagingEnabled": false,
            "scrollDirection": kony.flex.SCROLL_VERTICAL,
            "skin": "CopyCopysknSrclFAFAF2",
            "top": "0%",
            "verticalScrollIndicator": false,
            "width": "100%",
            "zIndex": 2
        }, {}, {});
        flxScrollDetails.setDefaultUnit(kony.flex.DP);
        var callMobileFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "callMobileFlex",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "1%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        callMobileFlex.setDefaultUnit(kony.flex.DP);
        var lblCallMobile = new kony.ui.Label({
            "id": "lblCallMobile",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "CALL MOBILE",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblCallMobileValue = new kony.ui.Label({
            "id": "lblCallMobileValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "9876543210",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "50%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine1 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": 0,
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine1",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine1.setDefaultUnit(kony.flex.DP);
        flxLine1.add();
        var flxMobileImageHolder = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerY": "60%",
            "clipBounds": true,
            "height": "20dp",
            "id": "flxMobileImageHolder",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "onClick": controller.AS_FlexContainer_668207832d27444987f3796ee9879eb1,
            "right": "4%",
            "skin": "CopyslFbox4",
            "width": "20dp",
            "zIndex": 2
        }, {}, {});
        flxMobileImageHolder.setDefaultUnit(kony.flex.DP);
        var imgMobile = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "50%",
            "height": "20dp",
            "id": "imgMobile",
            "isVisible": true,
            "src": "listphone.png",
            "width": "20dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxMobileImageHolder.add(imgMobile);
        callMobileFlex.add(lblCallMobile, lblCallMobileValue, flxLine1, flxMobileImageHolder);
        var callWorkFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "callWorkFlex",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        callWorkFlex.setDefaultUnit(kony.flex.DP);
        var lblCallWork = new kony.ui.Label({
            "id": "lblCallWork",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "CALL WORK",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblCallWorkValue = new kony.ui.Label({
            "id": "lblCallWorkValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "040-12345678",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "50%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine2 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": 0,
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine2",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine2.setDefaultUnit(kony.flex.DP);
        flxLine2.add();
        var flxWorkImageHolder = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerY": "60%",
            "clipBounds": true,
            "height": "20dp",
            "id": "flxWorkImageHolder",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "onClick": controller.AS_FlexContainer_b5521cf6da13495c91d2af5370932a69,
            "right": "4%",
            "skin": "CopyCopyslFbox05800bf5f5d6f40",
            "width": "20dp",
            "zIndex": 2
        }, {}, {});
        flxWorkImageHolder.setDefaultUnit(kony.flex.DP);
        var imgWork = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "50%",
            "height": "20dp",
            "id": "imgWork",
            "isVisible": true,
            "skin": "CopyCopyslImage0cf477aea3e3740",
            "src": "listphone.png",
            "width": "20dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxWorkImageHolder.add(imgWork);
        callWorkFlex.add(lblCallWork, lblCallWorkValue, flxLine2, flxWorkImageHolder);
        var emailFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "emailFlex",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        emailFlex.setDefaultUnit(kony.flex.DP);
        var lblEmail = new kony.ui.Label({
            "id": "lblEmail",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "EMAIL",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblEmailValue = new kony.ui.Label({
            "id": "lblEmailValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "bala.carcharla@kony.com",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "50%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine3 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "0dp",
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine3",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine3.setDefaultUnit(kony.flex.DP);
        flxLine3.add();
        var flxEmailHolder = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerY": "60%",
            "clipBounds": true,
            "height": "20dp",
            "id": "flxEmailHolder",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "onClick": controller.AS_FlexContainer_2faabc33588c4ba1bfa734fbd2beefc3,
            "right": "4%",
            "skin": "CopyCopyslFbox05800bf5f5d6f40",
            "width": "20dp",
            "zIndex": 2
        }, {}, {});
        flxEmailHolder.setDefaultUnit(kony.flex.DP);
        var imgEmail = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "50%",
            "height": "20dp",
            "id": "imgEmail",
            "isVisible": true,
            "skin": "CopyCopyslImage0cf477aea3e3740",
            "src": "mailicon.png",
            "width": "20dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxEmailHolder.add(imgEmail);
        emailFlex.add(lblEmail, lblEmailValue, flxLine3, flxEmailHolder);
        var departmentFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "departmentFlex",
            "isVisible": true,
            "layoutType": kony.flex.FLOW_VERTICAL,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        departmentFlex.setDefaultUnit(kony.flex.DP);
        var lblDepartment = new kony.ui.Label({
            "id": "lblDepartment",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "DEPARTMENT",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblDepartmentValue = new kony.ui.Label({
            "id": "lblDepartmentValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "Release Management",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "15dp",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine4 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine4",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "top": "15dp",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine4.setDefaultUnit(kony.flex.DP);
        flxLine4.add();
        departmentFlex.add(lblDepartment, lblDepartmentValue, flxLine4);
        var reportingToFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "reportingToFlex",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        reportingToFlex.setDefaultUnit(kony.flex.DP);
        var lblReportingTo = new kony.ui.Label({
            "id": "lblReportingTo",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "REPORTING TO",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblReportingToValue = new kony.ui.Label({
            "id": "lblReportingToValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "Dave Shrink",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "50%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine5 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "0dp",
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine5",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine5.setDefaultUnit(kony.flex.DP);
        flxLine5.add();
        var flxImageReportingManagerHolder = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerY": "60%",
            "clipBounds": true,
            "height": "32dp",
            "id": "flxImageReportingManagerHolder",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "84%",
            "skin": "CopysknFlxRoundNoBorder2",
            "width": "32dp",
            "zIndex": 2
        }, {}, {});
        flxImageReportingManagerHolder.setDefaultUnit(kony.flex.DP);
        var imgReportingTo = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "50%",
            "height": "100%",
            "id": "imgReportingTo",
            "isVisible": true,
            "skin": "CopyCopyslImage0cf477aea3e3740",
            "src": "me.png",
            "width": "100%",
            "zIndex": 10
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_FIT_TO_DIMENSIONS,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxImageReportingManagerHolder.add(imgReportingTo);
        reportingToFlex.add(lblReportingTo, lblReportingToValue, flxLine5, flxImageReportingManagerHolder);
        var locationFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "locationFlex",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        locationFlex.setDefaultUnit(kony.flex.DP);
        var lblLocation = new kony.ui.Label({
            "id": "lblLocation",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "LOCATION",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblLocationValue = new kony.ui.Label({
            "height": "100%",
            "id": "lblLocationValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "7th floor,phoenix infocity",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": "90%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine6 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "0dp",
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine6",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine6.setDefaultUnit(kony.flex.DP);
        flxLine6.add();
        var flxMapHolder = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerY": "60%",
            "clipBounds": true,
            "height": "20dp",
            "id": "flxMapHolder",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "right": "4%",
            "skin": "CopyCopyslFbox05800bf5f5d6f40",
            "width": "20dp",
            "zIndex": 2
        }, {}, {});
        flxMapHolder.setDefaultUnit(kony.flex.DP);
        var imgLocation = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "50%",
            "height": "20dp",
            "id": "imgLocation",
            "isVisible": true,
            "skin": "CopyCopyslImage0cf477aea3e3740",
            "src": "mappin.png",
            "width": "20dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxMapHolder.add(imgLocation);
        locationFlex.add(lblLocation, lblLocationValue, flxLine6, flxMapHolder);
        var wksFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "wksFlex",
            "isVisible": false,
            "layoutType": kony.flex.FLOW_VERTICAL,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        wksFlex.setDefaultUnit(kony.flex.DP);
        var lblWKS = new kony.ui.Label({
            "id": "lblWKS",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "WKS",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblWKSValue = new kony.ui.Label({
            "id": "lblWKSValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "D7-132",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "15dp",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine7 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine7",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "top": "15dp",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine7.setDefaultUnit(kony.flex.DP);
        flxLine7.add();
        wksFlex.add(lblWKS, lblWKSValue, flxLine7);
        var empFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "empFlex",
            "isVisible": false,
            "layoutType": kony.flex.FLOW_VERTICAL,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        empFlex.setDefaultUnit(kony.flex.DP);
        var lblEmpType = new kony.ui.Label({
            "id": "lblEmpType",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "EMP TYPE",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblEmpTypeValue = new kony.ui.Label({
            "id": "lblEmpTypeValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "Customer Facing",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "15dp",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine8 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine8",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "top": "15dp",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine8.setDefaultUnit(kony.flex.DP);
        flxLine8.add();
        empFlex.add(lblEmpType, lblEmpTypeValue, flxLine8);
        var skypeFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "skypeFlex",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        skypeFlex.setDefaultUnit(kony.flex.DP);
        var lblSkype = new kony.ui.Label({
            "id": "lblSkype",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "SKYPE",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblSkypeValue = new kony.ui.Label({
            "id": "lblSkypeValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "bala.carcharla",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "50%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine9 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "0dp",
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine9",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine9.setDefaultUnit(kony.flex.DP);
        flxLine9.add();
        var flxSkypeImageHolder = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerY": "60%",
            "clipBounds": true,
            "height": "20dp",
            "id": "flxSkypeImageHolder",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "right": "4%",
            "skin": "CopyCopyslFbox05800bf5f5d6f40",
            "width": "20dp",
            "zIndex": 2
        }, {}, {});
        flxSkypeImageHolder.setDefaultUnit(kony.flex.DP);
        var imgSkype = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "50%",
            "height": "20dp",
            "id": "imgSkype",
            "isVisible": true,
            "skin": "CopyCopyslImage0cf477aea3e3740",
            "src": "listskypeicon.png",
            "width": "20dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxSkypeImageHolder.add(imgSkype);
        skypeFlex.add(lblSkype, lblSkypeValue, flxLine9, flxSkypeImageHolder);
        var addressFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "20%",
            "id": "addressFlex",
            "isVisible": false,
            "layoutType": kony.flex.FLOW_VERTICAL,
            "left": "0.00%",
            "skin": "CopysknFlxInVisible1",
            "top": "0.00%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        addressFlex.setDefaultUnit(kony.flex.DP);
        var lblAddress = new kony.ui.Label({
            "id": "lblAddress",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "ADDRESS",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblAddressValue = new kony.ui.Label({
            "id": "lblAddressValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "Baseball, Cycling, Surfing, Birdwatching, Travelling, Photography, Golfing",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "15dp",
            "width": "86%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine10 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine10",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "top": "15dp",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine10.setDefaultUnit(kony.flex.DP);
        flxLine10.add();
        addressFlex.add(lblAddress, lblAddressValue, flxLine10);
        var timezoneFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "timezoneFlex",
            "isVisible": false,
            "layoutType": kony.flex.FLOW_VERTICAL,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        timezoneFlex.setDefaultUnit(kony.flex.DP);
        var lblTimeZone = new kony.ui.Label({
            "id": "lblTimeZone",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "TIME ZONE",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "10%",
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblTimeZoneValue = new kony.ui.Label({
            "id": "lblTimeZoneValue",
            "isVisible": true,
            "left": "7.00%",
            "skin": "CopyCopyslLabel1",
            "text": "IST + 5.30",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "15dp",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine11 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine11",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "top": "15dp",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine11.setDefaultUnit(kony.flex.DP);
        flxLine11.add();
        timezoneFlex.add(lblTimeZone, lblTimeZoneValue, flxLine11);
        var groupsFlex = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "15%",
            "id": "groupsFlex",
            "isVisible": false,
            "layoutType": kony.flex.FLOW_VERTICAL,
            "left": "0%",
            "skin": "CopysknFlxInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        groupsFlex.setDefaultUnit(kony.flex.DP);
        var lblGroups = new kony.ui.Label({
            "id": "lblGroups",
            "isVisible": true,
            "left": "7%",
            "skin": "Copymajortitle1",
            "text": "GROUPS",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": 10,
            "width": kony.flex.USE_PREFFERED_SIZE
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblGroupsValue = new kony.ui.Label({
            "id": "lblGroupsValue",
            "isVisible": true,
            "left": "7%",
            "skin": "CopyCopyslLabel1",
            "text": "Cycling,Trecking and Adventure",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "15dp",
            "width": "80%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxLine12 = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "clipBounds": true,
            "height": "1dp",
            "id": "flxLine12",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxA3",
            "top": "15dp",
            "width": "86%",
            "zIndex": 2
        }, {}, {});
        flxLine12.setDefaultUnit(kony.flex.DP);
        flxLine12.add();
        groupsFlex.add(lblGroups, lblGroupsValue, flxLine12);
        flxScrollDetails.add(callMobileFlex, callWorkFlex, emailFlex, departmentFlex, reportingToFlex, locationFlex, wksFlex, empFlex, skypeFlex, addressFlex, timezoneFlex, groupsFlex);
        var flxScrollHierarchy = new kony.ui.FlexScrollContainer({
            "allowHorizontalBounce": false,
            "allowVerticalBounce": true,
            "bounces": false,
            "clipBounds": true,
            "enableScrolling": false,
            "height": "88%",
            "horizontalScrollIndicator": true,
            "id": "flxScrollHierarchy",
            "isVisible": false,
            "layoutType": kony.flex.FLOW_VERTICAL,
            "left": "100%",
            "pagingEnabled": false,
            "scrollDirection": kony.flex.SCROLL_VERTICAL,
            "skin": "CopyCopysknSrclFAFAF3",
            "top": "12%",
            "verticalScrollIndicator": true,
            "width": "100%",
            "zIndex": 2
        }, {}, {});
        flxScrollHierarchy.setDefaultUnit(kony.flex.DP);
        flxScrollHierarchy.add();
        flxBody.add(flxCategory, flxShadowLine, flxScrollDetails, flxScrollHierarchy);
        flxDetailsScreen.add(flxDetailsHeader, flxBody);
        var flxListScreen = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "100%",
            "id": "flxListScreen",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopyContentMenuClosed1",
            "top": "0%",
            "width": "100%",
            "zIndex": 10
        }, {}, {});
        flxListScreen.setDefaultUnit(kony.flex.DP);
        var flxList = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "80%",
            "id": "flxList",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknWhiteBg1",
            "top": "20%",
            "width": "100%",
            "zIndex": 3
        }, {}, {});
        flxList.setDefaultUnit(kony.flex.DP);
        var flxShadowEmployeeHeader = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "1dp",
            "id": "flxShadowEmployeeHeader",
            "isVisible": false,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknFlxShadow1",
            "top": "0%",
            "width": "100%",
            "zIndex": 2
        }, {}, {});
        flxShadowEmployeeHeader.setDefaultUnit(kony.flex.DP);
        flxShadowEmployeeHeader.add();
        var flxSeg = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "100%",
            "id": "flxSeg",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopyCopyslFbox033f61475d46441",
            "top": "0%",
            "width": "92%",
            "zIndex": 2
        }, {}, {});
        flxSeg.setDefaultUnit(kony.flex.DP);
        var segEmployees = new kony.ui.SegmentedUI2({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "data": [{
                "department": "Department",
                "designation": "Designation",
                "empimage": "user_profile2.png",
                "empname": "Acker,clara",
                "lblChild": "lbl",
                "lblInvisible": "a"
            }, {
                "department": "Department",
                "designation": "Designation",
                "empimage": "user_profile2.png",
                "empname": "Acker,clara",
                "lblChild": "lbl",
                "lblInvisible": "a"
            }, {
                "department": "Department",
                "designation": "Designation",
                "empimage": "user_profile2.png",
                "empname": "Acker,clara",
                "lblChild": "lbl",
                "lblInvisible": "a"
            }],
            "groupCells": false,
            "height": "100%",
            "id": "segEmployees",
            "isVisible": false,
            "left": "0dp",
            "needPageIndicator": true,
            "onRowClick": controller.AS_Segment_2c647dc91a8c48f492d5bc478fc748b5,
            "onTouchEnd": controller.AS_Segment_520dca4068354cff81164302d4b2d4a8,
            "onTouchMove": controller.AS_Segment_0b026fa0a4534f8ebfff62d7c926d6d8,
            "pageOffDotImage": "pageoffdot.png",
            "pageOnDotImage": "pageondot.png",
            "retainSelection": false,
            "rowFocusSkin": "Copyseg2",
            "rowSkin": "Copyseg3",
            "rowTemplate": "Copydatacontainer",
            "scrollingEvents": {},
            "sectionHeaderSkin": "CopysliPhoneSegmentHeader1",
            "selectionBehavior": constants.SEGUI_DEFAULT_BEHAVIOR,
            "separatorColor": "64646400",
            "separatorRequired": false,
            "separatorThickness": 0,
            "showScrollbars": false,
            "top": "0dp",
            "viewType": constants.SEGUI_VIEW_TYPE_TABLEVIEW,
            "widgetDataMap": {
                "Copydatacontainer": "Copydatacontainer",
                "colorflx": "colorflx",
                "department": "department",
                "designation": "designation",
                "empimage": "empimage",
                "empname": "empname",
                "flxImageHolder": "flxImageHolder",
                "flxOnline": "flxOnline",
                "lblChild": "lblChild",
                "lblInvisible": "lblInvisible"
            },
            "width": "100%",
            "zIndex": 2
        }, {
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxSeg.add(segEmployees);
        var lblNoSegmentDataFound = new kony.ui.Label({
            "centerX": "50%",
            "centerY": "25%",
            "height": "8%",
            "id": "lblNoSegmentDataFound",
            "isVisible": false,
            "skin": "CopyCopysknLgDarkText1",
            "text": "No Data Found",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "width": "40%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxDictionary = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "99%",
            "id": "flxDictionary",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "onTouchEnd": controller.AS_FlexContainer_8a08480b463645c9976a3cf8b52d2830,
            "onTouchMove": controller.AS_FlexContainer_206fcc7464da49088ad95efc8b86f01a,
            "right": "1%",
            "skin": "CopyCopyCopyslFbox0eb69c60649cc4a",
            "top": "1%",
            "width": "8%",
            "zIndex": 3
        }, {}, {});
        flxDictionary.setDefaultUnit(kony.flex.DP);
        var A = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.50%",
            "id": "A",
            "isVisible": true,
            "onClick": controller.AS_Button_c4046cdee6bb41c6a4709931c3cee176,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "A",
            "top": "0%",
            "width": "56%",
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var B = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "B",
            "isVisible": true,
            "onClick": controller.AS_Button_aab1a451e5b04412a2d0e744beb014ee,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "B",
            "top": "3.80%",
            "width": "56%",
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var C = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "C",
            "isVisible": true,
            "onClick": controller.AS_Button_05e3d2b7814d48a79d00b09f2d6694ca,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "C",
            "top": "7.60%",
            "width": "56%",
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var D = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "D",
            "isVisible": true,
            "onClick": controller.AS_Button_eaecaed3b3a24c6a9525db09ce2f3e97,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "D",
            "top": "11.40%",
            "width": "56%",
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var E = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "E",
            "isVisible": true,
            "onClick": controller.AS_Button_fc99f97136c747aaa3da42ff3e1e70fe,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "E",
            "top": "15.20%",
            "width": "56%",
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var F = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "F",
            "isVisible": true,
            "onClick": controller.AS_Button_1a77b7c4b568437596d019124d2a4a11,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "F",
            "top": "19%",
            "width": "56%",
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var G = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "G",
            "isVisible": true,
            "onClick": controller.AS_Button_de3f0988ab71426eb09e0d06ee1325f2,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "G",
            "top": "22.80%",
            "width": "56%",
            "zIndex": 10
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var H = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "H",
            "isVisible": true,
            "onClick": controller.AS_Button_84a737e36fc7420a85c1e6982fc92e44,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "H",
            "top": "26.60%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var I = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "I",
            "isVisible": true,
            "onClick": controller.AS_Button_e319da67e7f94d44b0874ec24c5ae0df,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "I",
            "top": "30.40%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var J = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "J",
            "isVisible": true,
            "onClick": controller.AS_Button_71b60205e2c34283975037efb1402f9e,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "J",
            "top": "34.20%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var K = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "K",
            "isVisible": true,
            "onClick": controller.AS_Button_c30f4619ea2b4bd78011ffb2107eb44d,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "K",
            "top": "38%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var L = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "L",
            "isVisible": true,
            "onClick": controller.AS_Button_b3bb6ca5334249d78034b49ad4702df8,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "L",
            "top": "41.80%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var M = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "M",
            "isVisible": true,
            "onClick": controller.AS_Button_2f2311ab56df4bcb90255411cc653ba8,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "M",
            "top": "45.60%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var N = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "N",
            "isVisible": true,
            "onClick": controller.AS_Button_abe8a6b60e6d47dead155726629179e4,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "N",
            "top": "49.40%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var O = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "O",
            "isVisible": true,
            "onClick": controller.AS_Button_bca33914a94f492198f28411809e6a9a,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "O",
            "top": "53.20%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var P = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "P",
            "isVisible": true,
            "onClick": controller.AS_Button_77f46cb005ed4dbb8cb337e83a43f5db,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "P",
            "top": "57%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var Q = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "Q",
            "isVisible": true,
            "onClick": controller.AS_Button_7e801a3b39f14475b72769720f496d53,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "Q",
            "top": "60.80%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var R = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "R",
            "isVisible": true,
            "onClick": controller.AS_Button_d92efd30bda54b40b720aadde921b0cc,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "R",
            "top": "64.60%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var S = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "S",
            "isVisible": true,
            "onClick": controller.AS_Button_e99cc2125cb84ba2817d681aad3873d2,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "S",
            "top": "68.40%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var T = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "T",
            "isVisible": true,
            "onClick": controller.AS_Button_09373b4f8c2d43aea459b189ed969cdb,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "T",
            "top": "72.20%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var U = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "U",
            "isVisible": true,
            "onClick": controller.AS_Button_798db0fe42af4203a1ad86e692259f6b,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "U",
            "top": "76%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var V = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "V",
            "isVisible": true,
            "onClick": controller.AS_Button_1d93df67a5d94b35977702d0c04f9758,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "V",
            "top": "79.80%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var W = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "W",
            "isVisible": true,
            "onClick": controller.AS_Button_525aba9456de4505973f394a39ebe06f,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "W",
            "top": "83.60%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var X = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "X",
            "isVisible": true,
            "onClick": controller.AS_Button_56bce2b0968447ffa10fc6d2747d3351,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "X",
            "top": "87.40%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var Y = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "Y",
            "isVisible": true,
            "onClick": controller.AS_Button_5f242315a6ef476180b35b34b1e00ad3,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "Y",
            "top": "91.20%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var Z = new kony.ui.Button({
            "focusSkin": "CopyCopysortbuttonskin1",
            "height": "3.40%",
            "id": "Z",
            "isVisible": true,
            "onClick": controller.AS_Button_3cd77a1100314541ad805838547a1543,
            "right": "6%",
            "skin": "CopyCopysortbuttonskin1",
            "text": "Z",
            "top": "95%",
            "width": "56%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxDictionary.add(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z);
        var flxTop = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "0.10%",
            "id": "flxTop",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "99%",
            "skin": "CopyslFbox4",
            "top": "1%",
            "width": "0.10%",
            "zIndex": 10
        }, {}, {});
        flxTop.setDefaultUnit(kony.flex.DP);
        var topLabel = new kony.ui.Label({
            "id": "topLabel",
            "isVisible": true,
            "left": "0%",
            "skin": "CopyslLabel1",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "0%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 15
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        flxTop.add(topLabel);
        var flxBottom = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "0.10%",
            "id": "flxBottom",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "99%",
            "skin": "CopyslFbox4",
            "top": "99%",
            "width": "1%",
            "zIndex": 10
        }, {}, {});
        flxBottom.setDefaultUnit(kony.flex.DP);
        var bottomLabel = new kony.ui.Label({
            "id": "bottomLabel",
            "isVisible": true,
            "left": "0%",
            "skin": "CopyslLabel1",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "0%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 15
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        flxBottom.add(bottomLabel);
        var lblDisplaySelectedIndex = new kony.ui.Label({
            "height": "9%",
            "id": "lblDisplaySelectedIndex",
            "isVisible": false,
            "right": "9%",
            "skin": "CopysknDragButtonFlex1",
            "text": "A",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "130dp",
            "width": "13%",
            "zIndex": 5
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        flxList.add(flxShadowEmployeeHeader, flxSeg, lblNoSegmentDataFound, flxDictionary, flxTop, flxBottom, lblDisplaySelectedIndex);
        var flxHeader = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "20%",
            "id": "flxHeader",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknDarkHeaderBg1",
            "top": "0%",
            "width": "100%",
            "zIndex": 3
        }, {}, {});
        flxHeader.setDefaultUnit(kony.flex.DP);
        var lblHeader = new kony.ui.Label({
            "centerX": "50%",
            "height": "40%",
            "id": "lblHeader",
            "isVisible": true,
            "skin": "CopyCopydirectoryheadlabelskin1",
            "text": "Directory",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "6%",
            "width": "65%"
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var flxMenu = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "37%",
            "id": "flxMenu",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopyCopyslFbox033f61475d46441",
            "top": "5%",
            "width": "12%",
            "zIndex": 3
        }, {}, {});
        flxMenu.setDefaultUnit(kony.flex.DP);
        var btnMenu = new kony.ui.Button({
            "focusSkin": "CopyCopyCopysknBtnInVisible1",
            "height": "100%",
            "id": "btnMenu",
            "isVisible": true,
            "left": "0%",
            "onClick": controller.AS_leftMenuClick_c1c4db38103244dcb79bbff5946598b1,
            "skin": "CopyCopyCopysknBtnInVisible1",
            "top": "0%",
            "width": "100%",
            "zIndex": 3
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var imgMenu = new kony.ui.Image2({
            "bottom": 0,
            "centerX": "50%",
            "centerY": "50%",
            "height": "24dp",
            "id": "imgMenu",
            "isVisible": true,
            "skin": "CopyCopyCopyslImage02ec3f783cb0548",
            "src": "menu_icon.png",
            "width": "24dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_FIT_TO_DIMENSIONS,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxMenu.add(btnMenu, imgMenu);
        var flxFilter = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "37%",
            "id": "flxFilter",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "88%",
            "skin": "CopyCopyCopyslFbox033f61475d46441",
            "top": "5%",
            "width": "12%",
            "zIndex": 3
        }, {}, {});
        flxFilter.setDefaultUnit(kony.flex.DP);
        var btnFilter = new kony.ui.Button({
            "centerX": "50%",
            "centerY": "50%",
            "focusSkin": "CopyCopyCopysknBtnInVisible1",
            "height": "100%",
            "id": "btnFilter",
            "isVisible": true,
            "onClick": controller.AS_rightMenuClick_b2c5de3cc5f048359b99d3036fceae30,
            "skin": "CopyCopyCopysknBtnInVisible1",
            "width": "100%",
            "zIndex": 3
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var imgFilter = new kony.ui.Image2({
            "bottom": 0,
            "centerX": "50%",
            "centerY": "50%",
            "height": "24dp",
            "id": "imgFilter",
            "isVisible": true,
            "skin": "CopyCopyCopyslImage02ec3f783cb0548",
            "src": "filter_icon.png",
            "width": "24dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_FIT_TO_DIMENSIONS,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxFilter.add(btnFilter, imgFilter);
        var flxSearch = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50%",
            "clipBounds": true,
            "height": "26%",
            "id": "flxSearch",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "right": "0%",
            "skin": "CopyCopyCopyslFbox033f61475d46441",
            "top": "56%",
            "width": "90.80%",
            "zIndex": 1
        }, {}, {});
        flxSearch.setDefaultUnit(kony.flex.DP);
        var tbxSearch = new kony.ui.TextBox2({
            "autoCapitalize": constants.TEXTBOX_AUTO_CAPITALIZE_NONE,
            "focusSkin": "CopyCopyrealsearch1",
            "height": "100%",
            "id": "tbxSearch",
            "isVisible": true,
            "keyBoardStyle": constants.TEXTBOX_KEY_BOARD_STYLE_DEFAULT,
            "left": "0%",
            "onDone": controller.AS_TextField_d065307b94eb42c896ba5c0c28fe41e0,
            "onTextChange": controller.AS_TextField_68538350dddf4b84858169d53c7c712b,
            "onTouchStart": controller.AS_TextField_9ef81eb53ed94399aa42f7e23ab4e5bc,
            "secureTextEntry": false,
            "skin": "CopyCopyrealsearch1",
            "textInputMode": constants.TEXTBOX_INPUT_MODE_ANY,
            "top": "0%",
            "width": "100%",
            "zIndex": 5
        }, {
            "containerHeightMode": constants.TEXTBOX_FONT_METRICS_DRIVEN_HEIGHT,
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [10, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "autoFilter": false,
            "keyboardActionLabel": constants.TEXTBOX_KEYBOARD_LABEL_DEFAULT,
            "placeholderSkin": "CopyCopyrealsearch1",
            "viewType": constants.TEXTBOX_VIEW_TYPE_DEFAULT
        });
        var imgSearchCenter = new kony.ui.Image2({
            "centerY": "50%",
            "height": "17dp",
            "id": "imgSearchCenter",
            "isVisible": true,
            "left": "43%",
            "skin": "CopyCopyCopyslImage02ec3f783cb0548",
            "src": "search.png",
            "width": "17dp",
            "zIndex": 2
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_FIT_TO_DIMENSIONS,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var lblSearchPlaceholder = new kony.ui.Label({
            "centerY": "50%",
            "height": "90%",
            "id": "lblSearchPlaceholder",
            "isVisible": true,
            "left": "49%",
            "skin": "CopyCopyCopyslLabel031aaf664d99d4f",
            "text": "Search",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "width": "20%",
            "zIndex": 3
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var imgSearchLeft = new kony.ui.Image2({
            "centerY": "50%",
            "height": "17dp",
            "id": "imgSearchLeft",
            "isVisible": false,
            "left": "3%",
            "skin": "CopyCopyCopyslImage02ec3f783cb0548",
            "src": "search.png",
            "width": "17dp",
            "zIndex": 2
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_FIT_TO_DIMENSIONS,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var btnSearchCancel = new kony.ui.Button({
            "centerY": "50%",
            "focusSkin": "CopyCopyendcancel1",
            "height": "90%",
            "id": "btnSearchCancel",
            "isVisible": false,
            "onClick": controller.AS_Button_8ae0f72c524545b4826442596050e810,
            "right": "0%",
            "skin": "CopyCopyendcancel1",
            "text": "Cancel",
            "width": "16%",
            "zIndex": 4
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_RIGHT,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var flxSearchBg = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "100%",
            "id": "flxSearchBg",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyCopysknSearchInactive1",
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flxSearchBg.setDefaultUnit(kony.flex.DP);
        flxSearchBg.add();
        flxSearch.add(tbxSearch, imgSearchCenter, lblSearchPlaceholder, imgSearchLeft, btnSearchCancel, flxSearchBg);
        var lblSecret1 = new kony.ui.Label({
            "id": "lblSecret1",
            "isVisible": false,
            "left": "0%",
            "skin": "CopysknAvailable1",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "0%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblSecret2 = new kony.ui.Label({
            "id": "lblSecret2",
            "isVisible": false,
            "left": "0%",
            "skin": "CopysknAway1",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "170%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 4
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var lblSecret3 = new kony.ui.Label({
            "id": "lblSecret3",
            "isVisible": false,
            "left": "0%",
            "skin": "CopysknMeeting1",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "0%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 4
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var btnSecret = new kony.ui.Button({
            "focusSkin": "CopyslButtonGlossRed2",
            "height": "0%",
            "id": "btnSecret",
            "isVisible": false,
            "left": "0%",
            "skin": "CopysknAssignBeforeAfter1",
            "top": "0%",
            "width": "0%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        var lblSecret4 = new kony.ui.Label({
            "id": "lblSecret4",
            "isVisible": true,
            "left": "0%",
            "skin": "CopysknLblColor1",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "0%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 4
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        flxHeader.add(lblHeader, flxMenu, flxFilter, flxSearch, lblSecret1, lblSecret2, lblSecret3, btnSecret, lblSecret4);
        flxListScreen.add(flxList, flxHeader);
        var Button0d439f2bf78564e = new kony.ui.Button({
            "bottom": "4%",
            "focusSkin": "CopyslButtonGlossRed0h7b607da7e604c",
            "height": "70dp",
            "id": "Button0d439f2bf78564e",
            "isVisible": true,
            "onClick": controller.AS_Button_de58ae5756604aa6af84213711d7af77,
            "right": "4%",
            "skin": "CopyslButtonGlossBlue0dd7b2e1c46104e",
            "width": "70dp",
            "zIndex": 12
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        listdetail.add(flxDetailsScreen, flxListScreen, Button0d439f2bf78564e);
        return listdetail;
    }
})