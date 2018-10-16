define(function() {
    var controller = require("com/konymp/listdetail/userlistdetailController");
    var actions = require("com/konymp/listdetail/listdetailControllerActions");
    for (var key in actions) {
        controller[key] = actions[key];
    }
    controller.initializeProperties = function() {
        defineSetter(this, "flxDictionaryVisible", function(val) {
            this.view.flxDictionary.isVisible = val;
        });
        defineGetter(this, "flxDictionaryVisible", function() {
            return this.view.flxDictionary.isVisible;
        });
        defineSetter(this, "leftSrc", function(val) {
            this.view.imgMenu.src = val;
        });
        defineGetter(this, "leftSrc", function() {
            return this.view.imgMenu.src;
        });
        defineSetter(this, "rightSrc", function(val) {
            this.view.imgFilter.src = val;
        });
        defineGetter(this, "rightSrc", function() {
            return this.view.imgFilter.src;
        });
        defineSetter(this, "leftVisible", function(val) {
            this.view.flxMenu.isVisible = val;
        });
        defineGetter(this, "leftVisible", function() {
            return this.view.flxMenu.isVisible;
        });
        defineSetter(this, "rightVisible", function(val) {
            this.view.flxFilter.isVisible = val;
        });
        defineGetter(this, "rightVisible", function() {
            return this.view.flxFilter.isVisible;
        });
        if (this.initGettersSetters) {
            this.initGettersSetters.apply(this, arguments);
        }
    };
    controller.AS_leftMenuClick_c1c4db38103244dcb79bbff5946598b1 = function() {
        if (this.leftMenuClick) {
            this.leftMenuClick.apply(this, arguments);
        }
    }
    controller.AS_rightMenuClick_b2c5de3cc5f048359b99d3036fceae30 = function() {
        if (this.rightMenuClick) {
            this.rightMenuClick.apply(this, arguments);
        }
    }
    return controller;
});