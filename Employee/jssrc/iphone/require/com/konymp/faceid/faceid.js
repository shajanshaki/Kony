define(function() {
    return function(controller) {
        var faceid = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "isMaster": true,
            "height": "8%",
            "id": "faceid",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0dp",
            "postShow": controller.AS_FlexContainer_e37cad2a43704ce5a43db0cab1f2db84,
            "skin": "slFbox",
            "top": "0dp",
            "width": "59.38%"
        }, {}, {});
        faceid.setDefaultUnit(kony.flex.DP);
        var btnSignIn = new kony.ui.Button({
            "centerX": "50%",
            "centerY": "50%",
            "height": "100%",
            "id": "btnSignIn",
            "isVisible": true,
            "left": "75dp",
            "onClick": controller.AS_Button_d8f506fe8d3443a28c00f0da1c53cd09,
            "skin": "CopykonympGemaltoSknBtn1",
            "text": "Sign in with Face-ID",
            "top": "56%",
            "width": "100%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_CENTER,
            "displayText": true,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "showProgressIndicator": true
        });
        faceid.add(btnSignIn);
        return faceid;
    }
})