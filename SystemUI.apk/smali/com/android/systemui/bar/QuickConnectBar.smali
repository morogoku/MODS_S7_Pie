.class public Lcom/android/systemui/bar/QuickConnectBar;
.super Lcom/android/systemui/bar/QSBarItem;
.source "QuickConnectBar.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bar/QuickConnectBar$H;,
        Lcom/android/systemui/bar/QuickConnectBar$State;
    }
.end annotation


# static fields
.field private static final FADE_INOUT_ANIM_DURATION:I = 0x1a0

.field public static final PERMISSION_UPDATE_REMOTE_VIEWS:Ljava/lang/String; = "com.sec.android.systemui.UPDATE_REMOTE_VIEWS"

.field public static final QUICKCONNECT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.oneconnect"

.field public static final UPDATE_QS_REMOTE_VIEWS:Ljava/lang/String; = "com.android.systemui.update_qs_remote_views"

.field private static mState:Lcom/android/systemui/bar/QuickConnectBar$State;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetailShowing:Z

.field private mFraction:F

.field private mHandler:Lcom/android/systemui/bar/QuickConnectBar$H;

.field private mHeight:I

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mQuickConnectBarAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

.field private mRecursiveQSColoringTextColor:I

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

.field private mViewUpdateDelyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-direct {v0}, Lcom/android/systemui/bar/QuickConnectBar$State;-><init>()V

    sput-object v0, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-direct {v0}, Lcom/android/systemui/bar/QuickConnectBar$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mViewUpdateDelyed:Z

    iput-boolean v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mDetailShowing:Z

    new-instance v1, Lcom/android/systemui/bar/-$$Lambda$QuickConnectBar$QRxPhxv0RJaHTGSPmE-Fdwn7M3I;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/-$$Lambda$QuickConnectBar$QRxPhxv0RJaHTGSPmE-Fdwn7M3I;-><init>(Lcom/android/systemui/bar/QuickConnectBar;)V

    iput-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "enable_reserve_max_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "enable_reserve_max_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSettingsValueList:[Landroid/net/Uri;

    iput v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mRecursiveQSColoringTextColor:I

    new-instance v1, Lcom/android/systemui/bar/QuickConnectBar$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/QuickConnectBar$4;-><init>(Lcom/android/systemui/bar/QuickConnectBar;)V

    iput-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/bar/QuickConnectBar$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/QuickConnectBar$5;-><init>(Lcom/android/systemui/bar/QuickConnectBar;)V

    iput-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHeight:I

    new-instance v0, Lcom/android/systemui/bar/QuickConnectBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bar/QuickConnectBar$H;-><init>(Lcom/android/systemui/bar/QuickConnectBar;Lcom/android/systemui/bar/QuickConnectBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/bar/QuickConnectBar$H;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.systemui.update_qs_remote_views"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/bar/QuickConnectBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.sec.android.systemui.UPDATE_REMOTE_VIEWS"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/bar/QuickConnectBar;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v4, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/bar/QuickConnectBar;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/bar/QuickConnectBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/bar/QuickConnectBar;Lcom/android/systemui/bar/QuickConnectBar$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QuickConnectBar;->refresh(Lcom/android/systemui/bar/QuickConnectBar$State;)V

    return-void
.end method

.method private animateViews(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateViews in ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " out = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v1, Lcom/android/systemui/bar/QuickConnectBar$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/bar/QuickConnectBar$1;-><init>(Lcom/android/systemui/bar/QuickConnectBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method private clearView(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    iput-object v1, v0, Lcom/android/systemui/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/QuickConnectBar;->refresh(Lcom/android/systemui/bar/QuickConnectBar$State;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/bar/QuickConnectBar$H;

    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/bar/QuickConnectBar$H;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/bar/QuickConnectBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bar/QuickConnectBar$H;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private isViewUpdateAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isViewUpdateAvailable - mDetailShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mDetailShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mFraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mFraction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isPanelFullyExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyExpanded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isPanelFullyCollapsed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mDetailShowing:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/bar/QuickConnectBar;->isViewVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isViewVisible()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/bar/QuickConnectBar;Landroid/net/Uri;)V
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

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/QuickConnectBar;->clearView(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/bar/QuickConnectBar;->clearView(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private recursiveTintColor(Landroid/view/ViewGroup;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mRecursiveQSColoringTextColor:I

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/android/systemui/bar/QuickConnectBar;->recursiveTintColor(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/bar/QuickConnectBar;->mRecursiveQSColoringTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/bar/QuickConnectBar;->mRecursiveQSColoringTextColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private refresh(Lcom/android/systemui/bar/QuickConnectBar$State;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/bar/QuickConnectBar$State;->isEmptyRemoteView()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "refresh isEmptyRemoteView"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bar/QuickConnectBar$State;->copyTo(Lcom/android/systemui/bar/QuickConnectBar$State;Z)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/bar/QuickConnectBar;->updateView(Landroid/view/View;Z)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/bar/QuickConnectBar$State;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refresh remote = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-nez v4, :cond_4

    const-class v4, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v4}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const-class v5, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v5, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/bar/QuickConnectBar;->mRecursiveQSColoringTextColor:I

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    move-object v6, v3

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/LinearLayout;

    if-nez v7, :cond_2

    instance-of v7, v6, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    instance-of v7, v6, Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/bar/QuickConnectBar;->mRecursiveQSColoringTextColor:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v7, v6

    check-cast v7, Landroid/view/ViewGroup;

    invoke-direct {p0, v7}, Lcom/android/systemui/bar/QuickConnectBar;->recursiveTintColor(Landroid/view/ViewGroup;)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-virtual {p1, v4, v2}, Lcom/android/systemui/bar/QuickConnectBar$State;->copyTo(Lcom/android/systemui/bar/QuickConnectBar$State;Z)Z

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/bar/QuickConnectBar;->updateView(Landroid/view/View;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh() Exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refresh() NotFoundException - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/QuickConnectBar;->clearView(Z)V

    :goto_3
    nop

    :cond_5
    :goto_4
    return-void
.end method

.method private startSizeChangeAnimation(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

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

    iput-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/bar/QuickConnectBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/QuickConnectBar$2;-><init>(Lcom/android/systemui/bar/QuickConnectBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/bar/QuickConnectBar$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/QuickConnectBar$3;-><init>(Lcom/android/systemui/bar/QuickConnectBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateContainerHeight(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateContainerHeight height ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHeight:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHeight:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/QuickConnectBar;->startSizeChangeAnimation(II)V

    iput p1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHeight:I

    return-void
.end method

.method private updateView(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/QuickConnectBar;->updateContainerHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/QuickConnectBar;->updateContainerHeight(I)V

    :goto_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateView childCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/bar/QuickConnectBar;->animateViews(Landroid/view/View;Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "QCBar state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mCollapsed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    iget-object v0, v0, Lcom/android/systemui/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mExpanded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    iget-object v0, v0, Lcom/android/systemui/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mIsExpanded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    iget-boolean v0, v0, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getBarHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/bar/QuickConnectBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHeight:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d019b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/QuickConnectBar;->refresh(Lcom/android/systemui/bar/QuickConnectBar$State;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mBarRootView:Landroid/view/ViewGroup;

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

.method public onQsClosed()V
    .locals 4

    sget-object v0, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    iget-boolean v0, v0, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/bar/QuickConnectBar$H;

    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/bar/QuickConnectBar$H;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/bar/QuickConnectBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bar/QuickConnectBar$H;->sendMessage(Landroid/os/Message;)Z

    return-void
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

    iget-object v5, p0, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

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

    iget-object v5, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    iput-object v1, v5, Lcom/android/systemui/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    iput-object v4, v5, Lcom/android/systemui/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    if-eqz v4, :cond_1

    move v2, v3

    nop

    :cond_1
    iput-boolean v2, v5, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    iget-object v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    iget-boolean v2, v2, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    iget-boolean v2, v2, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v5, "8001"

    iget-object v6, p0, Lcom/android/systemui/bar/QuickConnectBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/bar/QuickConnectBar$H;

    invoke-virtual {v2, v3}, Lcom/android/systemui/bar/QuickConnectBar$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/bar/QuickConnectBar$H;

    iget-object v5, p0, Lcom/android/systemui/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/bar/QuickConnectBar$H;

    iget-object v6, p0, Lcom/android/systemui/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-virtual {v5, v3, v6}, Lcom/android/systemui/bar/QuickConnectBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/bar/QuickConnectBar$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/bar/QuickConnectBar;->clearView(Z)V

    return-void
.end method

.method public setPosition(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/bar/QSBarItem;->setPosition(F)V

    iput p1, p0, Lcom/android/systemui/bar/QuickConnectBar;->mFraction:F

    iget-boolean v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mViewUpdateDelyed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bar/QuickConnectBar;->mViewUpdateDelyed:Z

    sget-object v0, Lcom/android/systemui/bar/QuickConnectBar;->mState:Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/QuickConnectBar;->refresh(Lcom/android/systemui/bar/QuickConnectBar$State;)V

    :cond_1
    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 0

    return-void
.end method
