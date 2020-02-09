.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;
.super Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.source "KeyguardClockPage.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;
    }
.end annotation


# instance fields
.field private mBundleDeltaX:F

.field private mBundleDeltaY:F

.field private mBundleStartX:F

.field private mBundleStartY:F

.field private mClockHolder:Landroid/widget/FrameLayout;

.field private mClockKey:Ljava/lang/String;

.field private mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

.field private mClockType:I

.field private final mClockTypeResult:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;

.field private mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

.field private mIsDomesticRoamingIgnorable:Z

.field private mIsFMMLock:Z

.field private mIsNetworkRoaming:Z

.field private mIsRMMLock:Z

.field private mLocale:Ljava/util/Locale;

.field private mLockStarClockType:I

.field private mOrientation:I

.field private mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

.field private mRefreshLogCounter:I

.field private mScaleMode:I

.field protected mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mOrientation:I

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsFMMLock:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsRMMLock:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockTypeResult:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;-><init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarClockType:I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private considerChangeClockView()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method private considerChangeClockView(Z)V
    .locals 6

    const-string v0, "KeyguardClockPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "considerChangeClockView() >> START >> forceReplace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockTypeResult:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->runDetermineClockType(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockTypeResult:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;

    iget v2, v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->clockType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hometime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " locale:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasBG?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const-string v3, "KeyguardClockPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "previousClockKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", newClockKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockTypeResult:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;

    iget v3, v3, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->clockType:I

    iput v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    invoke-interface {v3, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setCurrentClockType(I)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    const-string v1, "KeyguardClockPage"

    const-string v3, "considerChangeClockView() << END <<"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static containsItem(I[I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    if-ne v3, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method private findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .locals 5

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x29a

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getClockType(Z)I
    .locals 1

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicClockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getClockType()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType(Z)I

    move-result v0

    return v0
.end method

.method private getNetworkSubId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private isBundleTransitionOnlyClockType(I)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->containsItem(I[I)Z

    move-result v1

    return v1

    nop

    :array_0
    .array-data 4
        0xc35f
        0xc35a
        0xc35d
    .end array-data
.end method

.method private isChangeableVerticalOrHorizontalClock()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isVerticalClockType(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v1

    xor-int/2addr v1, v2

    move v0, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isHorizontalClockType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getClockType(Z)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isVerticalClockType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method private isDateEmbeddedClockType(I)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->containsItem(I[I)Z

    move-result v1

    return v1

    nop

    :array_0
    .array-data 4
        0x3
        0x6
        0x7
    .end array-data
.end method

.method private isHorizontalClockType(I)Z
    .locals 1

    const v0, 0xc359

    if-eq p1, v0, :cond_1

    const v0, 0xc35c

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNetworkRoamingState()Z
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/Rune;->isRoamingWithVoiceOnly()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    if-nez v7, :cond_0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    goto :goto_0

    :cond_0
    if-nez v8, :cond_1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    :cond_1
    :goto_0
    const-string v9, "KeyguardClockPage"

    const-string v10, "isNetworkRoamingState id=%s vrs=%d drs=%d vrt=%d drt=%d roaming=%s"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v4

    const/4 v4, 0x3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v4

    const/4 v4, 0x4

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v4

    const/4 v4, 0x5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v11, v4

    invoke-static {v9, v10, v11}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v4, "KeyguardClockPage"

    const-string v5, "isNetworkRoamingState no ServiceState"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    const-string v3, "KeyguardClockPage"

    const-string v7, "isNetworkRoamingState id=%s roaming=%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v7, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    goto :goto_3

    :cond_4
    const-string v2, "KeyguardClockPage"

    const-string v3, "isNetworkRoamingState no TelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v0
.end method

.method private isVerticalClockType(I)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0xc358

    if-eq p1, v1, :cond_1

    const v1, 0xc35b

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic lambda$initViews$0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardClockPage"

    const-string v1, "DP Touch up close service box for DEX"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->closeWindow()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KeyguardClockPage"

    const-string v1, "DP Touch up start service box"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->showServiceBox()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onSizeChanged$1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;IIII)V
    .locals 9

    const-string v0, "KeyguardClockPage"

    const-string/jumbo v1, "onSizeChanged w=%d h=%d oldW=%d, oldH=%d"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-static {v0, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardClockPage"

    const-string/jumbo v1, "onSizeChanged externalClockView type=%d scale=%d w=%d h=%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private needToShowDualClock()Z
    .locals 7

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isDualClock()Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowRoamingClockOnKeyguard()Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setAutoHomecityTimezone(Landroid/content/Context;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "KeyguardClockPage"

    const-string v5, "needToShowDualClock() homecity_timezone is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/Rune;->canIgnoreDomesticRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "KeyguardClockPage"

    const-string v5, "needToShowDualClock() canIgnoreDomesticRoamingToShowSingleClock() is true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/Rune;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "KeyguardClockPage"

    const-string v5, "needToShowDualClock() isWiFiOnlyDevice() is true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const/4 v3, 0x1

    return v3

    :cond_4
    :goto_0
    const-string v4, "KeyguardClockPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needToShowDualClock() isRoamingClockEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isWhereToShowOptionEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isEasyModeEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsNetworkRoaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private setAutoHomecityTimezone(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "KeyguardClockPage"

    const-string/jumbo v2, "setAutoHomecityTimezone(): isDeviceProvisioned=false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string v3, "HomecityTimezoneDeviceProvisioned"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string v3, "HomecityTimezoneDeviceProvisioned"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_3

    const-string v3, "KeyguardClockPage"

    const-string/jumbo v4, "setAutoHomecityTimezone(): TelephonyManager=null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const-string v4, "KeyguardClockPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAutoHomecityTimezone(): simState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    return-void

    :cond_4
    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SET_SEOUL_AS_DEFAULT_HOMECITY_TIMEZONE:Z

    if-eqz v4, :cond_5

    const-string v0, "Asia/Seoul"

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/systemui/util/SettingsHelper;->setHomeTimeZone(Ljava/lang/String;)V

    const-string v4, "KeyguardClockPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAutoHomecityTimezone(): homecity_timezone set by SystemUI >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", homecity_timezone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", persist.sys.timezone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "persist.sys.timezone"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isNetworkRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isDomesticRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/Rune;->isDomesticRoaming(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", sim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v8, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", plmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "gsm.operator.numeric"

    const-string v7, ""

    invoke-static {v8, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", sim2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    const/4 v8, 0x1

    invoke-static {v8, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", plmn2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "gsm.operator.numeric"

    const-string v7, ""

    invoke-static {v8, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", sim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", plmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "gsm.operator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getNetworkSubId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string v6, "HomecityTimezoneSet"

    invoke-static {v5, v6, v4}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    :cond_0
    return-void
.end method

.method private updateScaleMode(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v2}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v1

    xor-int/2addr v1, v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;->isEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v5}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isEnabledBioUnlock()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v6}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getNotificationCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v3, :cond_4

    move v7, v3

    goto :goto_1

    :cond_4
    nop

    move v7, v2

    :goto_1
    invoke-static {v1, v4, v5, v6, v7}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->getScaleMode(ZZZIZ)I

    move-result v0

    :cond_5
    const-string v1, "KeyguardClockPage"

    const-string/jumbo v4, "scaleMode %s"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v4, v5}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    if-eq v1, v0, :cond_6

    const-string v1, "KeyguardClockPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateScaleMode() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    if-eqz p1, :cond_6

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenClockEnabled()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenDateEnabled()Z

    move-result v2

    const/4 v3, 0x4

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setTimeVisibility(I)V

    :cond_1
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setDateVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "mShouldShowDualClock"

    const-string v1, "mShouldShowDefaultClock"

    const-string v2, "mIsThemeImageClock"

    const-string v3, "mIsNetworkRoaming"

    const-string v4, "mIsDomesticRoamingIgnorable"

    const-string v5, "mClockKey"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockTypeResult:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->access$100(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockTypeResult:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->access$200(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockTypeResult:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->access$000(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsDomesticRoamingIgnorable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    nop

    :goto_0
    move v2, v3

    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    defaultSubId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getNetworkSubId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isDomesticRoaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Rune;->isDomesticRoaming(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mClockView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / scalable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mClockType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / scaleMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    lastUpdatedClockColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getLastUpdatedClockColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    lastUpdatedClockType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getLastUpdatedClockType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected getContentsView(I)Landroid/view/View;
    .locals 12

    const-string v0, "KeyguardClockPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContentsView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicClockEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getClockGravity()I

    move-result v7

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getClockPaddingStart()I

    move-result v8

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getClockPaddingEnd()I

    move-result v9

    const/4 v10, -0x1

    if-eq v7, v10, :cond_0

    move v11, v7

    goto :goto_0

    :cond_0
    move v11, v3

    :goto_0
    move v3, v11

    if-eq v8, v10, :cond_1

    move v11, v8

    goto :goto_1

    :cond_1
    move v11, v4

    :goto_1
    move v4, v11

    if-eq v9, v10, :cond_2

    move v10, v9

    goto :goto_2

    :cond_2
    move v10, v5

    :goto_2
    move v5, v10

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v7, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setParentType(I)V

    if-eqz v6, :cond_8

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v4, v7, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    goto :goto_4

    :cond_5
    const/4 v0, -0x2

    if-nez v6, :cond_7

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v7, 0x800003

    invoke-direct {v1, v0, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v4, v1, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_4
    move-object v0, v2

    check-cast v0, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setScaleMode(I)V

    :cond_9
    return-object v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_b

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    return-object v2

    :cond_c
    const-string v0, "KeyguardClockPage"

    const-string v1, "Lockscreen doesn\'t need to show clock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentClockType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    return v0
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLockStarClockType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarClockType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_clock"

    return-object v0
.end method

.method public getPaddingRect(Landroid/graphics/Rect;I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getCutoutPadding()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getPaddingEnd()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getWidth()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v2}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getTopPosYOfHolder()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getHeightOfHolder()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x1

    return v1
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .locals 3

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    goto :goto_0

    :cond_0
    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    goto :goto_0

    :cond_1
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :goto_0
    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 3

    const-string v0, "KeyguardClockPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initViews() mClockView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    new-instance v1, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$BhJv_JRzFHyQH7X-kP0XMuGKCsA;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$BhJv_JRzFHyQH7X-kP0XMuGKCsA;-><init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public makeTransitionData()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isChangeableVerticalOrHorizontalClock()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v1

    new-instance v2, Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/servicebox/utils/SecTransitionOption;Z)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->setAdditionalTag(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method public onClockColorChanged()V
    .locals 2

    const-string v0, "KeyguardClockPage"

    const-string/jumbo v1, "onClockColorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method public onClockPackageChanged()V
    .locals 0

    return-void
.end method

.method public onClockStyleChanged()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mOrientation:I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    const v0, 0x7f0a026a

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public onLockModeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->canIgnoreDomesticRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "KeyguardClockPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRefreshCarrierInfo(pre, now): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    if-eq v3, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    const/4 v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsDomesticRoamingIgnorable:Z

    if-eq v3, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsDomesticRoamingIgnorable:Z

    const/4 v2, 0x1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView()V

    :cond_3
    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onSizeChanged(IIII)V

    new-instance v6, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;-><init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;IIII)V

    invoke-static {v6}, Lcom/android/systemui/util/LogUtil;->runInDebugLevelMidOnly(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateLockscreenHiddenItems()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    const-string v0, "KeyguardClockPage"

    const-string/jumbo v1, "performAccessibilityAction DP Touch up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "KeyguardClockPage"

    const-string v1, "DP Touch up start service box"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->showServiceBox()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->playSoundEffect(I)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_d

    iget v2, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v6, :cond_b

    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    const-string v9, "common_clock_transition_bundle"

    invoke-direct {v0, v2, v9}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v9, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v9}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v10

    new-array v11, v6, [I

    invoke-virtual {v2, v11}, Landroid/view/View;->getLocationInWindow([I)V

    const v12, 0xc360

    const v13, 0xc35f

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v9, v12, :cond_2

    const-string v12, "common_clock_transition_hour"

    invoke-virtual {v1, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v12

    const-string v4, "common_clock_transition_colon"

    invoke-virtual {v12, v4, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_minute"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    goto/16 :goto_0

    :cond_2
    invoke-direct {v0, v9}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isHorizontalClockType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "common_clock_transition_sec_colon"

    invoke-virtual {v1, v4, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_second"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    goto/16 :goto_0

    :cond_3
    invoke-direct {v0, v9}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isVerticalClockType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "common_clock_transition_colon"

    invoke-virtual {v1, v4, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_sec_colon"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_second"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    goto :goto_0

    :cond_4
    invoke-direct {v0, v9}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isDateEmbeddedClockType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "common_clock_transition_hour"

    invoke-virtual {v1, v4, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_colon"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_minute"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_sec_colon"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_second"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_date"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_date_shamsi"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    goto :goto_0

    :cond_5
    invoke-direct {v0, v9}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBundleTransitionOnlyClockType(I)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "common_clock_transition_hour"

    invoke-virtual {v1, v4, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_colon"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_minute"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_sec_colon"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v12, "common_clock_transition_second"

    invoke-virtual {v4, v12, v10}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    goto :goto_0

    :cond_6
    if-ne v13, v9, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    iput v4, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v15

    aget v12, v11, v8

    int-to-float v12, v12

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float/2addr v4, v12

    iput v4, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    :cond_7
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    iput v4, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v15

    aget v12, v11, v7

    int-to-float v12, v12

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v16

    mul-float v13, v13, v16

    add-float/2addr v12, v13

    sub-float/2addr v4, v12

    iput v4, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    iput v4, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v15

    aget v12, v11, v8

    int-to-float v12, v12

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float/2addr v4, v12

    iput v4, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v15

    aget v12, v11, v7

    int-to-float v12, v12

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float/2addr v4, v12

    iput v4, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    :cond_8
    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v12, v7, [Landroid/animation/Animator;

    sget-object v13, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v14, v6, [F

    iget v15, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    aput v15, v14, v8

    iget v15, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    iget v6, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    add-float/2addr v15, v6

    aput v15, v14, v7

    invoke-static {v5, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v12, v8

    invoke-virtual {v4, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    new-array v6, v7, [Landroid/animation/Animator;

    sget-object v12, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v14, v13, [F

    iget v13, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    aput v13, v14, v8

    iget v13, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    iget v15, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    add-float/2addr v13, v15

    aput v13, v14, v7

    invoke-static {v5, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v6, v8

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v6, v7, [Landroid/animation/Animator;

    sget-object v12, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v14, v13, [F

    fill-array-data v14, :array_0

    invoke-static {v5, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v6, v8

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v6, v7, [Landroid/animation/Animator;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v13, [F

    fill-array-data v12, :array_1

    invoke-static {v5, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v6, 0x24

    invoke-virtual {v3, v6}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    goto :goto_1

    :cond_9
    const v6, 0xc35f

    if-ne v6, v9, :cond_a

    new-array v6, v7, [Landroid/animation/Animator;

    sget-object v12, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v13, v13, [F

    iget v14, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    aput v14, v13, v8

    iget v14, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    iget v15, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    add-float/2addr v14, v15

    aput v14, v13, v7

    invoke-static {v5, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v6, 0x24

    invoke-virtual {v3, v6}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_a
    :goto_1
    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    const-string v5, "common_clock_transition_bundle"

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v2

    const/16 v4, 0x14d

    invoke-virtual {v2, v4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v2

    const-string v4, "common_clock_transition_hour"

    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v6, "common_clock_transition_colon"

    invoke-virtual {v4, v6, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v6, "common_clock_transition_minute"

    invoke-virtual {v4, v6, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v6, "common_clock_transition_date"

    invoke-virtual {v4, v6, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    move-result-object v4

    const-string v6, "common_clock_transition_date_shamsi"

    invoke-virtual {v4, v6, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v7, [Landroid/animation/Animator;

    sget-object v9, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v11, v10, [F

    iget v10, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    iget v12, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    add-float/2addr v10, v12

    aput v10, v11, v8

    iget v10, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    aput v10, v11, v7

    invoke-static {v5, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    new-array v6, v7, [Landroid/animation/Animator;

    sget-object v9, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v11, v10, [F

    iget v10, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    iget v12, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    add-float/2addr v10, v12

    aput v10, v11, v8

    iget v10, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    aput v10, v11, v7

    invoke-static {v5, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v6, v7, [Landroid/animation/Animator;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v11, v10, [F

    fill-array-data v11, :array_2

    invoke-static {v5, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v6, v7, [Landroid/animation/Animator;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v10, [F

    fill-array-data v9, :array_3

    invoke-static {v5, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v6, 0x24

    invoke-virtual {v3, v6}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_c
    const-wide/16 v6, 0x14d

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    const-string v5, "common_clock_transition_bundle"

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    goto :goto_2

    :cond_d
    const-string v2, "common_clock_transition_bundle"

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v4

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setPivot(II)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public refreshViews(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string v0, "KeyguardClockPage"

    const-string/jumbo v1, "refreshViews#start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->refresh()V

    const-string v0, "KeyguardClockPage"

    const-string/jumbo v1, "refreshViews#end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public runDetermineClockType(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v6

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFMMLock()Z

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v9

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move v10, v3

    :goto_1
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicClockEnabled()Z

    move-result v11

    if-eqz v10, :cond_2

    iget-object v12, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v12}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isThemeClockEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    if-nez v11, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    move v12, v3

    :goto_2
    if-eqz v12, :cond_3

    iget-object v13, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f05004b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    move v13, v3

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->needToShowDualClock()Z

    move-result v14

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v15, v3

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v15, 0x1

    :goto_5
    if-nez v5, :cond_6

    if-nez v2, :cond_7

    :cond_6
    if-eqz v5, :cond_8

    if-nez v8, :cond_8

    if-nez v9, :cond_8

    :cond_7
    const/4 v3, 0x1

    nop

    :cond_8
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarClockType:I

    :goto_6
    move/from16 v18, v2

    move v0, v4

    move/from16 v4, p2

    goto :goto_c

    :cond_9
    if-eqz v12, :cond_d

    if-eqz v13, :cond_b

    if-eqz v14, :cond_a

    const v4, 0xc35d

    goto :goto_7

    :cond_a
    const v4, 0xc360

    :goto_7
    goto :goto_6

    :cond_b
    if-eqz v14, :cond_c

    const v4, 0xc35a

    goto :goto_8

    :cond_c
    const v4, 0xc35f

    :goto_8
    goto :goto_6

    :cond_d
    if-eqz v14, :cond_e

    const/4 v4, 0x7

    :goto_9
    move/from16 v16, v4

    move/from16 v4, p2

    goto :goto_a

    :cond_e
    if-eqz v15, :cond_f

    iget-object v4, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getDefaultClockType()I

    move-result v4

    goto :goto_9

    :cond_f
    move/from16 v4, p2

    invoke-direct {v0, v4}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getClockType(Z)I

    move-result v16

    :goto_a
    move/from16 v17, v16

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v16

    if-nez v16, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isLandscape()Z

    move-result v16

    if-eqz v16, :cond_10

    goto :goto_b

    :cond_10
    move/from16 v18, v2

    move/from16 v0, v17

    goto :goto_c

    :cond_11
    :goto_b
    move/from16 v18, v2

    move/from16 v0, v17

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    const/4 v0, 0x2

    :cond_12
    :goto_c
    iput v0, v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->clockType:I

    invoke-static {v1, v13}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->access$002(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;Z)Z

    invoke-static {v1, v14}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->access$102(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;Z)Z

    invoke-static {v1, v15}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->access$202(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;Z)Z

    return-void
.end method

.method public setLockStarClockType(I)V
    .locals 3

    if-gtz p1, :cond_0

    const-string v0, "PluginLockStarManager_KeyguardClockPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid clock type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarClockType:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public setLockStarClockType(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "clock"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setLockStarClockType(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    return-void
.end method

.method public setPageType(IZ)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iput p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getOwnerInfoMgr(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setHeight(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockType:I

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setCurrentClockType(I)V

    :cond_2
    return-void
.end method
