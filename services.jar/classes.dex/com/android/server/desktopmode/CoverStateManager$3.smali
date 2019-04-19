.class Lcom/android/server/desktopmode/CoverStateManager$3;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "CoverStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDockStateChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$100(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$700(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    # setter for: Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/CoverStateManager;->access$702(Lcom/android/server/desktopmode/CoverStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # invokes: Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z
    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$400(Lcom/android/server/desktopmode/CoverStateManager;)Z

    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method onDualModeStartLoadingScreen(Z)V
    .registers 2

    return-void
.end method

.method onDualModeStopLoadingScreen(Z)V
    .registers 2

    return-void
.end method
