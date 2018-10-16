define({
    appInit: function(params) {
        skinsInit();
        kony.mvc.registry.add("com.konymp.faceid", "faceid", "faceidController");
        kony.application.registerMaster({
            "namespace": "com.konymp",
            "classname": "faceid",
            "name": "com.konymp.faceid"
        });
        kony.mvc.registry.add("com.konymp.knowledgeframework", "knowledgeframework", "knowledgeframeworkController");
        kony.application.registerMaster({
            "namespace": "com.konymp",
            "classname": "knowledgeframework",
            "name": "com.konymp.knowledgeframework"
        });
        kony.mvc.registry.add("com.konymp.listdetail", "listdetail", "listdetailController");
        kony.application.registerMaster({
            "namespace": "com.konymp",
            "classname": "listdetail",
            "name": "com.konymp.listdetail"
        });
        kony.mvc.registry.add("com.konymp.slidingmenu", "slidingmenu", "slidingmenuController");
        kony.application.registerMaster({
            "namespace": "com.konymp",
            "classname": "slidingmenu",
            "name": "com.konymp.slidingmenu"
        });
        kony.mvc.registry.add("com.konymp.login", "login", "loginController");
        kony.application.registerMaster({
            "namespace": "com.konymp",
            "classname": "login",
            "name": "com.konymp.login"
        });
        kony.mvc.registry.add("Copydatacontainer", "Copydatacontainer", "CopydatacontainerController");
        kony.mvc.registry.add("CopyflexAPIs", "CopyflexAPIs", "CopyflexAPIsController");
        kony.mvc.registry.add("CopyflexAPIs1", "CopyflexAPIs1", "CopyflexAPIs1Controller");
        kony.mvc.registry.add("datacontainer", "datacontainer", "datacontainerController");
        kony.mvc.registry.add("flexAPIs", "flexAPIs", "flexAPIsController");
        kony.mvc.registry.add("frmHome", "frmHome", "frmHomeController");
        kony.mvc.registry.add("frmKnwldgFrmwrk", "frmKnwldgFrmwrk", "frmKnwldgFrmwrkController");
        kony.mvc.registry.add("frmLogin", "frmLogin", "frmLoginController");
        kony.application.setCheckBoxSelectionImageAlignment(constants.CHECKBOX_SELECTION_IMAGE_ALIGNMENT_RIGHT);
        kony.application.setDefaultTextboxPadding(false);
        kony.application.setRespectImageSizeForImageWidgetAlignment(true);
        setAppBehaviors();
    },
    postAppInitCallBack: function(eventObj) {},
    appmenuseq: function() {
        new kony.mvc.Navigation("frmLogin").navigate();
    }
});