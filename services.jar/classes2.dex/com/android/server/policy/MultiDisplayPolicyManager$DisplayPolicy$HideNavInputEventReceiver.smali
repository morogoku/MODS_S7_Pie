.class final Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MultiDisplayPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_7e

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7e

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7e

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v3}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_83

    :try_start_26
    iget-object v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v4, :cond_31

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_7b

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_31
    :try_start_31
    iget-object v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget v4, v4, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v4, v4, 0x2

    or-int/lit8 v4, v4, 0x1

    or-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget v5, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    if-eq v5, v4, :cond_46

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iput v4, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    const/4 v2, 0x1

    :cond_46
    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget v5, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    or-int/lit8 v4, v5, 0x2

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget v5, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    if-eq v5, v4, :cond_6a

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iput v4, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget-object v5, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v5}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget-object v6, v6, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_31 .. :try_end_6b} :catchall_7b

    if-eqz v2, :cond_7e

    :try_start_6d
    iget-object v3, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    iget-object v3, v3, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    iget-object v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget v4, v4, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-interface {v3, v4}, Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;->reevaluateStatusBarVisibility(I)V
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_83

    goto :goto_7e

    :catchall_7b
    move-exception v4

    :try_start_7c
    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v4
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_83

    :cond_7e
    :goto_7e
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :catchall_83
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
