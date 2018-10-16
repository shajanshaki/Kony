define({
    checkFaceIdEnabledandShow: function() {
        //       	var faceIdEnabled = kony.store.getItem("FACEID_ENABLED");
        //       	if(faceIdEnabled===true){
        //           	this.view.faceid.isVisible = true;
        //           	//this.view.forceLayout();
        //         }
    },
    loginSuccess: function() {
        //       	var faceIdEnabled = kony.store.getItem("FACEID_ENABLED");
        //       		if(faceIdEnabled===false || faceIdEnabled===null || faceIdEnabled===undefined){
        //              	this.view.flxCustomAlert.left = "0%";
        //               	//this.view.forceLayout();
        //             }else{
        //       			this.navigateToHome();
        //             }
    },
    navigateToHome: function() {
        //       var ntf = new kony.mvc.Navigation("frmHome");
        //       ntf.navigate(); 
    },
    enableFaceIdLoginYesOnClick: function() {
        //       	this.view.faceid.enroll();
    },
    faceIdEnrollSuccess: function() {
        //       	kony.store.setItem("FACEID_ENABLED",true);
        //       	this.navigateToHome();
    },
    enableFaceIdLoginNoOnClick: function() {
        //       		kony.store.setItem("FACEID_ENABLED", false);
        //       		this.navigateToHome();
    }
});