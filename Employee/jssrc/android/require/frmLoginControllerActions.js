define({
    /*
      This is an auto generated file and any modifications to it may result in corruption of the action sequence.
    */
    /** loginSuccessEvent defined for login **/
    AS_UWI_j2b831cb0d5643479046b2b3a6950329: function AS_UWI_j2b831cb0d5643479046b2b3a6950329(response) {
        var self = this;
        var ntf = new kony.mvc.Navigation("frmHome");
        ntf.navigate();
    },
    /** onClick defined for btnAlertNO **/
    AS_Button_ee9315ce12f44c888fd19bada586ea59: function AS_Button_ee9315ce12f44c888fd19bada586ea59(eventobject) {
        var self = this;
        this.enableFaceIdLoginNoOnClick();
    },
    /** onClick defined for btnAlertYES **/
    AS_Button_b069b0d974ed43a7bf71f6e551a43943: function AS_Button_b069b0d974ed43a7bf71f6e551a43943(eventobject) {
        var self = this;
        this.enableFaceIdLoginYesOnClick();
    }
});