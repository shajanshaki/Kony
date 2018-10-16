define(function() {
    var controller = require("com/konymp/faceid/userfaceidController");
    var actions = require("com/konymp/faceid/faceidControllerActions");
    for (var key in actions) {
        controller[key] = actions[key];
    }
    controller.initializeProperties = function() {
        defineSetter(this, "btnSignInSkin", function(val) {
            this.view.btnSignIn.skin = val;
        });
        defineGetter(this, "btnSignInSkin", function() {
            return this.view.btnSignIn.skin;
        });
        defineSetter(this, "btnText", function(val) {
            this.view.btnSignIn.text = val;
        });
        defineGetter(this, "btnText", function() {
            return this.view.btnSignIn.text;
        });
        if (this.initGettersSetters) {
            this.initGettersSetters.apply(this, arguments);
        }
    };
    return controller;
});