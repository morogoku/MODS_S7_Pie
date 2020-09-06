.class Lcom/android/server/desktopmode/DisplayPortStateManager$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DisplayPortStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DisplayPortStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DisplayPortStateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method onDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$000(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mDesktopModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$500(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v1

    if-eq v1, p2, :cond_4f

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # setter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mDesktopModeEnabled:Z
    invoke-static {v1, p2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$502(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mDesktopModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$500(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V
    invoke-static {v1, v2, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    goto :goto_4f

    :cond_29
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayConnected:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$700(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V
    invoke-static {v1, v3, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    goto :goto_4f

    :cond_37
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiModeEnabled:Z
    invoke-static {v4}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$100(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v4

    if-nez v4, :cond_4c

    iget-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z
    invoke-static {v4}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$300(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto :goto_4c

    :cond_4a
    move v2, v3

    nop

    :cond_4c
    :goto_4c
    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    :cond_4f
    :goto_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_51

    throw v1
.end method

.method onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->isExternalDisplayConnected(Lcom/android/server/desktopmode/State;)Z
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$800(Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/State;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$000(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayConnected:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$700(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-eq v2, v0, :cond_44

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # setter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayConnected:Z
    invoke-static {v2, v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$702(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayConnected:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$700(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mDesktopModeEnabled:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$500(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiModeEnabled:Z
    invoke-static {v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$100(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_40

    iget-object v3, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z
    invoke-static {v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$300(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_40

    :cond_3e
    move v3, v4

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v3, 0x1

    :goto_41
    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V
    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    :cond_44
    monitor-exit v1

    return-void

    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_46

    throw v2
.end method

.method onUserChanged(Lcom/android/server/desktopmode/State;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$000(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->isHdmiModeEnabled()Z
    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$200(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    # setter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiModeEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$102(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->isHdmiAutoEnterEnabled()Z
    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$400(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    # setter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$302(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->isDesktopModeEnabled(Lcom/android/server/desktopmode/State;)Z
    invoke-static {v2, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$600(Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/State;)Z

    move-result v2

    # setter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mDesktopModeEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$502(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->isExternalDisplayConnected(Lcom/android/server/desktopmode/State;)Z
    invoke-static {v2, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$800(Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/State;)Z

    move-result v2

    # setter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$702(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiModeEnabled:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$100(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    # getter for: Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$300(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_49

    :cond_47
    move v2, v3

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v2, 0x1

    :goto_4a
    # invokes: Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4f

    throw v1
.end method
