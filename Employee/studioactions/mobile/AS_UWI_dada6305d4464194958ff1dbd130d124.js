function AS_UWI_dada6305d4464194958ff1dbd130d124(eventobject) {
    this.view.listdetail.filterAndSetData(this.view.filterMenu.getSelectedValues());
    this.view.flxCover.isVisible = false;
    this.animation(1, 1, "0%", true);
    this.view.filterMenu.left = "100%";
    this.view.forceLayout();
}