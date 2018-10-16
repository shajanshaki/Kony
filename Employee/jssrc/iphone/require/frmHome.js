define("frmHome", function() {
    return function(controller) {
        function addWidgetsfrmHome() {
            this.setDefaultUnit(kony.flex.DP);
            var flxCover = new kony.ui.FlexContainer({
                "autogrowMode": kony.flex.AUTOGROW_NONE,
                "clipBounds": true,
                "height": "100%",
                "id": "flxCover",
                "isVisible": false,
                "layoutType": kony.flex.FREE_FORM,
                "left": "0%",
                "onClick": controller.AS_FlexContainer_g8ad215c2f794dd9a6407dae9e8e89f7,
                "skin": "slFbox",
                "top": "0%",
                "width": "100%",
                "zIndex": 1
            }, {}, {});
            flxCover.setDefaultUnit(kony.flex.DP);
            flxCover.add();
            var flxShadow = new kony.ui.FlexContainer({
                "autogrowMode": kony.flex.AUTOGROW_NONE,
                "centerY": "50%",
                "clipBounds": true,
                "height": "100%",
                "id": "flxShadow",
                "isVisible": false,
                "layoutType": kony.flex.FREE_FORM,
                "left": "0%",
                "onClick": controller.AS_FlexContainer_f5b71ec467db4b13b8071313b76c4aef,
                "skin": "CopyslFbox0idf85e2bff424e",
                "top": "0%",
                "width": "100%",
                "zIndex": 8
            }, {}, {});
            flxShadow.setDefaultUnit(kony.flex.DP);
            flxShadow.add();
            var hamburger = new com.konymp.slidingmenu({
                "autogrowMode": kony.flex.AUTOGROW_NONE,
                "clipBounds": true,
                "height": "100%",
                "id": "hamburger",
                "isVisible": true,
                "layoutType": kony.flex.FREE_FORM,
                "left": "-100%",
                "masterType": constants.MASTER_TYPE_USERWIDGET,
                "skin": "CopyCopyslFbox1",
                "top": "0%",
                "width": "100%",
                "zIndex": 2
            }, {}, {});
            hamburger.hamIconIsVisibility = false;
            hamburger.headingLeft = "36%";
            hamburger.headingTop = "25%";
            hamburger.profileImageLeft = "5%";
            hamburger.profileImageTop = "10%";
            hamburger.subHeadingLeft = "36%";
            hamburger.slidingMenuDirection = "\"Left\"";
            hamburger.headerAnimation = "\"Slide In\"";
            hamburger.profileImageType = "\"Circle\"";
            hamburger.footerStyle = "\"only Text\"";
            hamburger.slidingMenuSkin = "sknFlxED061525103052";
            hamburger.headingSkin = "sknLblHeaderWhiteffffff";
            hamburger.subHeadingSkin = "sknlblnunitoLightf2f2f2ffpx30";
            hamburger.menuItemTextSkin = "sknLblHeaderWhiteffffff";
            hamburger.footerTextSkin = "sknLblHeaderWhiteffffff";
            hamburger.menuItemHeaderTextSkin = "slFLabel";
            hamburger.btnClickSkin = "sknBtnTransperant";
            hamburger.callbackMode = false;
            hamburger.onClickFooter = controller.AS_UWI_e5d10886c84341f4a574f5d2ad561fe4;
            var filterMenu = new com.konymp.slidingmenu({
                "autogrowMode": kony.flex.AUTOGROW_NONE,
                "clipBounds": true,
                "height": "100%",
                "id": "filterMenu",
                "isVisible": true,
                "layoutType": kony.flex.FREE_FORM,
                "left": "100%",
                "masterType": constants.MASTER_TYPE_USERWIDGET,
                "skin": "CopyCopyslFbox1",
                "top": "0%",
                "width": "100%",
                "zIndex": 2
            }, {}, {});
            filterMenu.btnClickHeight = "50%";
            filterMenu.btnClickIsVisible = true;
            filterMenu.btnClickLeft = "70%";
            filterMenu.btnClickText = "Apply";
            filterMenu.btnClickTop = "15%";
            filterMenu.btnClickWidth = "25%";
            filterMenu.flxBotomIsVisible = false;
            filterMenu.hamIconIsVisibility = false;
            filterMenu.headerFlexHeight = "10%";
            filterMenu.headingLeft = "10%";
            filterMenu.headingText = "Filter By";
            filterMenu.headingTop = "20%";
            filterMenu.menuControlFlexHeight = "85%";
            filterMenu.menuControlFlexTop = "10%";
            filterMenu.profileImageIsVisible = false;
            filterMenu.subHeadingLeft = "48%";
            filterMenu.subHeadingTextIsVisible = false;
            filterMenu.slidingMenuDirection = "\"Left\"";
            filterMenu.headerAnimation = "\"Slide In\"";
            filterMenu.profileImageType = "\"Circle\"";
            filterMenu.footerStyle = "\"No Footer\"";
            filterMenu.slidingMenuSkin = "sknFlxED061525103052";
            filterMenu.headingSkin = "sknLblffb300";
            filterMenu.subHeadingSkin = "sknlblnunitoLightf2f2f2ffpx30";
            filterMenu.menuItemTextSkin = "sknLblHeaderWhiteffffff";
            filterMenu.footerTextSkin = "sknLblHeaderWhiteffffff";
            filterMenu.menuItemHeaderTextSkin = "majortitle";
            filterMenu.btnClickSkin = "sknBtn061525ffb300";
            filterMenu.callbackMode = true;
            filterMenu.onApplyButtonClick = controller.AS_UWI_ee83fff12fa94617b8682b8270f54993;
            filterMenu.onItemClick = controller.AS_UWI_c9c23f0cc52d4f9ba71b76c4cb4402a9;
            var listdetail = new com.konymp.listdetail({
                "clipBounds": true,
                "height": "100%",
                "id": "listdetail",
                "isVisible": true,
                "layoutType": kony.flex.FREE_FORM,
                "left": "0%",
                "masterType": constants.MASTER_TYPE_USERWIDGET,
                "top": "0%",
                "width": "100%",
                "zIndex": 5
            }, {}, {});
            listdetail.searchList = true;
            listdetail.defaultProfile = "profile.png";
            listdetail.defaultCover = "cover.png";
            listdetail.defaultStatus = true;
            listdetail.hideHeader = true;
            listdetail.leftMenuClick = controller.AS_UWI_i21bfeb9bd5846ea989bd4a69d2c451b;
            listdetail.rightMenuClick = controller.AS_UWI_fb0ae1ffd4de4a96b93e77d8ccba6b8d;
            this.add(flxCover, flxShadow, hamburger, filterMenu, listdetail);
        };
        return [{
            "addWidgets": addWidgetsfrmHome,
            "bounces": false,
            "enableScrolling": false,
            "enabledForIdleTimeout": false,
            "id": "frmHome",
            "layoutType": kony.flex.FREE_FORM,
            "needAppMenu": false,
            "skin": "CopyslForm0h5841b36ffce4b"
        }, {
            "displayOrientation": constants.FORM_DISPLAY_ORIENTATION_PORTRAIT,
            "layoutType": kony.flex.FREE_FORM,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "bounces": false,
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