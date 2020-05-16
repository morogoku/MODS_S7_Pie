.class Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SideScreenMenuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->hide()V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->showDim(Z)V

    const/4 v0, 0x1

    return v0
.end method
