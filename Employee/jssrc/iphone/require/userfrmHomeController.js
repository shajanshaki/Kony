define({
    onNavigated: function(context) {
        this.flag = 0;
    },
    animation: function(object, scaleX, scaleY, left, flag) {
        var defaultImage = kony.ui.makeAffineTransform();
        defaultImage.scale(scaleX, scaleY);
        var duration = 0.5;
        if (flag == false) {
            duration = 0;
        }
        object.animate(kony.ui.createAnimation({
            100: {
                "left": left,
                "stepConfig": {
                    "timingFunction": kony.anim.EASE
                },
                "transform": defaultImage
            }
        }), {
            delay: 0,
            fillMode: kony.anim.FILL_MODE_FORWARDS,
            duration: duration
        }, {
            animationEnd: function() {}
        });
    },
    setShadowPosition: function() {
        if (this.view.listdetail.left == "-70%") {
            this.view.flxShadow.isVisible = true;
            this.view.flxShadow.left = "-80%";
        } else if (this.view.listdetail.left == "70%") {
            this.view.flxShadow.isVisible = true;
            this.view.flxShadow.left = "80%";
        } else {
            this.view.flxShadow.isVisible = false;
        }
    },
    menuClick: function() {
        this.animation(this.view.listdetail, 0.8, 0.8, "70%", true);
        this.animation(this.view.flxShadow, 0.8, 0.8, "70%", true);
        this.view.hamburger.left = "0%";
        this.view.forceLayout();
    },
    filterClick: function() {
        this.view.filterMenu.left = "20%";
        this.animation(this.view.listdetail, 0.8, 0.8, "-70%", true);
        this.animation(this.view.flxShadow, 0.8, 0.8, "-70%", true);
        this.view.forceLayout();
    },
    listFilterClick: function() {
        this.view.hamburger.left = "-100%";
        this.view.flxCover.zIndex = 10;
        this.view.flxCover.isVisible = true;
        this.view.flxCover.left = "0%";
        this.view.flxCover.width = "20%";
        this.view.flxCover.height = "100%";
        this.view.flxShadow.isVisible = true;
        this.view.forceLayout();
        if (!this.flag) {
            this.view.filterMenu.addMenuItems(this.view.listdetail.getData());
            this.flag = 1;
        }
        this.filterClick();
    },
    listMenuClick: function() {
        this.view.flxCover.zIndex = 10;
        this.view.flxCover.isVisible = true;
        this.view.flxCover.left = "80%";
        this.view.flxCover.width = "20%";
        this.view.flxCover.height = "100%";
        this.view.flxShadow.isVisible = true;
        this.view.forceLayout();
        var loginMenuData = [{
            text: "Directory",
            src: "selection.png",
            callback: this.edclick.bind(this)
        }, {
            text: "Colleagues",
            src: "selection.png",
            callback: function() {
                alert("Colleagues");
            }
        }, {
            text: "Messages",
            src: "selection.png",
            callback: function() {
                alert("Messages");
            }
        }, {
            text: "Events",
            src: "selection.png",
            callback: function() {
                alert("Events");
            }
        }, {
            text: "Settings",
            src: "selection.png",
            callback: function() {
                alert("Settings");
            }
        }];
        this.view.hamburger.addMenuItems(loginMenuData);
        this.menuClick();
    },
    edclick: function() {
        this.view.hamburger.left = "-100%";
        this.view.flxCover.isVisible = false;
        this.animation(this.view.flxShadow, 1, 1, "0%", true);
        this.animation(this.view.listdetail, 1, 1, "0%", true);
        this.view.flxShadow.isVisible = false;
        this.view.forceLayout();
    },
    flxCoverOnClick: function() {
        this.view.flxShadow.isVisible = false;
        if (this.view.listdetail.left == "-70%" || this.view.listdetail.left == "70%") {
            if (this.view.hamburger.left == "0%") {
                this.view.hamburger.left = "-100%";
                this.animation(this.view.flxShadow, 1, 1, "0%", true);
                this.animation(this.view.listdetail, 1, 1, "0%", true);
                this.view.forceLayout();
                this.view.flxCover.isVisible = false;
            } else if (this.view.filterMenu.left == "20%") {
                this.view.filterMenu.left = "100%";
                this.animation(this.view.flxShadow, 1, 1, "0%", true);
                this.animation(this.view.listdetail, 1, 1, "0%", true);
                this.view.filterMenu.addMenuItems(this.view.listdetail.getData());
                this.view.listdetail.filterAndSetData([]);
                this.view.forceLayout();
                this.view.flxCover.isVisible = false;
            }
        }
        this.view.flxShadow.isVisible = false;
    },
    resetPosition: function() {
        this.view.hamburger.left = "-100%";
        this.animation(this.view.flxShadow, 1, 1, "0%", true);
        this.animation(this.view.listdetail, 1, 1, "0%", false);
        this.view.listdetail.left = "0%";
        this.view.flxCover.isVisible = false;
        this.view.flxShadow.isVisible = false;
        this.view.forceLayout();
        var nav = new kony.mvc.Navigation("frmLogin");
        nav.navigate();
    },
    filterApplyClick: function() {
        this.view.listdetail.filterAndSetData(this.view.filterMenu.getSelectedValues());
        this.view.flxCover.isVisible = false;
        this.view.flxShadow.isVisible = false;
        this.animation(this.view.flxShadow, 1, 1, "0%", true);
        this.animation(this.view.listdetail, 1, 1, "0%", true);
        this.view.filterMenu.left = "100%";
        this.view.forceLayout();
    }
});