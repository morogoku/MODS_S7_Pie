.class public Lcom/android/server/wm/MultiDisplayManagerInternal;
.super Ljava/lang/Object;
.source "MultiDisplayManagerInternal.java"

# interfaces
.implements Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiDisplayManagerInternal$H;
    }
.end annotation


# static fields
.field private static final MAX_SCALE:I = 0x3

.field private static final MIN_HEIGHT:I = 0xc8

.field private static final MIN_WIDTH:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "MultiDisplayManagerInternal"


# instance fields
.field final mApplyPostLayoutPolicy:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFocusDisplayId:I

.field final mDecorCaptionHeight:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceDefaultDisplayId:I

.field private mDexDisplayActivated:Z

.field mDexTouchPadUsing:Z

.field private final mDisplayContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mHandler:Lcom/android/server/wm/MultiDisplayManagerInternal$H;

.field private mKeepDisplayAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mLastDexMode:I

.field private mLidOpen:Z

.field mMultiDisplayManager:Lcom/samsung/android/multidisplay/IMultiDisplayManager;

.field mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

.field private mReportedForcedDefaultDisplay:Z

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field mSwitchingDisplay:Z

.field final mTaskPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWinnerPocSubDisplayMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDexDisplayActivated:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDisplayContexts:Landroid/util/SparseArray;

    iput v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mLastDexMode:I

    iput-boolean v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDexTouchPadUsing:Z

    iput v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mWinnerPocSubDisplayMode:I

    new-instance v1, Lcom/android/server/wm/MultiDisplayManagerInternal$H;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiDisplayManagerInternal$H;-><init>(Lcom/android/server/wm/MultiDisplayManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mHandler:Lcom/android/server/wm/MultiDisplayManagerInternal$H;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDecorCaptionHeight:Landroid/util/SparseArray;

    iput v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mCurrentFocusDisplayId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDeviceDefaultDisplayId:I

    iput-boolean v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mSwitchingDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mReportedForcedDefaultDisplay:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mLidOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mKeepDisplayAppToken:Lcom/android/server/wm/AppWindowToken;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$MultiDisplayManagerInternal$7UkD4ohqFrXiRHM5VuyILfgX5m0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$MultiDisplayManagerInternal$7UkD4ohqFrXiRHM5VuyILfgX5m0;-><init>(Lcom/android/server/wm/MultiDisplayManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    new-instance v0, Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-direct {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

    return-void
.end method

.method public static isBuiltInDisplay(I)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    if-ne p0, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    return v0

    :cond_8
    :goto_8
    return v0
.end method

.method static isDefaultOrDexDisplay(I)Z
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    return v0

    :cond_8
    :goto_8
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$forceResizingWindowsIfNeededLocked$2(Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDisplayCompatMode()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mNextForceRelayoutToClient:Z

    :cond_19
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/MultiDisplayManagerInternal;Lcom/android/server/wm/WindowState;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/server/policy/IMultiDisplayPolicy;->applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method private synthetic lambda$setDeviceDefaultDisplay$1()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->writeTspCmdFile()V

    return-void
.end method

.method private reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 11

    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_39

    const-string v0, "MultiDisplayManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reconfigureDisplayLocked: Cannot handle the default display"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2c
    const-string v1, ""

    :goto_2e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_52

    move v3, v4

    goto :goto_53

    :cond_52
    move v3, v5

    :goto_53
    if-eqz v3, :cond_ee

    iget-object v6, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v6, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    iget-object v4, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v5, v5, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    iget-object v6, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v6

    if-nez v6, :cond_81

    iput v5, p1, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    iput v5, p1, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    :cond_81
    const-string v5, "MultiDisplayManagerInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reconfigureDisplayLocked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "MultiDisplayManagerInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "MultiDisplayManagerInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v5, :cond_e4

    const-string v5, "MultiDisplayManagerInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_ee
    return-void
.end method

.method private removeDisplayContextIfNeededLocked(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "MultiDisplayManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDisplayContext: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method private updateDexModeIfNeededLocked(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getDexModeLocked()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mLastDexMode:I

    if-eq v1, v0, :cond_40

    const-string v1, "MultiDisplayManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDexModeIfNeededLocked: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mLastDexMode:I

    invoke-static {v3}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->dexModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->dexModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mLastDexMode:I

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

    invoke-interface {v1, v0}, Lcom/android/server/policy/IMultiDisplayPolicy;->onDexModeChangedLw(I)V

    :cond_40
    return-void
.end method

.method private writeTspCmdFile()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isForcedDefaultDisplay()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mReportedForcedDefaultDisplay:Z

    if-ne v1, v0, :cond_9

    return-void

    :cond_9
    iput-boolean v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mReportedForcedDefaultDisplay:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_rear_selfie_mode,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1b

    const-string v2, "1"

    goto :goto_1d

    :cond_1b
    const-string v2, "0"

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiDisplayManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeTspCmdFile= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_3c
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5d

    const-string v4, "MultiDisplayManagerInternal"

    const-string v5, "The file is not exist."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_50} :catch_a0
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_50} :catch_96
    .catchall {:try_start_3c .. :try_end_50} :catchall_94

    if-eqz v2, :cond_5b

    :try_start_52
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5b

    :catch_56
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c

    :cond_5b
    :goto_5b
    nop

    :goto_5c
    return-void

    :cond_5d
    :try_start_5d
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_77

    const-string v4, "MultiDisplayManagerInternal"

    const-string v5, "The file is not writable"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_6a} :catch_a0
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6a} :catch_96
    .catchall {:try_start_5d .. :try_end_6a} :catchall_94

    if-eqz v2, :cond_75

    :try_start_6c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_75

    :catch_70
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_76

    :cond_75
    :goto_75
    nop

    :goto_76
    return-void

    :cond_77
    :try_start_77
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_89} :catch_a0
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_89} :catch_96
    .catchall {:try_start_77 .. :try_end_89} :catchall_94

    nop

    :try_start_8a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_93

    :catch_8e
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_aa

    :cond_93
    :goto_93
    goto :goto_aa

    :catchall_94
    move-exception v3

    goto :goto_ab

    :catch_96
    move-exception v3

    :try_start_97
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_94

    if-eqz v2, :cond_93

    :try_start_9c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_8e

    goto :goto_93

    :catch_a0
    move-exception v3

    :try_start_a1
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_94

    if-eqz v2, :cond_93

    :try_start_a6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_8e

    goto :goto_93

    :goto_aa
    return-void

    :goto_ab
    nop

    if-eqz v2, :cond_b7

    :try_start_ae
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_b7

    :catch_b2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_b7
    :goto_b7
    throw v3
