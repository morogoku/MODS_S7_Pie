.class public abstract Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.super Landroid/widget/FrameLayout;
.source "KeyguardServiceBoxPage.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;
    }
.end annotation


# static fields
.field private static sHandler:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;


# instance fields
.field private final mAttachContentsRunnable:Ljava/lang/Runnable;

.field private mCurrentOrientation:I

.field private mCurrentRoataion:I

.field private mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mGravity:I

.field protected mIsAnimating:Z

.field private mIsAttachReserved:Z

.field private mIsBigView:Z

.field protected mIsCovered:Z

.field private mIsLockStarScaledPageShowing:Z

.field protected mIsMKeyboardConnected:Z

.field protected mIsReservedToTransition:Z

.field private mIsRotationEnabled:Z

.field private mIsViewAttached:Z

.field protected mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private mLastUpdateTime:J

.field private mLocation:[I

.field private mLockStarDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mLockStarPagePosX:I

.field private mLockStarPagePosY:I

.field public mNavigationBarHeight:I

.field protected mPageType:I

.field protected mRes:Landroid/content/res/Resources;

.field protected mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field protected mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowLockStarServiceBoxInProgress:Z

.field protected mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    iput v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mGravity:I

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    iput v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    new-instance v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$1;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$2;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLocation:[I

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPage$VDl3jyfthivKiSeKvz_Sp11_SFw;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPage$VDl3jyfthivKiSeKvz_Sp11_SFw;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mAttachContentsRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$m771wmlhf3BoIeCvMUmZSG8GiQY;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/-$$Lambda$m771wmlhf3BoIeCvMUmZSG8GiQY;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLastUpdateTime:J

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsViewAttached:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAttachReserved:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsLockStarScaledPageShowing:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mRes:Landroid/content/res/Resources;

    const v1, 0x105018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mNavigationBarHeight:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mCurrentRoataion:I

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private dismissLockStarServiceBox()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockStarManager_KeyguardServiceBoxPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissLockStarServiceBox() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v1

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->setDuration(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->setFlag(Ljava/lang/String;ZZ)V

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsLockStarScaledPageShowing:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getAlpha()F

    move-result v7

    aput v7, v6, v4

    const/4 v4, 0x0

    aput v4, v6, v5

    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v2, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    iput v5, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    new-instance v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$6;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$6;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void
.end method

.method protected static getMainHandler()Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;
    .locals 3

    const-class v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->sHandler:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$1;)V

    sput-object v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->sHandler:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;

    :cond_0
    sget-object v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->sHandler:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSecTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarPagePosX:I

    iget v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarPagePosY:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getPaddingRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "KeyguardServiceBoxPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachContentsView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_2
    const-string v1, "KeyguardServiceBoxPage"

    const-string v2, "failed to get padding rect"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/servicebox/utils/SecTransitionOption;Z)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->setAdditionalTag(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private initSidePadding()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getClockSidePadding(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onChangedSidePadding()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private showLockStarServiceBox()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hasWindow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "PluginLockStarManager_KeyguardServiceBoxPage"

    const-string/jumbo v1, "showLockStarServiceBox() Keyguard is not showing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    const-string v1, "PluginLockStarManager_KeyguardServiceBoxPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showLockStarServiceBox() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setFullscreenMode(Z)V

    const-string/jumbo v1, "servicebox_clock"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v11, v1

    if-eqz v11, :cond_3

    const v1, 0x7f0d00a4

    goto :goto_0

    :cond_3
    const v1, 0x7f0d01f3

    :goto_0
    move v12, v1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v12, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-object v13, v1

    if-nez v13, :cond_4

    const-string v0, "PluginLockStarManager_KeyguardServiceBoxPage"

    const-string/jumbo v1, "showLockStarServiceBox() page is a null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v10, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v13, v2, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;Z)V

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isSViewCovered()Z

    move-result v1

    invoke-virtual {v13, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setCoverState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    move v1, v10

    :goto_1
    invoke-virtual {v13, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v10

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsLockStarScaledPageShowing:Z

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsLockStarScaledPageShowing:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_7

    invoke-virtual {v13, v2, v10}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    invoke-virtual {v13, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setIsLockStarScaledPageShowing(Z)V

    invoke-virtual {v13}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$3;

    invoke-direct {v1, p0, v13}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$3;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getLocationOnScreen()[I

    move-result-object v1

    aget v3, v1, v10

    aget v4, v1, v0

    invoke-virtual {v13, v3, v4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setLockStarPagePos(II)V

    instance-of v3, v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    if-eqz v3, :cond_8

    move-object v3, v13

    check-cast v3, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getLockStarClockType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setLockStarClockType(I)V

    :cond_8
    invoke-virtual {v13, v0, v10}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    invoke-virtual {v13, v2, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    new-instance v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$4;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    invoke-virtual {v13, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setLockStarDismissAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    move-object v1, v9

    move-object v2, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->showFloatingView(Ljava/lang/String;Landroid/view/View;ZZZIJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v10, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    nop

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v10, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    throw v0

    :cond_9
    :goto_4
    const-string v0, "PluginLockStarManager_KeyguardServiceBoxPage"

    const-string/jumbo v1, "showLockStarServiceBox() Already in progress or showing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "KeyguardServiceBoxPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachContentsView() holder is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->isTransitionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->isServiceBoxShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isReduceAnimation()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getContentsView(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x800003

    iput v5, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mGravity:I

    const-string v5, "KeyguardServiceBoxPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachContentsView() needToTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", childPage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "KeyguardServiceBoxPage"

    const-string v6, "attachContentsView %s %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    iget v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-static {v5, v6, v7}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->initSidePadding()V

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->initSecTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->isReadyState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {v2, v4, p1}, Lcom/android/systemui/servicebox/utils/SecTransition;->go(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    invoke-interface {p1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->initViews(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getGravity()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->updateGravity(I)V

    return-void
.end method

.method protected closeWindow()V
    .locals 3

    const-string v0, "KeyguardServiceBoxPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->dismissLockStarServiceBox()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->isExpanded()Z

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->disableBlurFlag()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected final disableBlurFlag()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->disableBlurFlag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final dismissServiceBox()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->dismissServiceBox(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->closeWindow()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected abstract getContentsView(I)Landroid/view/View;
.end method

.method protected getCutoutPadding()I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_CUTOUT_IN_LANDSCAPE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardCutout;->getInstance()Lcom/android/systemui/keyguard/KeyguardCutout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardCutout;->getSidePadding()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getGravity()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    const v1, 0x800003

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getCurrentClockType()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method protected getHeightOfHolder()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    return v1
.end method

.method protected abstract getHolder()Landroid/view/ViewGroup;
.end method

.method protected final getKeyguardStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getPaddingRect(Landroid/graphics/Rect;I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getCutoutPadding()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getTopPosYOfHolder()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHeightOfHolder()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x1

    return v1
.end method

.method protected getTopPosYOfHolder()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    return v1
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract initViews(Landroid/view/View;)V
.end method

.method protected isBigView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    return v0
.end method

.method protected final isExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isLandscape()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final isServiceBoxShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isShowServiceBox()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isTransitionEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeTransitionData()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->cancel()V

    :cond_1
    new-instance v1, Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/servicebox/utils/SecTransitionOption;Z)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setAdditionalTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "KeyguardServiceBoxPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    invoke-static {}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getMainHandler()Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mAttachContentsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;->cancelPrevious(Ljava/lang/Object;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mAttachContentsRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mAttachContentsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->refreshViews()V

    return-void
.end method

.method protected onChangedSidePadding()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->initSidePadding()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->closeWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setFullscreenMode(Z)V

    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "KeyguardServiceBoxPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetachedFromWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLockModeChanged()V
    .locals 0

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 0

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 0

    return-void
.end method

.method public onPeekTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onUpdateLockscreenHiddenItems()V
    .locals 0

    return-void
.end method

.method protected prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .locals 0

    return-void
.end method

.method public refreshViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->refreshViews(I)V

    return-void
.end method

.method public abstract refreshViews(I)V
.end method

.method public setCoverState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsCovered:Z

    return-void
.end method

.method protected setHeight(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "KeyguardServiceBoxPage"

    const-string/jumbo v1, "setHeight wrong view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIsLockStarScaledPageShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsLockStarScaledPageShowing:Z

    return-void
.end method

.method public setLockStarDismissAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setLockStarPagePos(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarPagePosX:I

    iput p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarPagePosY:I

    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsMKeyboardConnected:Z

    return-void
.end method

.method public setPageType(IZ)V
    .locals 3

    const-string v0, "KeyguardServiceBoxPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageType() pageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isReservedToTransition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    iput-boolean p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iput-boolean p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setHeight(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public showExternalActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final showServiceBox()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->showServiceBox(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->showLockStarServiceBox()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFloatingView()V
    .locals 0

    return-void
.end method

.method public updateGravity(I)V
    .locals 0

    return-void
.end method
