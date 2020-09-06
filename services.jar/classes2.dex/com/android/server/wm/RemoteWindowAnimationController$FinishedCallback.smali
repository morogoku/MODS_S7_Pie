.class final Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;
.super Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback$Stub;
.source "RemoteWindowAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteWindowAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FinishedCallback"
.end annotation


# instance fields
.field mOuter:Lcom/android/server/wm/RemoteWindowAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RemoteWindowAnimationController;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteWindowAnimationController;

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_20

    :cond_8
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] app-onAnimationFinished(): mOuter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteWindowAnimationController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_24
    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteWindowAnimationController;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteWindowAnimationController;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z
    invoke-static {v2, v3}, Lcom/android/server/wm/RemoteWindowAnimationController;->access$302(Lcom/android/server/wm/RemoteWindowAnimationController;Z)Z

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteWindowAnimationController;

    # invokes: Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V
    invoke-static {v2}, Lcom/android/server/wm/RemoteWindowAnimationController;->access$400(Lcom/android/server/wm/RemoteWindowAnimationController;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteWindowAnimationController;
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_3b

    :cond_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method release()V
    .registers 4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2d

    :cond_8
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] app-release(): mOuter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteWindowAnimationController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteWindowAnimationController;

    return-void
.end method
