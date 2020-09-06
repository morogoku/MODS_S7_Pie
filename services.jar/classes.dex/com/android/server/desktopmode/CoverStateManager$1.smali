.class Lcom/android/server/desktopmode/CoverStateManager$1;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
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

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$100(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_24
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$200(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v2}, Lcom/android/server/desktopmode/CoverStateManager;->access$300(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-ne v1, v2, :cond_48

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_46

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onCoverStateChanged - mCoverManagerDisabled && state.attached == mCoverState.attached"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    monitor-exit v0

    return-void

    :cond_48
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # setter for: Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/CoverStateManager;->access$302(Lcom/android/server/desktopmode/CoverStateManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # invokes: Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z
    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$400(Lcom/android/server/desktopmode/CoverStateManager;)Z

    monitor-exit v0

    return-void

    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_24 .. :try_end_56} :catchall_54

    throw v1
.end method
