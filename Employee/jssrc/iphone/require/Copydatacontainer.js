define("Copydatacontainer", function() {
    return function(controller) {
        var Copydatacontainer = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "18%",
            "id": "Copydatacontainer",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "masterType": constants.MASTER_TYPE_USERWIDGET,
            "skin": "Copyseperatorskin1"
        }, {}, {});
        Copydatacontainer.setDefaultUnit(kony.flex.DP);
        var empname = new kony.ui.Label({
            "id": "empname",
            "isVisible": true,
            "left": "33%",
            "skin": "Copygeneralskin1",
            "text": "Acker,clara",
            "top": "20%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        var designation = new kony.ui.Label({
            "id": "designation",
            "isVisible": true,
            "left": "33%",
            "skin": "CopysknDesignationTemp1",
            "text": "Designation",
            "top": "46%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        var department = new kony.ui.Label({
            "id": "department",
            "isVisible": true,
            "left": "33.26%",
            "skin": "CopysknDepartmentTemp1",
            "text": "Department",
            "top": "69%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        var colorflx = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "bottom": "0%",
            "clipBounds": true,
            "height": "1%",
            "id": "colorflx",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "left": "33%",
            "masterType": constants.MASTER_TYPE_USERWIDGET,
            "skin": "CopysknTransparent1",
            "width": "67%",
            "zIndex": 2
        }, {}, {});
        colorflx.setDefaultUnit(kony.flex.DP);
        var lblChild = new kony.ui.Label({
            "height": "100%",
            "id": "lblChild",
            "isVisible": true,
            "left": "0%",
            "skin": "CopysknLblColor1",
            "text": "lbl",
            "top": "0%",
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
        colorflx.add(lblChild);
        var flxImageHolder = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "50dp",
            "centerY": "50%",
            "clipBounds": true,
            "height": "54dp",
            "id": "flxImageHolder",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "masterType": constants.MASTER_TYPE_USERWIDGET,
            "skin": "CopysknFlxImageHolder1",
            "width": "54dp",
            "zIndex": 2
        }, {}, {});
        flxImageHolder.setDefaultUnit(kony.flex.DP);
        var empimage = new kony.ui.Image2({
            "centerX": "50%",
            "centerY": "50%",
            "height": "100%",
            "id": "empimage",
            "isVisible": true,
            "skin": "CopyCopyslImage018beadf1b9c84d",
            "src": "user_profile2.png",
            "width": "100%"
        }, {
            "imageScaleMode": constants.IMAGE_SCALE_MODE_FIT_TO_DIMENSIONS,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {});
        flxImageHolder.add(empimage);
        var flxOnline = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "centerX": "70dp",
            "centerY": "71%",
            "clipBounds": true,
            "height": "13dp",
            "id": "flxOnline",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "masterType": constants.MASTER_TYPE_USERWIDGET,
            "skin": "CopysknFlxRoundNoBorder3",
            "width": "13dp",
            "zIndex": 2
        }, {}, {});
        flxOnline.setDefaultUnit(kony.flex.DP);
        var lblInvisible = new kony.ui.Label({
            "height": "100%",
            "id": "lblInvisible",
            "isVisible": true,
            "left": "0%",
            "skin": "CopysknLblOnline1",
            "text": "a",
            "top": "0%",
            "width": "100%",
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false,
            "wrapping": constants.WIDGET_TEXT_WORD_WRAP
        });
        flxOnline.add(lblInvisible);
        Copydatacontainer.add(empname, designation, department, colorflx, flxImageHolder, flxOnline);
        return Copydatacontainer;
    }
})