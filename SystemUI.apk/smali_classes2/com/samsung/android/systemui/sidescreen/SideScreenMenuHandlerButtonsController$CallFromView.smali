.class Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;
.super Ljava/lang/Object;
.source "SideScreenMenuHandlerButtonsController.java"

# interfaces
.implements Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallFromView"
.end annotation


# instance fields
.field mMenuController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

.field mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;


# virtual methods
.method public applist()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->selected()V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->showSideScreenRecentsActivityInPlace(I)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->selected()V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->dismissSideScreen(I)V

    :cond_0
    return-void
.end method

.method public dock()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->selected()V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMenuController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMenuController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->exitEditMode()V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMenuController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->exitFocusMode()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSideScreenMode(I)V

    :cond_1
    return-void
.end method

.method public isDocked()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public selected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMenuController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMenuController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->showDim(Z)V

    :cond_0
    return-void
.end method

.method public undock()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->selected()V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSideScreenMode(I)V

    :cond_0
    return-void
.end method
