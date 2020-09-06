.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;,
        Lcom/android/server/policy/BarController$BarHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_NAV_BAR_VISIBILITY_CHANGED:I = 0x1

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mContentFrame:Landroid/graphics/Rect;

.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field protected mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mStatusBarManagerId:I

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mTransparentFlag:I

.field private final mUnhideFlag:I

.field private mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

.field protected mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BarController;->mState:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    iput p7, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    new-instance v0, Lcom/android/server/policy/BarController$BarHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/BarController$BarHandler;-><init>(Lcom/android/server/policy/BarController;Lcom/android/server/policy/BarController$1;)V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/BarController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/BarController;)Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    return-object v0
.end method

.method private computeStateLw(ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Z)I
    .registers 11

    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v1

    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    if-nez p4, :cond_19

    if-nez v0, :cond_19

    return v3

    :cond_19
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v5, 0x0

    if-ne v2, v3, :cond_21

    if-eqz v0, :cond_21

    return v5

    :cond_21
    if-eqz p4, :cond_2d

    if-eqz p1, :cond_2c

    if-eqz v0, :cond_2c

    if-nez p2, :cond_2c

    if-eqz v1, :cond_2c

    return v4

    :cond_2c
    return v5

    :cond_2d
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    return v0
.end method

.method private setTransientBarState(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_17

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    if-ne p1, v1, :cond_15

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    :cond_15
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    :cond_17
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    const-string v0, "TRANSIENT_BAR_HIDING"

    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "TRANSIENT_BAR_SHOWING"

    return-object v0

    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    return-object v0

    :cond_12
    if-nez p0, :cond_17

    const-string v0, "TRANSIENT_BAR_NONE"

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .registers 4

    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    if-eq p1, v0, :cond_12

    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_17

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_29

    :cond_17
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_29

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :cond_29
    :goto_29
    return-void
.end method

.method public applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_48

    if-eqz p1, :cond_36

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_36

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v1

    goto :goto_22

    :cond_1e
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    :goto_22
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_31

    invoke-virtual {p0, p1}, Lcom/android/server/policy/BarController;->isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p2, v1

    goto :goto_35

    :cond_31
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    :goto_35
    goto :goto_48

    :cond_36
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v0, v0

    and-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    or-int p2, v0, v1

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int v0, v0

    and-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr v1, p3

    or-int p2, v0, v1

    :cond_48
    :goto_48
    return p2
.end method

.method public checkHiddenLw()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    :cond_21
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3c

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3b

    invoke-virtual {p0, v2}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    :cond_3b
    return v2

    :cond_3c
    return v1
.end method

.method public checkShowTransientBarLw()Z
    .registers 4

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_12

    return v1

    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    :cond_1b
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTransientBar"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContentFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4f
    return-void
.end method

.method protected getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isTransientShowRequested()Z
    .registers 3

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isTransientShowing()Z
    .registers 3

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 3

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public setBarShowingLw(Z)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isGestureNavBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isGestureHintEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e3

    if-ne v0, v2, :cond_21

    if-eqz p1, :cond_21

    return v1

    :cond_21
    const/4 v0, 0x1

    if-eqz p1, :cond_2c

    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    return v1

    :cond_2c
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-eqz p1, :cond_4e

    iget-object v4, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_48

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v5

    if-nez v5, :cond_48

    move v5, v0

    goto :goto_49

    :cond_48
    move v5, v1

    :goto_49
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    goto :goto_61

    :cond_4e
    iget-object v4, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_5c

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v5

    if-nez v5, :cond_5c

    move v5, v0

    goto :goto_5d

    :cond_5c
    move v5, v1

    :goto_5d
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    :goto_61
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v2, v3, v5, v4}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Z)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    move-result v6

    if-eqz v4, :cond_7c

    iget-object v7, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    if-eqz v7, :cond_7c

    iget-object v7, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_7c
    if-nez v4, :cond_83

    if-eqz v6, :cond_81

    goto :goto_83

    :cond_81
    move v0, v1

    nop

    :cond_83
    :goto_83
    return v0
.end method

.method public setContentFrame(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method setOnBarVisibilityChangedListener(Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;Z)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    if-eqz p2, :cond_16

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method

.method public setShowTransparent(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_b

    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    :cond_b
    return-void
.end method

.method public setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public showTransient()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    :cond_8
    return-void
.end method

.method protected skipAnimation()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public updateVisibilityLw(ZII)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_5

    return p3

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_12
    if-eqz p1, :cond_24

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    :cond_1f
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    goto :goto_27

    :cond_24
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    :cond_27
    :goto_27
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eqz v0, :cond_37

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p3, v0

    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v0, :cond_37

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    :cond_37
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    and-int/lit8 p3, p3, -0x2

    :cond_40
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v0, p3

    if-nez v0, :cond_51

    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_51

    or-int v0, p3, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_57

    :cond_51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    :cond_57
    return p3
.end method

.method public wasRecentlyTranslucent()Z
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
