define("CopyflexAPIs", function() {
    return function(controller) {
        var CopyflexAPIs = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_HEIGHT,
            "clipBounds": true,
            "id": "CopyflexAPIs",
            "isVisible": true,
            "layoutType": kony.flex.FLOW_VERTICAL,
            "skin": "CopyslFbox5"
        }, {}, {});
        CopyflexAPIs.setDefaultUnit(kony.flex.DP);
        var flexFreeAPI = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_HEIGHT,
            "clipBounds": true,
            "id": "flexFreeAPI",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "0%",
            "skin": "CopyslFbox5",
            "top": "0dp",
            "width": "100%",
            "zIndex": 1
        }, {}, {});
        flexFreeAPI.setDefaultUnit(kony.flex.DP);
        var lblNameOfAPI = new kony.ui.Label({
            "id": "lblNameOfAPI",
            "isVisible": true,
            "left": "4%",
            "skin": "CopyCopyslLabel4",
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
            "skin": "CopyslImage0d81a3bc6f2ff42",
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
        var lblDummy1 = new kony.ui.Label({
            "height": "1dp",
            "id": "lblDummy1",
            "isVisible": true,
            "left": "0%",
            "skin": "CopyCopyslLabel2",
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
        CopyflexAPIs.add(flexFreeAPI, lblDummy1);
        return CopyflexAPIs;
    }
})