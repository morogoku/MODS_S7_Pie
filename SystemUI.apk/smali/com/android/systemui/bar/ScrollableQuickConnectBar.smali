.class public Lcom/android/systemui/bar/ScrollableQuickConnectBar;
.super Lcom/android/systemui/bar/ScrollableBarItem;
.source "ScrollableQuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;,
        Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;
    }
.end annotation


# static fields
.field private static final FADE_INOUT_ANIM_DURATION:I = 0x1a0

.field public static final PERMISSION_UPDATE_REMOTE_VIEWS:Ljava/lang/String; = "com.sec.android.systemui.UPDATE_REMOTE_VIEWS"

.field public static final QUICKCONNECT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.oneconnect"

.field public static final UPDATE_QS_REMOTE_VIEWS:Ljava/lang/String; = "com.android.systemui.update_qs_remote_views"

.field private static mState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;

.field private mHeight:I

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteViewsContainer:Landroid/view/ViewGroup;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    invoke-direct {v0}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;-><init>()V

    sput-object v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/ScrollableBarItem;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    invoke-direct {v0}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    new-instance v0, Lcom/android/systemui/bar/-$$Lambda$ScrollableQuickConnectBar$rpSLSxPyWrcqqp47quBtD5JuvK0;

    invoke-direct {v0, p0}, Lcom/android/systemui/bar/-$$Lambda$ScrollableQuickConnectBar$rpSLSxPyWrcqqp47quBtD5JuvK0;-><init>(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)V

    iput-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "enable_reserve_max_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "enable_reserve_max_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$4;-><init>(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)V

    iput-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$5;-><init>(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)V

    iput-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHeight:I

    new-instance v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;-><init>(Lcom/android/systemui/bar/ScrollableQuickConnectBar;Lcom/android/systemui/bar/ScrollableQuickConnectBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHandler:Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.systemui.update_qs_remote_views"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.sec.android.systemui.UPDATE_REMOTE_VIEWS"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v4, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/bar/ScrollableQuickConnectBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/bar/ScrollableQuickConnectBar;Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->refresh(Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;)V

    return-void
.end method

.method private animateViews(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    const-wide/16 v0, 0x1a0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bar/ScrollableQuickConnectBar$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$1;-><init>(Lcom/android/systemui/bar/ScrollableQuickConnectBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method private clearView(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    iput-object v1, v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mIsExpanded:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->refresh(Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHandler:Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;

    iget-object v1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHandler:Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/bar/ScrollableQuickConnectBar;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "enable_reserve_max_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "enable_reserve_max_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->clearView(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->clearView(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private refresh(Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->isEmptyRemoteView()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->copyTo(Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;Z)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->updateView(Landroid/view/View;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    invoke-virtual {p1, v4, v2}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->copyTo(Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;Z)Z

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->updateView(Landroid/view/View;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh() Exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refresh() NotFoundException - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->clearView(Z)V

    :goto_0
    nop

    :cond_1
    :goto_1
    return-void
.end method

.method private startSizeChangeAnimation(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/bar/ScrollableQuickConnectBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$2;-><init>(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/bar/ScrollableQuickConnectBar$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$3;-><init>(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateContainerHeight(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHeight:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHeight:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->startSizeChangeAnimation(II)V

    iput p1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHeight:I

    return-void
.end method

.method private updateView(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->updateContainerHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->updateContainerHeight(I)V

    :goto_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->animateViews(Landroid/view/View;Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "ScrollableQCBar state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mCollapsed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    iget-object v0, v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mExpanded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    iget-object v0, v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mIsExpanded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    iget-boolean v0, v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mIsExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d019b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0428

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isQuickConnectEnabled()Z

    move-result v0

    return v0
.end method

.method public receiveRemoteView(Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v1, "PKG_REPLACED"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "COLLAPSED"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    const-string v4, "EXPANDED"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "collapsed ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",  expanded ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    iput-object v1, v5, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    iput-object v4, v5, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    if-eqz v4, :cond_1

    move v2, v3

    nop

    :cond_1
    iput-boolean v2, v5, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mIsExpanded:Z

    iget-object v2, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    iget-boolean v2, v2, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mIsExpanded:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    iget-boolean v2, v2, Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;->mIsExpanded:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v5, "8001"

    iget-object v6, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHandler:Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;

    invoke-virtual {v2, v3}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHandler:Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;

    iget-object v5, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mHandler:Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;

    iget-object v6, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->mTmpState:Lcom/android/systemui/bar/ScrollableQuickConnectBar$State;

    invoke-virtual {v5, v3, v6}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/bar/ScrollableQuickConnectBar$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->clearView(Z)V

    return-void
.end method
