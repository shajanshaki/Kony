define("datacontainer", function() {
    return function(controller) {
        var datacontainer = new kony.ui.FlexContainer({
            "autogrowMode": kony.flex.AUTOGROW_NONE,
            "clipBounds": true,
            "height": "18%",
            "id": "datacontainer",
            "isVisible": true,
            "layoutType": kony.flex.FREE_FORM,
            "masterType": constants.MASTER_TYPE_USERWIDGET,
            "skin": "seperatorskin0ca20c2cc12064a"
        }, {}, {});
        datacontainer.setDefaultUnit(kony.flex.DP);
        var empname = new kony.ui.Label({
            "id": "empname",
            "isVisible": true,
            "left": "33%",
            "skin": "generalskin0ifab6599589e4a",
            "text": "Acker,clara",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "20%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var designation = new kony.ui.Label({
            "id": "designation",
            "isVisible": true,
            "left": "33%",
            "skin": "sknDesignationTemp0b58503e4e1bf42",
            "text": "Designation",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "46%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        var department = new kony.ui.Label({
            "id": "department",
            "isVisible": true,
            "left": "33.26%",
            "skin": "sknDepartmentTemp0ac96fb69bdf74e",
            "text": "Department",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "69%",
            "width": kony.flex.USE_PREFFERED_SIZE,
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
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
            "skin": "sknTransparent0i6a22705953f48",
            "width": "67%",
            "zIndex": 2
        }, {}, {});
        colorflx.setDefaultUnit(kony.flex.DP);
        var lblChild = new kony.ui.Label({
            "height": "100%",
            "id": "lblChild",
            "isVisible": true,
            "left": "0%",
            "skin": "sknLblColor0eda21b8648854f",
            "text": "lbl",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "0%",
            "width": "100%",
            "zIndex": 1
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
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
            "skin": "sknFlxImageHolder0jc0d3b05491c4f",
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
            "skin": "CopyslImage0ae3244aaa22741",
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
            "skin": "sknFlxRoundNoBorder0a30ff02dc81247",
            "width": "13dp",
            "zIndex": 2
        }, {}, {});
        flxOnline.setDefaultUnit(kony.flex.DP);
        var lblInvisible = new kony.ui.Label({
            "height": "100%",
            "id": "lblInvisible",
            "isVisible": true,
            "left": "0%",
            "skin": "sknLblOnline0dafce9087ce64d",
            "text": "a",
            "textStyle": {
                "letterSpacing": 0,
                "strikeThrough": false
            },
            "top": "0%",
            "width": "100%",
            "zIndex": 2
        }, {
            "contentAlignment": constants.CONTENT_ALIGN_MIDDLE_LEFT,
            "padding": [0, 0, 0, 0],
            "paddingInPixel": false
        }, {
            "textCopyable": false
        });
        flxOnline.add(lblInvisible);
        datacontainer.add(empname, designation, department, colorflx, flxImageHolder, flxOnline);
        return datacontainer;
    }
})