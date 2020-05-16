.class public Lcom/android/server/policy/MultiDisplayPolicyManager;
.super Ljava/lang/Object;
.source "MultiDisplayPolicyManager.java"

# interfaces
.implements Lcom/android/server/policy/IMultiDisplayPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;
    }
.end annotation


# static fields
.field static DEBUG_LAYOUT:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiDisplayPolicyManager"

.field static localLOGV:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field volatile mDexKeyguardOccluded:Z

.field mDexKeyguardOccludedChanged:Z

.field mDexPendingKeyguardOccluded:Z

.field final mDisplayIdToPolicy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mFocusCandidates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field mIsGoneTosleepForPOCSubDisplay:Z

.field private mLastDexMode:I

.field mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

.field mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

.field private mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field mWinnerPocSubDisplayMode:I

.field mWinnerPocSubDisplayModeIterator:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->localLOGV:Z

    sput-boolean v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->DEBUG_LAYOUT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mH:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mFocusCandidates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    iput v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayModeIterator:I

    iput-boolean v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mIsGoneTosleepForPOCSubDisplay:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method private static isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_13

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_13

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public static synthetic lambda$onDisplayAdded$0(Lcom/android/server/policy/MultiDisplayPolicyManager;ILandroid/view/Display;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    invoke-direct {v1, p0, p2}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;-><init>(Lcom/android/server/policy/MultiDisplayPolicyManager;Landroid/view/Display;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;->requestLayoutTraversal(I)V

    return-void
.end method

.method public static synthetic lambda$updateSystemUiVisibility$1(Lcom/android/server/policy/MultiDisplayPolicyManager;IIILandroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_53

    const-string v2, "MultiDisplayPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSystemUiVisibility: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, p1

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", visibility=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fullscreenVisibility=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, -0x1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v2, v1

    move v3, p2

    move v4, p3

    move-object/from16 v7, p4

    invoke-interface/range {v2 .. v10}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setSystemUiVisibilityToType(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;I)V

    move/from16 v2, p6

    invoke-interface {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(Z)V

    goto :goto_56

    :cond_53
    move v11, p1

    move/from16 v2, p6

    :goto_56
    return-void
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_27

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    if-eqz v1, :cond_27

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    and-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v1, p1

    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    return v1

    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_138

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    if-eqz v1, :cond_138

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAffectSystemUiFlags()Z

    move-result v1

    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isFullscreenFreeformLw()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2e

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_2e

    move v3, v5

    goto :goto_2f

    :cond_2e
    move v3, v4

    :goto_2f
    sget-boolean v6, Lcom/android/server/policy/MultiDisplayPolicyManager;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_5b

    const-string v6, "MultiDisplayPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyPostLayoutPolicyLw: # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", affectsSystemUi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_6f

    if-eqz v1, :cond_6f

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_6f

    iput-boolean v5, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBar:Z

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v6

    iput v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBarLayer:I

    :cond_6f
    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_c8

    if-eqz v1, :cond_c8

    and-int/lit16 v6, v2, 0x800

    if-eqz v6, :cond_7b

    iput-boolean v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceStatusBar:Z

    :cond_7b
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v6, v5, :cond_87

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d0

    if-ge v6, v7, :cond_87

    move v6, v5

    goto :goto_88

    :cond_87
    move v6, v4

    :goto_88
    if-eqz v6, :cond_c8

    if-nez p3, :cond_c8

    invoke-static {p2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v7

    if-eqz v7, :cond_c8

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v7

    if-eq v7, v5, :cond_9a

    if-eqz v3, :cond_c8

    :cond_9a
    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_a2

    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_a2
    sget-boolean v7, Lcom/android/server/policy/MultiDisplayPolicyManager;->DEBUG_LAYOUT:Z

    if-eqz v7, :cond_c8

    const-string v7, "MultiDisplayPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyPostLayoutPolicyLw: #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", set TopFullOpaque= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    if-eqz v1, :cond_e0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7ef

    if-ne v6, v7, :cond_e0

    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_e0

    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_e0

    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_e0
    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_122

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_122

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_122

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_103

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_103

    move v6, v5

    goto :goto_104

    :cond_103
    move v6, v4

    :goto_104
    if-nez v6, :cond_11e

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_11e

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    if-le v9, v10, :cond_11d

    move v4, v5

    nop

    :cond_11d
    move v6, v4

    :cond_11e
    if-eqz v6, :cond_122

    iput-boolean v5, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mOverlappedFreeformWithNaviBar:Z

    :cond_122
    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_138

    if-eqz v1, :cond_138

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v4

    if-eqz v4, :cond_138

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v4

    if-eq v4, v5, :cond_136

    if-eqz v3, :cond_138

    :cond_136
    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_138
    return-void
.end method

.method applyWinnerSubDisplayPOCSetByDevToolApp(Z)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->setIsGoneTosleepForPOCSubDisplay(Z)V

    goto :goto_36

    :cond_7
    iget v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_16

    iget v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayModeIterator:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayModeIterator:I

    iget v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayModeIterator:I

    rem-int/lit8 v1, v4, 0x5

    :cond_16
    packed-switch v1, :pswitch_data_38

    goto :goto_36

    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    goto :goto_36

    :pswitch_20
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto :goto_36

    :pswitch_27
    iget-object v3, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    invoke-virtual {p0, v2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->setIsGoneTosleepForPOCSubDisplay(Z)V

    goto :goto_36

    :pswitch_35
    nop

    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_27
        :pswitch_20
        :pswitch_1a
    .end packed-switch
.end method

.method beginLayout(Lcom/android/server/wm/DisplayFrames;I)V
    .registers 6

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v1, :cond_13

    iget-boolean v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    :cond_13
    return-void
.end method

.method public beginPostLayoutPolicyLw(III)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_1d

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBar:Z

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBarLayer:I

    iput-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceStatusBar:Z

    iput-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mOverlappedFreeformWithNaviBar:Z

    :cond_1d
    return-void
.end method

.method clearClearableFlagsLw(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_21

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    if-eqz v1, :cond_21

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_21

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v1, v1, 0x7

    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    if-eq v1, v2, :cond_21

    iput v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    iget-object v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    invoke-interface {v2, p1}, Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;->reevaluateStatusBarVisibility(I)V

    :cond_21
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, " MULTI DISPLAY POLICY MANAGER"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_33

    iget-object v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_33
    return-void
.end method

.method public finishPostLayoutPolicyLw(I)I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v1, :cond_d

    iget-boolean v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    :cond_d
    return v0
.end method

.method public focusUpdateRequestedLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 4

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mFocusCandidates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mFocusCandidates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_d
    return-void
.end method

.method getDexKeyguardOccluded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    return v0
.end method

.method getDexModeLw()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;->getDexModeLw()I

    move-result v0

    return v0
.end method

.method public getDexModeTi()I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    return v0
.end method

.method getFocusedWindow(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mFocusCandidates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method getNavgationBar(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-object v1

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method getNonDecorDisplayHeight(IIII)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_17

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarCanMove:Z

    if-eqz v1, :cond_14

    if-ge p2, p3, :cond_17

    :cond_14
    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarHeight:I

    sub-int/2addr p3, v1

    :cond_17
    return p3
.end method

.method getNonDecorDisplayWidth(IIII)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_17

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarCanMove:Z

    if-eqz v1, :cond_17

    if-le p2, p3, :cond_17

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarHeight:I

    sub-int/2addr p2, v1

    :cond_17
    return p2
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_40

    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_1a

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarHeight:I

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    :cond_1a
    if-eqz p4, :cond_40

    iget v1, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->left:I

    iget v1, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->top:I

    iget v1, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->right:I

    iget v1, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->bottom:I

    :cond_40
    return-void
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_1d

    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;I)V

    const/4 v1, 0x2

    if-eq p6, v1, :cond_1d

    iget v1, p5, Landroid/graphics/Rect;->top:I

    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBarHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p5, Landroid/graphics/Rect;->top:I

    :cond_1d
    return-void
.end method

.method getStatusBar(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-object v1

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStatusBarHeight(I)I
    .registers 4

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarHeight(I)I

    move-result v0

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_17

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBarHeight:I

    return v1

    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method getTopFullscreeOpaqueWin(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-object v1

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasMultiDisplayPolicy(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_10

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;Lcom/android/server/policy/WindowManagerPolicy;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mContext:Landroid/content/Context;

    move-object v0, p3

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->setMultiDisplayPolicy(Lcom/android/server/policy/MultiDisplayPolicyManager;)V

    iput-object p2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getInstance()Lcom/samsung/android/multidisplay/MultiDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    return-void
.end method

.method isDisplayDeXEnabledTi(I)Z
    .registers 5

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    if-eq p1, v2, :cond_c

    :cond_8
    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    if-ne v0, v1, :cond_d

    :cond_c
    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public isGoneTosleepForPOCSubDisplay()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mIsGoneTosleepForPOCSubDisplay:Z

    return v0
.end method

.method isImmersiveMode(II)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method isNavigationBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v2, p1, :cond_15

    const/4 v1, 0x1

    nop

    :cond_15
    return v1

    :cond_16
    return v1
.end method

.method isNavigationBarVisible(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    nop

    :cond_19
    return v1

    :cond_1a
    return v1
.end method

.method isStatusBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v2, p1, :cond_15

    const/4 v1, 0x1

    nop

    :cond_15
    return v1

    :cond_16
    return v1
.end method

.method isWinnerPOCSubDisplayModeApplied()Z
    .registers 2

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onConfigurationChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->loadResources()V

    :cond_d
    return-void
.end method

.method public onDexModeChangedLw(I)V
    .registers 5

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    if-ne v0, p1, :cond_1c

    const-string v0, "MultiDisplayPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDexModeChangedLw: called same dexMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBindDesktopSystemUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_35

    :cond_2a
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnbindDesktopSystemUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_35
    iput p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    invoke-static {p1}, Lcom/android/server/policy/PolicyControl;->setDexMode(I)V

    return-void
.end method

.method public onDisplayAdded(Landroid/view/Display;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;-><init>(Lcom/android/server/policy/MultiDisplayPolicyManager;ILandroid/view/Display;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "MultiDisplayPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayAdded: displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public onDisplayChanged(Landroid/view/Display;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->updateDisplayState(Landroid/view/Display;)V

    :cond_11
    const-string v1, "MultiDisplayPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayChanged: displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->release()V

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_15
    const-string v1, "MultiDisplayPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayRemoved: displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4

    const/16 v0, -0xa

    return v0
.end method

.method removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    nop

    return-void
.end method

.method requestTransientBars(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_2b

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v1}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v1}, Lcom/android/server/policy/BarController;->showTransient()V

    invoke-virtual {p0, p1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->updateSystemUiVisibility(I)I

    :cond_26
    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->showNextButton()V

    :cond_2b
    return-void
.end method

.method selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_35

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    const/4 v2, 0x2

    if-eq p2, v2, :cond_31

    if-ne p2, v3, :cond_27

    goto :goto_31

    :cond_27
    const/4 v2, 0x1

    if-eq p2, v2, :cond_2d

    const/4 v2, 0x3

    if-ne p2, v2, :cond_35

    :cond_2d
    const v1, 0x10a002e

    return v1

    :cond_31
    :goto_31
    const v1, 0x10a002f

    return v1

    :cond_35
    return v1
.end method

.method setDexKeyguardOccludedLw(Z)Z
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, p1, :cond_10

    move v4, v2

    goto :goto_11

    :cond_10
    move v4, v3

    :goto_11
    if-nez p1, :cond_21

    if-eqz v4, :cond_21

    if-eqz v1, :cond_21

    iput-boolean v3, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v3, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setDexOccluded(ZZ)V

    return v2

    :cond_21
    if-eqz p1, :cond_31

    if-eqz v4, :cond_31

    if-eqz v1, :cond_31

    iput-boolean v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setDexOccluded(ZZ)V

    return v2

    :cond_31
    if-eqz v4, :cond_3d

    iput-boolean p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    iget-object v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setDexOccluded(ZZ)V

    return v3

    :cond_3d
    return v3
.end method

.method setInitialDisplaySize(Landroid/view/Display;III)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v1, :cond_5d

    const-string v2, "MultiDisplayPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInitialDisplaySize: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Current=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "dpi)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le p2, p3, :cond_52

    iput v5, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLandscapeRotation:I

    iput v4, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mUpsideDownRotation:I

    iput v3, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mSeascapeRotation:I

    iput v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mPortraitRotation:I

    goto :goto_5a

    :cond_52
    iput v5, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mPortraitRotation:I

    iput v4, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLandscapeRotation:I

    iput v3, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mUpsideDownRotation:I

    iput v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mSeascapeRotation:I

    :goto_5a
    invoke-virtual {v1}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->loadResources()V

    :cond_5d
    return-void
.end method

.method public setIsGoneTosleepForPOCSubDisplay(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mIsGoneTosleepForPOCSubDisplay:Z

    return-void
.end method

.method setNavigationBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 7

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v1, :cond_34

    iput-object p1, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/BarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    const-string v2, "MultiDisplayPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNavigationBar: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", navigationBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method setStatusBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_33

    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-string v1, "MultiDisplayPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStatusBar: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method public setWinnerPocSubDisplayMode(I)V
    .registers 5

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    if-eq v0, p1, :cond_1f

    iput p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    const-string v0, "MultiDisplayPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setmWinnerPocSubDisplayMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method shouldGoHomeInSubDisplay(Z)Z
    .registers 4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->shouldGoHomeInSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_14
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->restoreLastNonResizableTopTaskIfNeeded()V

    :cond_19
    return v1
.end method

.method updateScreenOffSleepToken(ZI)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_63

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_44

    const-string v1, "MultiDisplayPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateScreenOffSleepToken: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", acquire="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", current ScreenOffSleepToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    if-eqz p1, :cond_57

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v1, :cond_63

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "ScreenOff"

    invoke-virtual {v1, v2, p2}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_63

    :cond_57
    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v1, :cond_63

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_63
    :goto_63
    return-void
.end method

.method updateSystemBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;III)I
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v3, :cond_107

    iget-boolean v4, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    if-eqz v4, :cond_107

    iget-boolean v4, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v4, :cond_107

    iget-object v4, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v5, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move/from16 v6, p3

    invoke-virtual {v5, v4, v6, v1}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v5

    iget-boolean v6, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mOverlappedFreeformWithNaviBar:Z

    if-eqz v6, :cond_31

    iget-object v6, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eq v4, v6, :cond_31

    const v6, -0x8001

    and-int/2addr v5, v6

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    :cond_31
    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-nez v6, :cond_3b

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    :cond_3b
    and-int/lit16 v6, v5, 0x1000

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_43

    move v6, v8

    goto :goto_44

    :cond_43
    move v6, v7

    :goto_44
    and-int/lit8 v9, v5, 0x2

    if-eqz v9, :cond_4a

    move v9, v8

    goto :goto_4b

    :cond_4a
    move v9, v7

    :goto_4b
    iget-object v10, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_55

    if-eqz v9, :cond_55

    if-eqz v6, :cond_55

    move v10, v8

    goto :goto_56

    :cond_55
    move v10, v7

    :goto_56
    if-nez v10, :cond_62

    iget-object v11, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v11}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v11

    if-eqz v11, :cond_62

    move v11, v8

    goto :goto_63

    :cond_62
    move v11, v7

    :goto_63
    if-eqz v11, :cond_6a

    invoke-virtual {v0, v2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->clearClearableFlagsLw(I)V

    and-int/lit8 v5, v5, -0x8

    :cond_6a
    and-int/lit16 v12, v5, 0x800

    if-eqz v12, :cond_70

    move v12, v8

    goto :goto_71

    :cond_70
    move v12, v7

    :goto_71
    and-int/lit16 v13, v5, 0x1000

    if-eqz v13, :cond_77

    move v13, v8

    goto :goto_78

    :cond_77
    move v13, v7

    :goto_78
    move v6, v13

    if-nez v12, :cond_7f

    if-eqz v6, :cond_7e

    goto :goto_7f

    :cond_7e
    goto :goto_80

    :cond_7f
    :goto_7f
    move v7, v8

    :goto_80
    iget-object v8, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v15, p1

    invoke-virtual {v8, v15}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v8

    iget-object v13, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v14, 0x7e6

    invoke-virtual {v13, v14}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v14

    if-eqz v9, :cond_ab

    if-nez v7, :cond_ab

    if-le v8, v14, :cond_ab

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v13

    move-object/from16 v19, v4

    const/16 v4, 0x96a

    if-eq v13, v4, :cond_ad

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v4

    const/16 v13, 0x965

    if-eq v4, v13, :cond_ad

    and-int/lit8 v5, v5, -0x3

    goto :goto_ad

    :cond_ab
    move-object/from16 v19, v4

    :cond_ad
    :goto_ad
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->isImmersiveMode(II)Z

    move-result v4

    and-int/lit16 v13, v5, -0x801

    invoke-virtual {v0, v13, v2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->isImmersiveMode(II)Z

    move-result v13

    if-eq v4, v13, :cond_d9

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v20

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    move/from16 v21, v4

    iget-object v4, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    const/16 v17, 0x0

    move/from16 v22, v13

    move-object v13, v4

    move v4, v14

    move-object/from16 v14, v20

    move/from16 v15, v22

    move/from16 v16, v2

    move-object/from16 v18, p1

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZLcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_de

    :cond_d9
    move/from16 v21, v4

    move/from16 v22, v13

    move v4, v14

    :goto_de
    iget-object v2, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, v10, v1, v5}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    move-result v2

    iget-object v5, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v13, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v14, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v14}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v14

    iget v15, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v5, v13, v14, v15}, Lcom/android/server/policy/PhoneWindowManager;->chooseNavigationColorWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v5

    iget-object v13, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v14, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v15, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v15, v15, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v15}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v15

    invoke-static {v2, v13, v14, v15, v5}, Lcom/android/server/policy/PhoneWindowManager;->updateLightNavigationBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v2

    goto :goto_10a

    :cond_107
    move/from16 v6, p3

    move v2, v6

    :goto_10a
    return v2
.end method

.method updateSystemUiVisibility(I)I
    .registers 21

    move-object/from16 v8, p0

    move/from16 v9, p1

    iget-object v0, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v0, 0x0

    if-eqz v10, :cond_108

    iget-boolean v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayEnabled:Z

    if-eqz v1, :cond_108

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getFocusedWindow(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v11

    if-eqz v11, :cond_1c

    move-object v1, v11

    goto :goto_1e

    :cond_1c
    iget-object v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :goto_1e
    iget-object v2, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-static {v11, v2}, Lcom/android/server/policy/MultiPhoneWindowManager;->getCandidateWindowState(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v1

    if-nez v1, :cond_27

    return v0

    :cond_27
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_3a

    iget-object v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_3a

    return v0

    :cond_3a
    move-object v12, v1

    move-object v13, v12

    const/4 v1, 0x0

    invoke-static {v13, v1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iget v2, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    iget v2, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    iget-boolean v2, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v2, :cond_5c

    invoke-interface {v13}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    iget v3, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBarLayer:I

    if-ge v2, v3, :cond_5c

    const/4 v2, 0x7

    invoke-static {v13, v2}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    :cond_5c
    invoke-static {v11, v13, v1}, Lcom/android/server/policy/MultiPhoneWindowManager;->adjustImmersiveFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v14

    iget-object v1, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v4, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v5, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v6, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)I

    move-result v15

    iget-object v1, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v2, 0x2

    iget-object v3, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-interface {v1, v0, v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(IILandroid/graphics/Rect;)V

    iget v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v8, v13, v1, v14, v9}, Lcom/android/server/policy/MultiDisplayPolicyManager;->updateSystemBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;III)I

    move-result v7

    iget v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    xor-int v6, v7, v1

    iget-object v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v13, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v16

    if-nez v6, :cond_a0

    iget-object v1, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v13}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-ne v1, v2, :cond_a0

    iget-object v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    return v0

    :cond_a0
    iput v7, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    iget-object v0, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {v13}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v0, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;

    move-object v0, v3

    move-object v1, v8

    move v2, v9

    move-object v8, v3

    move v3, v7

    move-object v9, v4

    move v4, v15

    move-object/from16 v17, v10

    move v10, v6

    move-object v6, v13

    move/from16 v18, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;-><init>(Lcom/android/server/policy/MultiDisplayPolicyManager;IIILandroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V

    invoke-virtual {v9, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_107

    const-string v0, "MultiDisplayPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSystemUivisibility: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", diff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    return v10

    :cond_108
    move-object/from16 v17, v10

    return v0
.end method
