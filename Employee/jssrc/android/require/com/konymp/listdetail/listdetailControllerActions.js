define({
    /*
      This is an auto generated file and any modifications to it may result in corruption of the action sequence.
    */
    /** onClick defined for btnBack **/
    AS_Button_e7c6da3955f84592aad0fe2375f3cc8d: function AS_Button_e7c6da3955f84592aad0fe2375f3cc8d(eventobject) {
        var self = this;
        this._segClickFlag = 0;
        this.navigateFlex(this, "100%");
        this.reanimateTheWidgetsInDetailsPage();
        this.view.forceLayout();
    },
    /** onClick defined for flxDetailsHeader **/
    AS_FlexContainer_918331803abc4fa2bc7bfb5944dd3a31: function AS_FlexContainer_918331803abc4fa2bc7bfb5944dd3a31(eventobject) {
        var self = this;
        //alert();
    },
    /** onClick defined for flxMobileImageHolder **/
    AS_FlexContainer_668207832d27444987f3796ee9879eb1: function AS_FlexContainer_668207832d27444987f3796ee9879eb1(eventobject) {
        var self = this;
        this.onClickOfCallFlex(this.view.lblCallMobileValue.text);
    },
    /** onClick defined for flxWorkImageHolder **/
    AS_FlexContainer_b5521cf6da13495c91d2af5370932a69: function AS_FlexContainer_b5521cf6da13495c91d2af5370932a69(eventobject) {
        var self = this;
        this.onClickOfCallFlex(this.view.lblCallWorkValue.text);
    },
    /** onClick defined for flxEmailHolder **/
    AS_FlexContainer_2faabc33588c4ba1bfa734fbd2beefc3: function AS_FlexContainer_2faabc33588c4ba1bfa734fbd2beefc3(eventobject) {
        var self = this;
        this.onClickOfEmailFlex();
    },
    /** onRowClick defined for segEmployees **/
    AS_Segment_2c647dc91a8c48f492d5bc478fc748b5: function AS_Segment_2c647dc91a8c48f492d5bc478fc748b5(eventobject, sectionNumber, rowNumber) {
        var self = this;
        if (this._segClickFlag == 0) {
            this._segClickFlag = 1;
            this.navigateFlex(this, "0%");
            this.setGestureForScrollingAnimationInDetailsPage();
            this.view.forceLayout();
        }
    },
    /** onTouchMove defined for segEmployees **/
    AS_Segment_0b026fa0a4534f8ebfff62d7c926d6d8: function AS_Segment_0b026fa0a4534f8ebfff62d7c926d6d8(eventobject, x, y) {
        var self = this;
        this.getScrolledSection();
    },
    /** onTouchEnd defined for segEmployees **/
    AS_Segment_520dca4068354cff81164302d4b2d4a8: function AS_Segment_520dca4068354cff81164302d4b2d4a8(eventobject, x, y) {
        var self = this;
        this.getScrolledSection();
    },
    /** onClick defined for A **/
    AS_Button_c4046cdee6bb41c6a4709931c3cee176: function AS_Button_c4046cdee6bb41c6a4709931c3cee176(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.A);
    },
    /** onClick defined for B **/
    AS_Button_aab1a451e5b04412a2d0e744beb014ee: function AS_Button_aab1a451e5b04412a2d0e744beb014ee(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.B);
    },
    /** onClick defined for C **/
    AS_Button_05e3d2b7814d48a79d00b09f2d6694ca: function AS_Button_05e3d2b7814d48a79d00b09f2d6694ca(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.C);
    },
    /** onClick defined for D **/
    AS_Button_eaecaed3b3a24c6a9525db09ce2f3e97: function AS_Button_eaecaed3b3a24c6a9525db09ce2f3e97(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.D);
    },
    /** onClick defined for E **/
    AS_Button_fc99f97136c747aaa3da42ff3e1e70fe: function AS_Button_fc99f97136c747aaa3da42ff3e1e70fe(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.E);
    },
    /** onClick defined for F **/
    AS_Button_1a77b7c4b568437596d019124d2a4a11: function AS_Button_1a77b7c4b568437596d019124d2a4a11(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.F);
    },
    /** onClick defined for G **/
    AS_Button_de3f0988ab71426eb09e0d06ee1325f2: function AS_Button_de3f0988ab71426eb09e0d06ee1325f2(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.G);
    },
    /** onClick defined for H **/
    AS_Button_84a737e36fc7420a85c1e6982fc92e44: function AS_Button_84a737e36fc7420a85c1e6982fc92e44(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.H);
    },
    /** onClick defined for I **/
    AS_Button_e319da67e7f94d44b0874ec24c5ae0df: function AS_Button_e319da67e7f94d44b0874ec24c5ae0df(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.I);
    },
    /** onClick defined for J **/
    AS_Button_71b60205e2c34283975037efb1402f9e: function AS_Button_71b60205e2c34283975037efb1402f9e(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.J);
    },
    /** onClick defined for K **/
    AS_Button_c30f4619ea2b4bd78011ffb2107eb44d: function AS_Button_c30f4619ea2b4bd78011ffb2107eb44d(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.K);
    },
    /** onClick defined for L **/
    AS_Button_b3bb6ca5334249d78034b49ad4702df8: function AS_Button_b3bb6ca5334249d78034b49ad4702df8(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.L);
    },
    /** onClick defined for M **/
    AS_Button_2f2311ab56df4bcb90255411cc653ba8: function AS_Button_2f2311ab56df4bcb90255411cc653ba8(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.M);
    },
    /** onClick defined for N **/
    AS_Button_abe8a6b60e6d47dead155726629179e4: function AS_Button_abe8a6b60e6d47dead155726629179e4(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.N);
    },
    /** onClick defined for O **/
    AS_Button_bca33914a94f492198f28411809e6a9a: function AS_Button_bca33914a94f492198f28411809e6a9a(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.O);
    },
    /** onClick defined for P **/
    AS_Button_77f46cb005ed4dbb8cb337e83a43f5db: function AS_Button_77f46cb005ed4dbb8cb337e83a43f5db(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.P);
    },
    /** onClick defined for Q **/
    AS_Button_7e801a3b39f14475b72769720f496d53: function AS_Button_7e801a3b39f14475b72769720f496d53(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.Q);
    },
    /** onClick defined for R **/
    AS_Button_d92efd30bda54b40b720aadde921b0cc: function AS_Button_d92efd30bda54b40b720aadde921b0cc(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.R);
    },
    /** onClick defined for S **/
    AS_Button_e99cc2125cb84ba2817d681aad3873d2: function AS_Button_e99cc2125cb84ba2817d681aad3873d2(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.S);
    },
    /** onClick defined for T **/
    AS_Button_09373b4f8c2d43aea459b189ed969cdb: function AS_Button_09373b4f8c2d43aea459b189ed969cdb(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.T);
    },
    /** onClick defined for U **/
    AS_Button_798db0fe42af4203a1ad86e692259f6b: function AS_Button_798db0fe42af4203a1ad86e692259f6b(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.U);
    },
    /** onClick defined for V **/
    AS_Button_1d93df67a5d94b35977702d0c04f9758: function AS_Button_1d93df67a5d94b35977702d0c04f9758(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.V);
    },
    /** onClick defined for W **/
    AS_Button_525aba9456de4505973f394a39ebe06f: function AS_Button_525aba9456de4505973f394a39ebe06f(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.W);
    },
    /** onClick defined for X **/
    AS_Button_56bce2b0968447ffa10fc6d2747d3351: function AS_Button_56bce2b0968447ffa10fc6d2747d3351(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.X);
    },
    /** onClick defined for Y **/
    AS_Button_5f242315a6ef476180b35b34b1e00ad3: function AS_Button_5f242315a6ef476180b35b34b1e00ad3(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.Y);
    },
    /** onClick defined for Z **/
    AS_Button_3cd77a1100314541ad805838547a1543: function AS_Button_3cd77a1100314541ad805838547a1543(eventobject) {
        var self = this;
        this.scrollSegmentToSelectedAlphabetIndex(this.view.Z);
    },
    /** onTouchMove defined for flxDictionary **/
    AS_FlexContainer_206fcc7464da49088ad95efc8b86f01a: function AS_FlexContainer_206fcc7464da49088ad95efc8b86f01a(eventobject, x, y) {
        var self = this;
        this.onTouchScrollMove(eventobject, x, y);
    },
    /** onTouchEnd defined for flxDictionary **/
    AS_FlexContainer_8a08480b463645c9976a3cf8b52d2830: function AS_FlexContainer_8a08480b463645c9976a3cf8b52d2830(eventobject, x, y) {
        var self = this;
        this.view.lblDisplaySelectedIndex.isVisible = false;
        this.view.forceLayout();
    },
    /** onTextChange defined for tbxSearch **/
    AS_TextField_68538350dddf4b84858169d53c7c712b: function AS_TextField_68538350dddf4b84858169d53c7c712b(eventobject, changedtext) {
        var self = this;
        this.onTextChangeAndDoneOfTbxSearch();
    },
    /** onDone defined for tbxSearch **/
    AS_TextField_d065307b94eb42c896ba5c0c28fe41e0: function AS_TextField_d065307b94eb42c896ba5c0c28fe41e0(eventobject, changedtext) {
        var self = this;
        this.onTextChangeAndDoneOfTbxSearch();
    },
    /** onTouchStart defined for tbxSearch **/
    AS_TextField_9ef81eb53ed94399aa42f7e23ab4e5bc: function AS_TextField_9ef81eb53ed94399aa42f7e23ab4e5bc(eventobject, x, y) {
        var self = this;
        this.onTouchStartOfTbxSearch();
    },
    /** onClick defined for btnSearchCancel **/
    AS_Button_8ae0f72c524545b4826442596050e810: function AS_Button_8ae0f72c524545b4826442596050e810(eventobject) {
        var self = this;
        this.onClickOfBtnCancelSearch();
    },
    /** onClick defined for Button0d439f2bf78564e **/
    AS_Button_de58ae5756604aa6af84213711d7af77: function AS_Button_de58ae5756604aa6af84213711d7af77(eventobject) {
        var self = this;
        var nav = new kony.mvc.Navigation("frmKnwldgFrmwrk");
        nav.navigate();
    },
    /** preShow defined for listdetail **/
    AS_FlexContainer_25ea44184b88449db14f0d58103619d6: function AS_FlexContainer_25ea44184b88449db14f0d58103619d6(eventobject) {
        var self = this;
        this.view.segEmployees.setData([]);
    },
    /** postShow defined for listdetail **/
    AS_FlexContainer_a1e7bbf392ee418b959ed91b8dd56eb4: function AS_FlexContainer_a1e7bbf392ee418b959ed91b8dd56eb4(eventobject) {
        var self = this;
        this.fetchAllDetails();
    }
});