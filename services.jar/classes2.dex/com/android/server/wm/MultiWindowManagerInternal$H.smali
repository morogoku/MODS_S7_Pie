.class final Lcom/android/server/wm/MultiWindowManagerInternal$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final MULTIWINDOW_DISMISS_GUIDE_WINDOW:I = 0x12e

.field public static final MULTIWINDOW_DISMISS_GUIDE_WINDOW_DURATION:I = 0x3e8

.field public static final MULTIWINDOW_ENSURE_DOCKED_DEFERRED_ANIMATION_DURATION:I = 0x3e8

.field public static final MULTIWINDOW_ENSURE_DOCKED_DEFERRED_ANIMATION_TIMEOUT:I = 0xce

.field public static final MULTIWINDOW_ENSURE_DOCKED_RESIZE:I = 0xc9

.field public static final MULTIWINDOW_MOVE_FREEFORM_TASK:I = 0x65

.field public static final MULTIWINDOW_SHOW_GUIDE_WINDOW:I = 0x12d

.field public static final NOTIFY_LID_STATE_CHANGED:I = 0xcf

.field public static final NOTIFY_SIDE_SCREEN_DOCK_SIDE_CHANGED:I = 0xcd

.field public static final NOTIFY_SIDE_SCREEN_MENU_VISIBILITY_CHANGED:I = 0xca

.field public static final NOTIFY_SIDE_SCREEN_TASK_SWITCHED:I = 0xcb

.field public static final SWAP_WINDOWING_MODE:I = 0xcc


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_b0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_c2

    packed-switch v0, :pswitch_data_d4

    goto/16 :goto_c0

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    # getter for: Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformWindowController;
    invoke-static {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->access$100(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformWindowController;

    move-result-object v0

    const-string/jumbo v1, "tap_outside"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformWindowController;->dismissGuideWindow(Ljava/lang/String;)V

    goto/16 :goto_c0

    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/Task;

    if-nez v0, :cond_25

    return-void

    :cond_25
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    # getter for: Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformWindowController;
    invoke-static {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->access$100(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformWindowController;

    move-result-object v2

    const-string/jumbo v3, "tap_outside"

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/wm/FreeformWindowController;->showGuideWindow(Landroid/graphics/Rect;Ljava/lang/String;Landroid/view/Display;)V

    goto/16 :goto_c0

    :pswitch_43
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_49

    move v1, v2

    nop

    :cond_49
    move v0, v1

    :try_start_4a
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyLidStateChanged(Z)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_51} :catch_53

    goto/16 :goto_c0

    :catch_53
    move-exception v1

    goto/16 :goto_c0

    :pswitch_56
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    # getter for: Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->access$000(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    goto/16 :goto_c0

    :pswitch_63
    iget v0, p1, Landroid/os/Message;->arg1:I

    :try_start_65
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifySideScreenDockSideChanged(I)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6c} :catch_6d

    goto :goto_6e

    :catch_6d
    move-exception v1

    :goto_6e
    goto :goto_c0

    :pswitch_6f
    :try_start_6f
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->swapWindowingMode(II)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_7a} :catch_7b

    goto :goto_c0

    :catch_7b
    move-exception v0

    goto :goto_c0

    :pswitch_7d
    iget v0, p1, Landroid/os/Message;->arg1:I

    :try_start_7f
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifySideScreenTaskSwitched(I)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_86} :catch_87

    goto :goto_88

    :catch_87
    move-exception v1

    :goto_88
    goto :goto_c0

    :pswitch_89
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_91

    move v1, v2

    nop

    :cond_91
    :try_start_91
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifySideScreenMenuVisibilityChanged(IZ)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v2

    :goto_9a
    goto :goto_c0

    :pswitch_9b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_a1

    move v1, v2

    nop

    :cond_a1
    move v0, v1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    :try_start_a6
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->ensureDockedResize(Landroid/graphics/Rect;Z)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_ad} :catch_ae

    goto :goto_af

    :catch_ae
    move-exception v2

    :goto_af
    goto :goto_c0

    :cond_b0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    :try_start_b6
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startFreeformAtCornerGesture(ILandroid/graphics/Rect;)V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_bd} :catch_be

    goto :goto_bf

    :catch_be
    move-exception v2

    :goto_bf
    nop

    :goto_c0
    return-void

    nop

    :pswitch_data_c2
    .packed-switch 0xc9
        :pswitch_9b
        :pswitch_89
        :pswitch_7d
        :pswitch_6f
        :pswitch_63
        :pswitch_56
        :pswitch_43
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x12d
        :pswitch_1e
        :pswitch_10
    .end packed-switch
.end method
