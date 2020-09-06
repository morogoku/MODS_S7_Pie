.class public Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;
.super Ljava/lang/Object;
.source "MultiDisplayPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MultiDisplayPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;
    }
.end annotation


# instance fields
.field mClearHideNavigationFlag:Ljava/lang/Runnable;

.field final mDisplayContext:Landroid/content/Context;

.field mDisplayEnabled:Z

.field final mDisplayId:I

.field mForceClearedSystemUiFlags:I

.field mForceStatusBar:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mHasNavigationBar:Z

.field mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

.field mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

.field mLandscapeRotation:I

.field final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field mLastSystemUiFlags:I

.field mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeight:I

.field mNavigationBarPosition:I

.field final mNonDockedStackBounds:Landroid/graphics/Rect;

.field mOverlappedFreeformWithNaviBar:Z

.field mPortraitRotation:I

.field mResettingSystemUiFlags:I

.field mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mSeascapeRotation:I

.field mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mStatusBarHeight:I

.field mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mUpsideDownRotation:I

.field final synthetic this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/MultiDisplayPolicyManager;Landroid/view/Display;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceStatusBar:Z

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBarHeight:I

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLandscapeRotation:I

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mSeascapeRotation:I

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mPortraitRotation:I

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mUpsideDownRotation:I

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarHeight:I

    iput-boolean v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarCanMove:Z

    iput-boolean v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    iput-boolean v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mOverlappedFreeformWithNaviBar:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBarLayer:I

    iput-boolean v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBar:Z

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {p1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_64

    const/4 v1, 0x1

    nop

    :cond_64
    iput-boolean v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->loadResources()V

    return-void
.end method

.method public static synthetic lambda$getOrCreateInputConsumer$1(Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .registers 4

    new-instance v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;-><init>(Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_d
    const-string v1, "MultiDisplayPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Runnalbe mClearHideNavigationFlag: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    iget-object v1, v1, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    iget v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-interface {v1, v2}, Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;->reevaluateStatusBarVisibility(I)V

    monitor-exit v0

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_36

    throw v1
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mResettingSystemUiFlags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mForceClearedSystemUiFlags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mSystemUiVisibility"

    iget v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNonDockedStackBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mLastNonDockedStackBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method getOrCreateInputConsumer()Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "dex_nav_input_consumer"

    new-instance v3, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$DisplayPolicy$gYkiR5xjb316YtrZJxK6N4Uga0Y;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$DisplayPolicy$gYkiR5xjb316YtrZJxK6N4Uga0Y;-><init>(Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;)V

    iget v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;I)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    :cond_27
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    return-object v0
.end method

.method layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;ZZZZ)Z
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v7, 0x0

    if-nez v6, :cond_12

    return v7

    :cond_12
    iget v6, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget-object v9, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v9}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v9

    iget v10, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_ba

    iget v10, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarHeight:I

    sub-int v10, v8, v10

    iget-object v11, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v11}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v7, v10, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v10, v11, Landroid/graphics/Rect;->bottom:I

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v7, :cond_7f

    const-string v7, "MultiDisplayPolicyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "layoutNavigationBar: transientShowing="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " visible="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " translucent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " allowedHidden="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " expandedNotKeyguard="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " mLastSystemUiFlags="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    if-nez v9, :cond_8a

    if-eqz v2, :cond_84

    goto :goto_8a

    :cond_84
    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7, v5}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_90

    :cond_8a
    :goto_8a
    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :goto_90
    if-eqz v2, :cond_aa

    if-nez v3, :cond_aa

    if-nez v4, :cond_aa

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_aa

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v7

    if-nez v7, :cond_aa

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    :cond_aa
    if-nez v9, :cond_ba

    if-eqz v2, :cond_ba

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v12, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v10, v12, Landroid/graphics/Rect;->bottom:I

    iput v10, v11, Landroid/graphics/Rect;->bottom:I

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    :cond_ba
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v11, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v7}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v7}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    sget-object v13, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v7}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v7}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    sget-object v15, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v7}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    sget-object v16, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v7}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    sget-object v18, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    # getter for: Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v7}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    sget-object v19, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/16 v21, 0x0

    move-object/from16 v17, p3

    move-object/from16 v20, v7

    invoke-interface/range {v11 .. v21}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    move-result v7

    return v7
.end method

.method layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_42

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v15, p3

    invoke-virtual {v15, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v14, p2

    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object/from16 v13, p5

    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/16 v16, 0x0

    move-object v5, v14

    move-object v6, v15

    move-object v7, v13

    move-object v8, v13

    move-object v9, v13

    move-object/from16 v10, p6

    move-object v11, v13

    move-object v12, v13

    move-object v13, v2

    move/from16 v14, v16

    invoke-interface/range {v4 .. v14}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_46

    :cond_42
    move-object/from16 v15, p3

    move-object/from16 v3, p4

    :goto_46
    const/4 v2, 0x0

    return v2
.end method

.method loadResources()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBarHeight:I

    const v1, 0x1050370

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarHeight:I

    return-void
.end method

.method release()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_c
    return-void
.end method

.method removeNavigationBar()V
    .registers 4

    const-string v0, "MultiDisplayPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNavigationBar: d#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/BarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarCanMove:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    return-void
.end method

.method removeStatusBar()V
    .registers 4

    const-string v0, "MultiDisplayPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeStatusBar: d#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayPolicy{#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", SysUiFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayState(Landroid/view/Display;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    return-void
.end method
