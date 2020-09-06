.class public Lcom/android/server/wm/SideScreenBoundsAnimationController;
.super Ljava/lang/Object;
.source "SideScreenBoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;,
        Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_ANIMATION_SLOW_DOWN_FACTOR:I = 0x1

.field public static DEFAULT_TRANSITION_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SideScreenBoundsAnimationController"

.field private static final WAIT_FOR_DRAW_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mAppTransition:Lcom/android/server/wm/AppTransition;

.field private final mAppTransitionNotifier:Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFinishAnimationAfterTransition:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/BoundsAnimationTarget;",
            "Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x96

    sput v0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->DEFAULT_TRANSITION_DURATION:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mFinishAnimationAfterTransition:Z

    new-instance v0, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/SideScreenBoundsAnimationController;Lcom/android/server/wm/SideScreenBoundsAnimationController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;

    iput-object p3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/SideScreenBoundsAnimationController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/SideScreenBoundsAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->updateBooster()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Lcom/android/server/wm/AppTransition;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Landroid/animation/AnimationHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method public static synthetic lambda$Xx6nsdB6q8K15-L2LrZOsr9gaaw(Lcom/android/server/wm/SideScreenBoundsAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->resume()V

    return-void
.end method

.method private resume()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->resume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private updateBooster()V
    .registers 3

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setBoundsAnimationRunning(Z)V

    return-void
.end method


# virtual methods
.method public animateBounds(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZLjava/lang/Runnable;)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->animateBoundsImpl(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZLjava/lang/Runnable;)Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;

    return-void
.end method

.method animateBoundsImpl(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZLjava/lang/Runnable;)Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;
    .registers 28
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    iget-object v2, v9, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;

    const/4 v13, 0x1

    if-eqz v12, :cond_14

    move v2, v13

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    move v14, v2

    const-string v2, "SideScreenBoundsAnimationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateBounds: target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " replacing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_93

    invoke-virtual {v12, v11}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->isAnimatingTo(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_7a

    if-eqz p7, :cond_56

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z
    invoke-static {v12}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->access$700(Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;)Z

    move-result v2

    if-eqz v2, :cond_7a

    :cond_56
    if-eqz p6, :cond_5e

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z
    invoke-static {v12}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;)Z

    move-result v2

    if-eqz v2, :cond_7a

    :cond_5e
    const-string v2, "SideScreenBoundsAnimationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateBounds: same destination and moveTo/From flags as existing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_7a
    if-nez p6, :cond_87

    if-nez p7, :cond_87

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z
    invoke-static {v12}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->access$700(Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;)Z

    move-result v1

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z
    invoke-static {v12}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;)Z

    move-result v0

    goto :goto_8b

    :cond_87
    move/from16 v0, p6

    move/from16 v1, p7

    :goto_8b
    invoke-virtual {v12}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->cancel()V

    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_97

    :cond_93
    move/from16 v16, p6

    move/from16 v17, p7

    :goto_97
    new-instance v18, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;

    move-object/from16 v0, v18

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v10

    move-object v4, v15

    move-object v5, v11

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;-><init>(Lcom/android/server/wm/SideScreenBoundsAnimationController;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLjava/lang/Runnable;)V

    iget-object v1, v9, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_d0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->setFloatValues([F)V

    const/4 v1, -0x1

    move/from16 v2, p5

    if-eq v2, v1, :cond_bf

    move v1, v2

    goto :goto_c1

    :cond_bf
    sget v1, Lcom/android/server/wm/SideScreenBoundsAnimationController;->DEFAULT_TRANSITION_DURATION:I

    :goto_c1
    mul-int/2addr v1, v13

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v9, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->start()V

    return-object v0

    nop

    :array_d0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onAllWindowsDrawn()V
    .registers 3

    const-string v0, "SideScreenBoundsAnimationController"

    const-string/jumbo v1, "onAllWindowsDrawn:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenBoundsAnimationController$Xx6nsdB6q8K15-L2LrZOsr9gaaw;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenBoundsAnimationController$Xx6nsdB6q8K15-L2LrZOsr9gaaw;-><init>(Lcom/android/server/wm/SideScreenBoundsAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
