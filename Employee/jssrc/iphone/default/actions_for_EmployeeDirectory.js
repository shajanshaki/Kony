//actions.js file 
function AS_Button_ca75f5db46e4408db801629d40e18e0a(eventobject) {
    var self = this;
    this.faceIdCancelAction();
}

function AS_Button_de58ae5756604aa6af84213711d7af77(eventobject) {
    var self = this;
    var nav = new kony.mvc.Navigation("frmKnwldgFrmwrk");
    nav.navigate();
}

function AS_Button_df5c1e7270404c36a3f0c5b5e57f3b79(eventobject) {
    var self = this;
    this.navigateFlex(this, "100%");
    this.reanimateTheWidgetsInDetailsPage();
    this.view.forceLayout();
}

function AS_Button_f91a3a8eae824e549e779b00f6fe90de(eventobject) {
    var self = this;
    this.faceIdEnableAction();
}

function AS_FlexContainer_d7ce472aa0b04378837e98cea2b1cce7(eventobject) {
    var self = this;
    this.onClickOfEmailFlex();
}

function AS_FlexContainer_df57e765a166459cb2e9e67d8f1f14c0(eventobject) {
    var self = this;
    kony.store.setItem("inputType", "social");
    this.invokeIdentityService("EmpDirectryAD");
}

function AS_FlexContainer_e0c3f52569d347ed857e7070f5a6177f(eventobject) {
    var self = this;
    this.onClickOfCallFlex(this.view.lblCallWorkValue.text);
}

function AS_FlexContainer_e4e858da869147289e400d81a4bf0a3c(eventobject) {
    var self = this;
    this.view.faceid.verify();
}

function AS_FlexContainer_f11375a8d3c74929807a3efee59ccb1b(eventobject) {
    var self = this;
    //alert();
}

function AS_FlexContainer_g7fc253933484d28a344db1af1f68c0e(eventobject) {
    var self = this;
    this.onClickOfCallFlex(this.view.lblCallMobileValue.text);
}

function AS_FlexContainer_i7ffa13263b341b2aa0d80216aef04e8(eventobject) {
    var self = this;
    kony.application.showLoadingScreen(null, "Loading...", constants.LOADING_SCREEN_POSITION_ONLY_CENTER, false, true, {});
}

function AS_UWI_a77c4873e0c7414b86ab7bc0e3f6ef8e(error) {
    var self = this;
    alert("onUnENroll Failed");
}

function AS_UWI_a9f4d76ba0ac45859af4b8bf79f0c60e(error) {
    var self = this;
    alert("onUnEnroll Failure");
}

function AS_UWI_aaf3d0076a6e44db9a4bba9dc77ef999() {
    var self = this;
    this.faceIdInitSuccess();
}

function AS_UWI_b01e4a14fa7746f6bae8d9e71745fb5d(error) {
    var self = this;
    this.faceIdInitFailed();
}

function AS_UWI_b1c16c530a6f45a8bdde68c3294f04c1(error) {
    var self = this;
    this.faceIdInitFailed();
}

function AS_UWI_b2d5e77d601e4f4dad5dfdd9277e283e() {
    var self = this;
    alert("onUnEnroll Success");
}

function AS_UWI_b71ee341057b449db476200d623815e0(error) {
    var self = this;
    this.faceIdInitFailed();
}

function AS_UWI_b74d42d46bda48c7bd7ed5be7f62c23b() {
    var self = this;
    this.faceIdInitSuccess();
}

function AS_UWI_bafdd061265d4c4c963307d0235785e8(error) {
    var self = this;
    this.faceIdEnrollFailure();
}

function AS_UWI_c530f3fd28d94cf09991df44b69a774d() {
    var self = this;
    this.faceIdEnrollSuccess();
}

function AS_UWI_cd2ecd36aeaa40ad9c821f234ebd89bd(error) {
    var self = this;
    Kony.print("Verify Failed");
}

function AS_UWI_d0597689359544be8b59c79f1c1064d7() {
    var self = this;
    this.loginSuccessEvent();
}

function AS_UWI_d5d415779c1745b9b44521dbbf5e6eb5() {
    var self = this;
    this.faceIdEnrollSuccess();
}

function AS_UWI_e5f446ee72a9471d85d464d2aefdf6ec() {
    var self = this;
    this.loginSuccessEvent();
}

function AS_UWI_eb66023a1dbf4ab188f1cf8b26c168f2() {
    var self = this;
    this.faceIdEnrollSuccess();
}

function AS_UWI_edd77b479ac04b5383de64a411ca2652() {
    var self = this;
    alert("onUnEnroll Success");
}

function AS_UWI_f1180c2ac06b442b82e26be11047702d() {
    var self = this;
    alert("onUnEnroll Success");
}

function AS_UWI_fad18299caed48ff88ee7cab577eb008(error) {
    var self = this;
    this.faceIdEnrollFailure();
}

function AS_UWI_g69135d0e55a4405bb168ea57c8ca0e1(error) {
    var self = this;
    alert("onUnEnroll Failure");
}

function AS_UWI_g7b52726bce74c5c81fa9c62c0621b9e() {
    var self = this;
    this.faceIdInitSuccess();
}

function AS_UWI_h2fd06d92f184d04ae5dca1847cd56b7(error) {
    var self = this;
    this.faceIdEnrollFailure();
}

function AS_UWI_i2699c38778a4b86b9754aee1bf419d9(error) {
    var self = this;
    Kony.print("Verify Failed");
}

function AS_UWI_i3aa471522414f4bb7ba8ef207ada068(error) {
    var self = this;
    Kony.print("Verify Failed");
}

function AS_UWI_jcc85f8d9c7942ba829831980d1edc57() {
    var self = this;
    this.loginSuccessEvent();
}