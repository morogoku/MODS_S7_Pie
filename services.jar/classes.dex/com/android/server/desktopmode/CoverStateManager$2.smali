.class Lcom/android/server/desktopmode/CoverStateManager$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$500(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_keyboard"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    move v0, v1

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$100(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1f
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mKeyboardCoverEnabled:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/CoverStateManager;->access$600(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v2

    if-eq v2, v0, :cond_4e

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_44

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mKeyboardCoverEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # setter for: Lcom/android/server/desktopmode/CoverStateManager;->mKeyboardCoverEnabled:Z
    invoke-static {v2, v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$602(Lcom/android/server/desktopmode/CoverStateManager;Z)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # invokes: Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z
    invoke-static {v2}, Lcom/android/server/desktopmode/CoverStateManager;->access$400(Lcom/android/server/desktopmode/CoverStateManager;)Z

    :cond_4e
    monitor-exit v1

    return-void

    :catchall_50
    move-exception v2

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_1f .. :try_end_52} :catchall_50

    throw v2
.end method
