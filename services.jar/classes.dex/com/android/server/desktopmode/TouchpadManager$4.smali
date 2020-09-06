.class Lcom/android/server/desktopmode/TouchpadManager$4;
.super Ljava/lang/Object;
.source "TouchpadManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .registers 7

    if-eqz p2, :cond_13

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    if-eq p2, v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_21

    if-nez v1, :cond_6c

    :cond_21
    const/16 v2, 0x4002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-nez v2, :cond_38

    if-eqz v0, :cond_6c

    const-string/jumbo v2, "sec_e-pen-pad"

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    :cond_38
    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/TouchpadManager;->access$202(Lcom/android/server/desktopmode/TouchpadManager;Z)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # invokes: Lcom/android/server/desktopmode/TouchpadManager;->updateSPenState()V
    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$300(Lcom/android/server/desktopmode/TouchpadManager;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mIsInitialSPenDetected:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$700(Lcom/android/server/desktopmode/TouchpadManager;)Z

    move-result v2

    if-nez v2, :cond_6c

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    if-nez v2, :cond_6c

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$800(Lcom/android/server/desktopmode/TouchpadManager;)Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # invokes: Lcom/android/server/desktopmode/TouchpadManager;->updateInitialSPenSetting()V
    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$900(Lcom/android/server/desktopmode/TouchpadManager;)V

    :cond_6c
    return-void
.end method
