define({
    /*
      This is an auto generated file and any modifications to it may result in corruption of the action sequence.
    */
    /** onClick defined for flxCover **/
    AS_FlexContainer_g8ad215c2f794dd9a6407dae9e8e89f7: function AS_FlexContainer_g8ad215c2f794dd9a6407dae9e8e89f7(eventobject) {
        var self = this;
        this.flxCoverOnClick();
    },
    /** onClick defined for flxShadow **/
    AS_FlexContainer_f5b71ec467db4b13b8071313b76c4aef: function AS_FlexContainer_f5b71ec467db4b13b8071313b76c4aef(eventobject) {
        var self = this;
        this.flxCoverOnClick();
    },
    /** onClickFooter defined for hamburger **/
    AS_UWI_e5d10886c84341f4a574f5d2ad561fe4: function AS_UWI_e5d10886c84341f4a574f5d2ad561fe4(eventobject) {
        var self = this;
        this.resetPosition();
    },
    /** onApplyButtonClick defined for filterMenu **/
    AS_UWI_ee83fff12fa94617b8682b8270f54993: function AS_UWI_ee83fff12fa94617b8682b8270f54993(eventobject) {
        var self = this;
        this.filterApplyClick();
    },
    /** onItemClick defined for filterMenu **/
    AS_UWI_c9c23f0cc52d4f9ba71b76c4cb4402a9: function AS_UWI_c9c23f0cc52d4f9ba71b76c4cb4402a9() {
        var self = this;
        this.view.listdetail.filterAndSetData(this.view.filterMenu.getSelectedValues());
    },
    /** leftMenuClick defined for listdetail **/
    AS_UWI_i21bfeb9bd5846ea989bd4a69d2c451b: function AS_UWI_i21bfeb9bd5846ea989bd4a69d2c451b(eventobject) {
        var self = this;
        this.listMenuClick();
    },
    /** rightMenuClick defined for listdetail **/
    AS_UWI_fb0ae1ffd4de4a96b93e77d8ccba6b8d: function AS_UWI_fb0ae1ffd4de4a96b93e77d8ccba6b8d(eventobject) {
        var self = this;
        this.listFilterClick();
    }
});