.class Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;
.super Landroid/os/Handler;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DualModeChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_4c

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    if-eqz v0, :cond_4c

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1a

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mStateListener unregistered"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;
    invoke-static {v1}, Lcom/android/server/desktopmode/DualModeChanger;->access$1000(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->access$1002(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;)Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    goto :goto_4c

    :pswitch_2e
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->handleStopLoadingScreen(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DualModeChanger;->access$900(Lcom/android/server/desktopmode/DualModeChanger;ZI)V

    goto :goto_4c

    :pswitch_3e
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->handleStartLoadingScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->access$800(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    nop

    :cond_4c
    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_2e
        :pswitch_6
    .end packed-switch
.end method
