function AS_UWI_cc3b379ada4b4708b375128acc80c702(eventobject) {
    this.view.listdetail.filterAndSetData(this.view.filterMenu.getSelectedValues());
    this.view.flxCover.isVisible = false;
    this.animation(1, 1, "0%", true);
    this.view.filterMenu.left = "100%";
    this.view.forceLayout();
}