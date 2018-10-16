define({
    /*
      This is an auto generated file and any modifications to it may result in corruption of the action sequence.
    */
    /** onClick defined for flxTouchId **/
    AS_FlexContainer_3f4759b1cb7a4fb98713ae4f20b21a3c: function AS_FlexContainer_3f4759b1cb7a4fb98713ae4f20b21a3c(eventobject) {
        var self = this;
        this.invokeTouchID();
    },
    /** onClick defined for flxFacebook **/
    AS_FlexContainer_e9ad4a95e2c143fc9b7482817c7c021c: function AS_FlexContainer_e9ad4a95e2c143fc9b7482817c7c021c(eventobject) {
        var self = this;
        kony.store.setItem("inputType", "social");
        this.invokeIdentityService("reusableFacebookLogin");
    },
    /** onClick defined for flxLinkedin **/
    AS_FlexContainer_8aa71a407d0741f1856cc1a46f951780: function AS_FlexContainer_8aa71a407d0741f1856cc1a46f951780(eventobject) {
        var self = this;
        kony.store.setItem("inputType", "social");
        this.invokeIdentityService("reusableLinkedinLogin");
    },
    /** onClick defined for flxGoogle **/
    AS_FlexContainer_a7dae437cf8a4c72b4850fadd8a8a349: function AS_FlexContainer_a7dae437cf8a4c72b4850fadd8a8a349(eventobject) {
        var self = this;
        kony.store.setItem("inputType", "social");
        this.invokeIdentityService("reusableGoogleLogin");
    },
    /** onClick defined for flxOffice365 **/
    AS_FlexContainer_87de587aa5364f8e8395977ec9119d02: function AS_FlexContainer_87de587aa5364f8e8395977ec9119d02(eventobject) {
        var self = this;
        kony.store.setItem("inputType", "social");
        this.invokeIdentityService("reusableOffice365Login");
    },
    /** onDone defined for tbxUsername **/
    AS_TextField_addb224a01cd4b28a13b24b70471fed3: function AS_TextField_addb224a01cd4b28a13b24b70471fed3(eventobject, changedtext) {
        var self = this;
        this.onDoneCredentials(this.view.lblUsername);
    },
    /** onDone defined for tbxPassword **/
    AS_TextField_0a3b861b491744a88711ddf9aafda4c2: function AS_TextField_0a3b861b491744a88711ddf9aafda4c2(eventobject, changedtext) {
        var self = this;
        this.onDoneCredentials(this.view.lblPassword);
    },
    /** onClick defined for flxRememberMe **/
    AS_FlexContainer_d0aab5b4acc04152a0ec450e15e772b5: function AS_FlexContainer_d0aab5b4acc04152a0ec450e15e772b5(eventobject) {
        var self = this;
        this.remembermeSelection();
    },
    /** onClick defined for btnLogin **/
    AS_Button_d3d819d11cfd4f57995f9bdd5d8913e2: function AS_Button_d3d819d11cfd4f57995f9bdd5d8913e2(eventobject) {
        var self = this;
        this.invokeButtonClick();
    },
    /** onClick defined for flxLblUsername **/
    AS_FlexContainer_652bd46dc9544e8c8d52115b75f0d1dd: function AS_FlexContainer_652bd46dc9544e8c8d52115b75f0d1dd(eventobject) {
        var self = this;
        if (this.view.lblUsername.top == "6%") {
            this.view.flxLblUsername.isVisible = false;
            this.invokeTouch(this.view.lblUsername, "-1%");
        }
        this.view.forceLayout();
    },
    /** onClick defined for flxLblPassword **/
    AS_FlexContainer_72686f4fb8d94fd69846952b47579bce: function AS_FlexContainer_72686f4fb8d94fd69846952b47579bce(eventobject) {
        var self = this;
        if (this.view.lblPassword.top == "23%") {
            this.view.flxLblPassword.isVisible = false;
            this.invokeTouch(this.view.lblPassword, "16%");
        }
        this.view.forceLayout();
    },
    /** onClick defined for btnEnable **/
    AS_Button_bb891907fa294fc8b937c8dd200d86f6: function AS_Button_bb891907fa294fc8b937c8dd200d86f6(eventobject) {
        var self = this;
        this.touchEnableAction();
    },
    /** onClick defined for btnCancel **/
    AS_Button_2ffefbe5a81e478fb83023f6f0fe51df: function AS_Button_2ffefbe5a81e478fb83023f6f0fe51df(eventobject) {
        var self = this;
        this.touchCancelAction();
    },
    /** onClick defined for btnTouchCancel **/
    AS_Button_2d63d9a7737a4d2b92bce31368476d66: function AS_Button_2d63d9a7737a4d2b92bce31368476d66(eventobject) {
        var self = this;
        this.cancelTouchID();
    },
    /** onClick defined for btnAlertNO **/
    AS_Button_ca75f5db46e4408db801629d40e18e0a: function AS_Button_ca75f5db46e4408db801629d40e18e0a(eventobject) {
        var self = this;
        this.faceIdCancelAction();
    },
    /** onClick defined for btnAlertYES **/
    AS_Button_f91a3a8eae824e549e779b00f6fe90de: function AS_Button_f91a3a8eae824e549e779b00f6fe90de(eventobject) {
        var self = this;
        this.faceIdEnableAction();
    },
    /** onClick defined for flxFaceId **/
    AS_FlexContainer_e4e858da869147289e400d81a4bf0a3c: function AS_FlexContainer_e4e858da869147289e400d81a4bf0a3c(eventobject) {
        var self = this;
        this.view.faceid.verify();
    },
    /** onClick defined for flxClose **/
    AS_FlexContainer_025fdba8604048b6b79a557ffde49c78: function AS_FlexContainer_025fdba8604048b6b79a557ffde49c78(eventobject) {
        var self = this;
        this.view.flxIdentity.isVisible = false;
        this.view.brwsrIdentity.htmlString = "<html>Please wait !!</html>"
    },
    /** postShow defined for login **/
    AS_FlexContainer_i7ffa13263b341b2aa0d80216aef04e8: function AS_FlexContainer_i7ffa13263b341b2aa0d80216aef04e8(eventobject) {
        var self = this;
        kony.application.showLoadingScreen(null, "Loading...", constants.LOADING_SCREEN_POSITION_ONLY_CENTER, false, true, {});
    },
    /** onInitSuccess defined for faceid **/
    AS_UWI_g7b52726bce74c5c81fa9c62c0621b9e: function AS_UWI_g7b52726bce74c5c81fa9c62c0621b9e() {
        var self = this;
        this.faceIdInitSuccess();
    },
    /** onInitFailure defined for faceid **/
    AS_UWI_b1c16c530a6f45a8bdde68c3294f04c1: function AS_UWI_b1c16c530a6f45a8bdde68c3294f04c1(error) {
        var self = this;
        this.faceIdInitFailed();
    },
    /** onEnrollSuccess defined for faceid **/
    AS_UWI_c530f3fd28d94cf09991df44b69a774d: function AS_UWI_c530f3fd28d94cf09991df44b69a774d() {
        var self = this;
        this.faceIdEnrollSuccess();
    },
    /** onEnrollFailure defined for faceid **/
    AS_UWI_h2fd06d92f184d04ae5dca1847cd56b7: function AS_UWI_h2fd06d92f184d04ae5dca1847cd56b7(error) {
        var self = this;
        this.faceIdEnrollFailure();
    },
    /** onVerifySuccess defined for faceid **/
    AS_UWI_e5f446ee72a9471d85d464d2aefdf6ec: function AS_UWI_e5f446ee72a9471d85d464d2aefdf6ec() {
        var self = this;
        this.loginSuccessEvent();
    },
    /** onVerifyFailure defined for faceid **/
    AS_UWI_i2699c38778a4b86b9754aee1bf419d9: function AS_UWI_i2699c38778a4b86b9754aee1bf419d9(error) {
        var self = this;
        Kony.print("Verify Failed");
    },
    /** onUnenrollSuccess defined for faceid **/
    AS_UWI_f1180c2ac06b442b82e26be11047702d: function AS_UWI_f1180c2ac06b442b82e26be11047702d() {
        var self = this;
        alert("onUnEnroll Success");
    },
    /** onUnenrollFailure defined for faceid **/
    AS_UWI_a9f4d76ba0ac45859af4b8bf79f0c60e: function AS_UWI_a9f4d76ba0ac45859af4b8bf79f0c60e(error) {
        var self = this;
        alert("onUnEnroll Failure");
    }
});