.end method


# virtual methods
.method public activateDexDisplayLocked(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDexDisplayActivated:Z

    if-eq v1, p1, :cond_e

    iput-boolean p1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDexDisplayActivated:Z

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method adjustDexConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V
    .registers 11

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-nez v0, :cond_12

    const-string v1, "MultiDisplayManagerInternal"

    const-string v2, "adjustDexConfigurationLocked: Cannot found DesktopModeService"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_22

    move v3, v5

    goto :goto_23

    :cond_22
    move v3, v4

    :goto_23
    iget-boolean v6, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_2f

    const/16 v6, 0x65

    invoke-virtual {v0, v6}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->isDesktopModeForPreparing(I)Z

    move-result v6

    goto :goto_34

    :cond_2f
    if-ne v1, v7, :cond_33

    move v6, v5

    goto :goto_34

    :cond_33
    move v6, v4

    :goto_34
    if-eqz v6, :cond_40

    iput v5, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x10

    or-int/2addr v4, v7

    iput v4, p1, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_4e

    :cond_40
    iput v4, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget-boolean v4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_4e

    if-eqz v3, :cond_4e

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getCurrentUiMode()I

    move-result v4

    iput v4, p1, Landroid/content/res/Configuration;->uiMode:I

    :cond_4e
    :goto_4e
    return-void
.end method

.method adjustDisplayCompatBoundsIfNeededLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method createDisplayContextIfNeededLocked(Landroid/view/Display;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v3, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2e

    const-string v3, "MultiDisplayManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDisplayContext: #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 5

    const-string v0, "MULTI DISPLAY MANAGER INTERNAL (dumpsys window md)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    return-void
.end method

.method forceResizingWindowsIfNeededLocked(Lcom/android/server/wm/WindowContainer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getBuiltInDisplayId(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFocusDisplayId()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mCurrentFocusDisplayId:I

    return v0
.end method

.method public getDecorCaptionHeight(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDecorCaptionHeight:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method getDexModeLocked()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDexDisplayActivated:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    return v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getDexModeLw()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getDexModeLocked()I

    move-result v0

    return v0
.end method

.method getDisplayContextLocked(I)Landroid/content/Context;
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getDisplayContextLw(I)Landroid/content/Context;
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method getResources(I)Landroid/content/res/Resources;
    .registers 3

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getStableInsetsForAllRotation(I)Landroid/util/SparseArray;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_a0

    move/from16 v3, p1

    :try_start_10
    invoke-virtual {v0, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v4, 0x0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :cond_1c
    :try_start_1c
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v5, v4, Landroid/view/DisplayInfo;->rotation:I

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v5, v7, :cond_30

    iget v5, v4, Landroid/view/DisplayInfo;->rotation:I

    if-ne v5, v6, :cond_2b

    goto :goto_30

    :cond_2b
    iget v5, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_34

    :cond_30
    :goto_30
    iget v5, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v8, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_34
    move v12, v8

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v9

    iget-object v9, v1, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v10, 0x0

    const/4 v13, 0x0

    move v11, v5

    move-object v14, v15

    invoke-interface/range {v9 .. v14}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, v1, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move-object v9, v15

    move v15, v12

    move/from16 v16, v5

    move-object/from16 v18, v9

    invoke-interface/range {v13 .. v18}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v7, v1, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v14, 0x2

    const/16 v17, 0x0

    move v15, v5

    move/from16 v16, v12

    move-object/from16 v18, v9

    invoke-interface/range {v13 .. v18}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    const/4 v7, 0x2

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v7, v1, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v14, 0x3

    const/16 v17, 0x0

    move v15, v12

    move/from16 v16, v5

    move-object/from16 v18, v9

    invoke-interface/range {v13 .. v18}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_1c .. :try_end_9c} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v8

    :catchall_a0
    move-exception v0

    move/from16 v3, p1

    :goto_a3
    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_a8
    move-exception v0

    goto :goto_a3
.end method

.method getSystemUiContext()Landroid/content/Context;
    .registers 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method initPolicy()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1, p0, v2}, Lcom/android/server/policy/IMultiDisplayPolicy;->init(Landroid/content/Context;Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;Lcom/android/server/policy/WindowManagerPolicy;)V

    return-void
.end method

.method public isDexDisplayActivated(I)Z
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDexDisplayActivated:Z

    return v0
.end method

.method public isDexImePolicyNeededLocked()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getDexModeLocked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method public isForcedDefaultDisplay()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mLidOpen:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDeviceDefaultDisplayId:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isMainBuiltInDisplayActivated()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public killPackageProcess(Ljava/lang/String;Landroid/os/IBinder;IZ)V
    .registers 5

    return-void
.end method

.method public lidOpened(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    xor-int/lit8 v1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mLidOpen:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setDeviceDefaultDisplay(I)V

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method loadAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 8

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_74

    :pswitch_4
    goto :goto_65

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isReducedAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    if-eqz p3, :cond_1b

    const v2, 0x10a0092

    goto :goto_1e

    :cond_1b
    const v2, 0x10a0094

    :goto_1e
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_65

    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    if-eqz p3, :cond_2d

    const v2, 0x10a0028

    goto :goto_30

    :cond_2d
    const v2, 0x10a0029

    :goto_30
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_65

    :pswitch_35
    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isReducedAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    if-eqz p3, :cond_4b

    const v2, 0x10a0096

    goto :goto_4e

    :cond_4b
    const v2, 0x10a0098

    :goto_4e
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_65

    :cond_53
    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    if-eqz p3, :cond_5d

    const v2, 0x10a002a

    goto :goto_60

    :cond_5d
    const v2, 0x10a002b

    :goto_60
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    nop

    :goto_65
    if-eqz v0, :cond_72

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_72
    return-object v0

    nop

    :pswitch_data_74
    .packed-switch 0x8
        :pswitch_35
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method loadResources(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getResources(I)Landroid/content/res/Resources;

    move-result-object v0

    return-void
.end method

.method public notifyAppMovingDisplay(Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mMovingDisplay:Z

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyAppTransitionFinishedIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "MultiDisplayManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAppTransitionFinishedIfNeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mHandler:Lcom/android/server/wm/MultiDisplayManagerInternal$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiDisplayManagerInternal$H;->sendEmptyMessage(I)Z

    :cond_3b
    return-void
.end method

.method onConfigurationChangedLw(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->loadResources(I)V

    return-void
.end method

.method onDisplayAddedLocked(Landroid/view/Display;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IMultiDisplayPolicy;->onDisplayAdded(Landroid/view/Display;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->createDisplayContextIfNeededLocked(Landroid/view/Display;)V

    return-void
.end method

.method onDisplayChanged(Landroid/view/Display;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IMultiDisplayPolicy;->onDisplayChanged(Landroid/view/Display;)V

    return-void
.end method

.method onDisplayRemovedLocked(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IMultiDisplayPolicy;->onDisplayRemoved(I)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->removeDisplayContextIfNeededLocked(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->releaseResource(I)V

    return-void
.end method

.method public reevaluateStatusBarVisibility(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_2e

    const-string v2, "MultiDisplayManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reevaluateStatusBarVisibility: dc is null, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2e
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    invoke-interface {v2, v3, p1}, Lcom/android/server/policy/IMultiDisplayPolicy;->adjustSystemUiVisibilityLw(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(II)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method releaseKeepDisplayLocked(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mKeepDisplayAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_35

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mKeepDisplayAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_35

    const-string v0, "MultiDisplayManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseKeepDisplayLocked: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mKeepDisplayAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mKeepDisplayAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mLidOpen:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setDeviceDefaultDisplay(I)V

    :cond_35
    return-void
.end method

.method releaseResource(I)V
    .registers 2

    return-void
.end method

.method public requestKeepDisplay(Landroid/os/IBinder;Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-nez p1, :cond_17

    const-string v1, "MultiDisplayManagerInternal"

    const-string/jumbo v2, "requestKeepDisplay: token is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_3d

    const-string v2, "MultiDisplayManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestKeepDisplay: appToken is null, token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3d
    if-eqz p2, :cond_59

    :try_start_3f
    const-string v2, "MultiDisplayManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestKeepDisplay: enable token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mKeepDisplayAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_7e

    :cond_59
    iget-object v2, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mKeepDisplayAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v2, v1, :cond_7e

    const-string v2, "MultiDisplayManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestKeepDisplay: disable token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mKeepDisplayAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mLidOpen:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setDeviceDefaultDisplay(I)V

    :cond_7e
    :goto_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_3f .. :try_end_7f} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public requestLayoutTraversal(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v1, "MultiDisplayManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLayoutTraversal: dc is null, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return-void
.end method

.method setCurrentFocusDisplayId(I)V
    .registers 5

    iget v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mCurrentFocusDisplayId:I

    if-eq v0, p1, :cond_14

    iput p1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mCurrentFocusDisplayId:I

    :try_start_6
    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->setCurrentFocusDisplayId(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "MultiDisplayManagerInternal"

    const-string v2, "Failed to setCurrentFocusDisplayId"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public setDeviceDefaultDisplay(I)V
    .registers 2

    return-void
.end method

.method public setDexTouchPadUsing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mDexTouchPadUsing:Z

    return-void
.end method

.method public setMultiDisplayManager(Lcom/samsung/android/multidisplay/IMultiDisplayManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    return-void
.end method

.method public setNonDefaultDisplaySizeAndDensity(IIII)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d9

    if-nez p1, :cond_41

    const-string v0, "MultiDisplayManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNonDefaultDisplaySizeAndDensity: Cannot handle the default display"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_36

    :cond_34
    const-string v2, ""

    :goto_36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_45
    iget-object v2, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_d4

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_79

    const-string v4, "MultiDisplayManagerInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setNonDefaultDisplaySizeAndDensity: displayContent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_4a .. :try_end_72} :catchall_ce

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_79
    :try_start_79
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v4, v4, 0x3

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v5, v5, 0x3

    const/16 v6, 0xc8

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    move p2, v7

    invoke-static {p3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move p3, v6

    const-string v6, "MultiDisplayManagerInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setNonDefaultDisplaySizeAndDensity: size=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "), density="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p4, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    invoke-direct {p0, v3}, Lcom/android/server/wm/MultiDisplayManagerInternal;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    monitor-exit v2
    :try_end_c6
    .catchall {:try_start_79 .. :try_end_c6} :catchall_ce

    :try_start_c6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_d4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_ce
    move-exception v3

    :try_start_cf
    monitor-exit v2
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    :try_start_d0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_d4
    .catchall {:try_start_d0 .. :try_end_d4} :catchall_d4

    :catchall_d4
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_d9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWaitingTransitionFinished(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/IApplicationToken;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_14

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IApplicationToken;

    iget-object v3, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    if-eqz v3, :cond_52

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v4, :cond_4d

    const-string v4, "MultiDisplayManagerInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWaitingTransitionFinished: add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    iget-object v4, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    goto :goto_18

    :cond_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_14 .. :try_end_54} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWinnerPocSubDisplayMode(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mWinnerPocSubDisplayMode:I

    if-eq v1, p1, :cond_2c

    iput p1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mWinnerPocSubDisplayMode:I

    const-string v1, "MultiDisplayManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmWinnerPocSubDisplayMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mWinnerPocSubDisplayMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/IMultiDisplayPolicy;->setWinnerPocSubDisplayMode(I)V

    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shouldBeFocusableLocked(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
