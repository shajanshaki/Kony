define(function() {
    var controller = require("com/konymp/login/userloginController");
    var actions = require("com/konymp/login/loginControllerActions");
    for (var key in actions) {
        controller[key] = actions[key];
    }
    controller.initializeProperties = function() {
        defineSetter(this, "rememberMeSelectedSource", function(val) {
            this.view.imgRememberme.src = val;
        });
        defineGetter(this, "rememberMeSelectedSource", function() {
            return this.view.imgRememberme.src;
        });
        defineSetter(this, "logoSource", function(val) {
            this.view.imgLogo.src = val;
        });
        defineGetter(this, "logoSource", function() {
            return this.view.imgLogo.src;
        });
        defineSetter(this, "rememberMeUnSelectedSource", function(val) {
            this.view.imgUnselected.src = val;
        });
        defineGetter(this, "rememberMeUnSelectedSource", function() {
            return this.view.imgUnselected.src;
        });
        defineSetter(this, "logoScaleMode", function(val) {
            this.view.imgLogo.imageScaleMode = val;
        });
        defineGetter(this, "logoScaleMode", function() {
            return this.view.imgLogo.imageScaleMode;
        });
        defineSetter(this, "usernamePlaceholder", function(val) {
            this.view.lblUsername.text = val;
        });
        defineGetter(this, "usernamePlaceholder", function() {
            return this.view.lblUsername.text;
        });
        defineSetter(this, "passwordPlaceholder", function(val) {
            this.view.lblPassword.text = val;
        });
        defineGetter(this, "passwordPlaceholder", function() {
            return this.view.lblPassword.text;
        });
        defineSetter(this, "usernameMaxChar", function(val) {
            this.view.tbxUsername.maxTextLength = val;
        });
        defineGetter(this, "usernameMaxChar", function() {
            return this.view.tbxUsername.maxTextLength;
        });
        defineSetter(this, "passwordMaxChar", function(val) {
            this.view.tbxPassword.maxTextLength = val;
        });
        defineGetter(this, "passwordMaxChar", function() {
            return this.view.tbxPassword.maxTextLength;
        });
        defineSetter(this, "usernameInputMode", function(val) {
            this.view.tbxUsername.textInputMode = val;
        });
        defineGetter(this, "usernameInputMode", function() {
            return this.view.tbxUsername.textInputMode;
        });
        defineSetter(this, "passwordInputMode", function(val) {
            this.view.tbxPassword.textInputMode = val;
        });
        defineGetter(this, "passwordInputMode", function() {
            return this.view.tbxPassword.textInputMode;
        });
        defineSetter(this, "remembermeProperty", function(val) {
            this.view.flxRememberMe.isVisible = val;
        });
        defineGetter(this, "remembermeProperty", function() {
            return this.view.flxRememberMe.isVisible;
        });
        defineSetter(this, "socialLoginVisible", function(val) {
            this.view.flxSocialLogin.isVisible = val;
        });
        defineGetter(this, "socialLoginVisible", function() {
            return this.view.flxSocialLogin.isVisible;
        });
        defineSetter(this, "forgotPasswordText", function(val) {
            this.view.btnForgotPassword.text = val;
        });
        defineGetter(this, "forgotPasswordText", function() {
            return this.view.btnForgotPassword.text;
        });
        defineSetter(this, "submitButtonText", function(val) {
            this.view.btnLogin.text = val;
        });
        defineGetter(this, "submitButtonText", function() {
            return this.view.btnLogin.text;
        });
        defineSetter(this, "socialLoginCenterY", function(val) {
            this.view.flxSocialLogin.centerY = val;
        });
        defineGetter(this, "socialLoginCenterY", function() {
            return this.view.flxSocialLogin.centerY;
        });
        defineSetter(this, "facebookLogin", function(val) {
            this.view.flxFacebook.isVisible = val;
        });
        defineGetter(this, "facebookLogin", function() {
            return this.view.flxFacebook.isVisible;
        });
        defineSetter(this, "facebookCenterX", function(val) {
            this.view.flxFacebook.centerX = val;
        });
        defineGetter(this, "facebookCenterX", function() {
            return this.view.flxFacebook.centerX;
        });
        defineSetter(this, "linkedinLogin", function(val) {
            this.view.flxLinkedin.isVisible = val;
        });
        defineGetter(this, "linkedinLogin", function() {
            return this.view.flxLinkedin.isVisible;
        });
        defineSetter(this, "linkedinCenterX", function(val) {
            this.view.flxLinkedin.centerX = val;
        });
        defineGetter(this, "linkedinCenterX", function() {
            return this.view.flxLinkedin.centerX;
        });
        defineSetter(this, "office365Login", function(val) {
            this.view.flxOffice365.isVisible = val;
        });
        defineGetter(this, "office365Login", function() {
            return this.view.flxOffice365.isVisible;
        });
        defineSetter(this, "office365CenterX", function(val) {
            this.view.flxOffice365.centerX = val;
        });
        defineGetter(this, "office365CenterX", function() {
            return this.view.flxOffice365.centerX;
        });
        defineSetter(this, "facebookSource", function(val) {
            this.view.imgFaceBook.src = val;
        });
        defineGetter(this, "facebookSource", function() {
            return this.view.imgFaceBook.src;
        });
        defineSetter(this, "linkedinSource", function(val) {
            this.view.imgLinkedIn.src = val;
        });
        defineGetter(this, "linkedinSource", function() {
            return this.view.imgLinkedIn.src;
        });
        defineSetter(this, "office365Source", function(val) {
            this.view.imgOffice365.src = val;
        });
        defineGetter(this, "office365Source", function() {
            return this.view.imgOffice365.src;
        });
        if (this.initGettersSetters) {
            this.initGettersSetters.apply(this, arguments);
        }
    };
    controller.AS_forgotPasswordOnClick_b2de6f8330d14c2489a31088725ac514 = function() {
        if (this.forgotPasswordOnClick) {
            this.forgotPasswordOnClick.apply(this, arguments);
        }
    }
    return controller;
});