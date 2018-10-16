define("flexAPIs", function() {
    return function(controller) {
        var flexAPIs = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_HEIGHT,
            "clipBounds": true,
            "id": "flexAPIs",
            "isVisible": true,
            "layoutType": kony.flex.FLOW_VERTICAL,
            "skin": "CopyslFbox0ea57cd28509644"
        }, {}, {});
        flexAPIs.setDefaultUnit(kony.flex.DP);
        var flexFreeAPI = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_HEIGHT,
            "clipBounds": true,
            "id": "flexFreeAPI",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyslFbox0ea57cd28509644",
            "top": "0dp",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flexFreeAPI.setDefaultUnit(kony.flex.DP);
        var lblNameOfAPI = new kony.ui.Label({
            "id": "lblNameOfAPI",
            "isVisible": true,
            "left": "4%",
            "skin": "CopyslLabel0e602890c73ed49",
            "text": "Label",
            "top": "12dp",
            "width": "80%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        var imgLeftAPI = new kony.ui.Image2({
            "height": "20dp",
            "id": "imgLeftAPI",
            "isVisible": true,
            "right": "4%",
            "skin": "CopyslImage0b7c894e09bb043",
            "src": "chevron.png",
            "top": "12dp",
            "width": "20dp",
            "zIndex": 1
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_MAINTAIN_ASPECT_RATIO,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flexFreeAPI.add(lblNameOfAPI, imgLeftAPI);
        var lblDummy = new kony.ui.Label({
            "height": "1dp",
            "id": "lblDummy",
            "isVisible": true,
            "left": "0%",
            "skin": "CopyslLabel0cb7a56c300c143",
            "top": "12dp",
            "width": "100%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        flexAPIs.add(flexFreeAPI, lblDummy);
        return flexAPIs;
    }
})