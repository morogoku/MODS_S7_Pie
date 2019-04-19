.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/servicebox/KeyguardStatusBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;
    }
.end annotation


# static fields
.field public static final SUPPORT_AOD_FEATURE_VERSION:I

.field private static mHideOnKeyguard:Z

.field private static mIsCovered:Z

.field private static mIsDeskMode:Z

.field private static sIsSViewCovered:Z


# instance fields
.field private mAdditionalInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

.field private final mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

.field private final mConfig:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;

.field private final mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field private mCurrentClockType:I

.field private mCurrentFullPagePkgName:Ljava/lang/String;

.field private mDisableTransitionType:Landroid/os/Handler;

.field private final mExpandStateChangeHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mHasCMAS:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsClockOnly:Z

.field private mIsExpanded:Z

.field private mIsKeyguardVisible:Z

.field private mIsMKeyboardConnected:Z

.field private mIsRotationEnabled:Z

.field private mIsScreenTurnedOn:Z

.field private mIsShowingOwnerInfoByAnim:Z

.field private mIsShownOwnBigPage:Z

.field private mIsUserUnlocked:Z

.field private final mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

.field private mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

.field private mNeedReissueAllPages:Z

.field private mNeedToDirectSetCurrentPage:Z

.field private mNotificationCount:I

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

.field private mOwnerInfoContainer:Landroid/widget/LinearLayout;

.field private mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

.field private mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mRemoteViewsItemMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

.field private final mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

.field private final mServiceBoxItemMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

.field private mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

.field private mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShowServiceBoxInProgress:Z

.field private mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

.field private final mUpdateConfigChangedRunnable:Ljava/lang/Runnable;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWakeUpReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "6"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->SUPPORT_AOD_FEATURE_VERSION:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    sput-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    sput-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    sput-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsKeyguardVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsClockOnly:Z

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedReissueAllPages:Z

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWakeUpReason:I

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedToDirectSetCurrentPage:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsShownOwnBigPage:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNotificationCount:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    new-instance v1, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$SKQoXFjwzjYj0N9naTHYJHOAUUQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$SKQoXFjwzjYj0N9naTHYJHOAUUQ;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$LC2lpMX91So8RZ-fJXQ98qe8LUQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$LC2lpMX91So8RZ-fJXQ98qe8LUQ;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateConfigChangedRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$4;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$6;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$6;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisableTransitionType:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mExpandStateChangeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$8;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    const-class v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setContainer(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    new-instance v1, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    new-instance v1, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;-><init>(Landroid/content/Context;Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance v1, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportFBE()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v0

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsUserUnlocked:Z

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;-><init>(Landroid/content/res/Configuration;Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mConfig:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateInfoContainer()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateComponentVisibility()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->refreshTime(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWakeUpReason:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWakeUpReason:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->handleScreenTurnedOn(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateRemoteViewsPage(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->refreshTime()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsKeyguardVisible:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedReissueAllPages:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedReissueAllPages:Z

    return p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsUserUnlocked:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsUserUnlocked:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/animation/LayoutTransition;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateExpandState(ZI)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->checkMusicIsActivated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->update()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisableTransitionType:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->wakeUp()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getAODClockGravity()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    return-object v0
.end method

.method private addOrUpdateRemoteViewsPage(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/KeyguardPageItem;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOrUpdateRemoteViewsPage() updated pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->getServiceBoxPageOrderList()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v2, "servicebox_clock"

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v2, :cond_5

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    goto :goto_2

    :cond_6
    if-nez v2, :cond_7

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    const-string v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOrUpdateRemoteViewsPage() appended pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3
.end method

.method private attachPage(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isPageEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachPage() pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->createInstanceInternalPage(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private attachRemoteViewsPages(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->createInstanceRemoteViewsPage(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachRemoteViewsPages() attach page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachRemoteViewsPages() no item pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private checkMusicIsActivated(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "servicebox_music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isMusicPlaying()Z

    move-result v1

    const-string v2, "KeyguardServiceBoxContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMusicIsActivated() ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setMusicActivated(Z)V

    return-void
.end method

.method private getAODClockGravity()I
    .locals 3

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getAODClockType()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const v2, 0xc35e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x800003

    :goto_0
    return v0
.end method

.method private getClockGravity()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x800003

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method private getDetailEventByPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    return-object v0

    :cond_0
    const-string/jumbo v0, "servicebox_calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2"

    return-object v0

    :cond_1
    const-string/jumbo v0, "servicebox_alarm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3"

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getKeyguardServiceBoxBigPage(Lcom/android/systemui/servicebox/pages/KeyguardPageItem;Z)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, v1, v2}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZI)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v3

    if-nez p2, :cond_2

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-virtual {v3, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V

    if-eqz p2, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$10;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$10;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v3, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v3
.end method

.method private getPackageNameChangeToCurrentFromRemoteViews()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isEnabledChangeToCurrent()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    iget-object v6, v4, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isEnabledChangeCurrentPage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->getLastUpdatedTime()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    iget-object v0, v4, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->getLastUpdatedTime()J

    move-result-wide v1

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private handleScreenTurnedOff()V
    .locals 2

    const-string v0, "KeyguardServiceBoxContainer"

    const-string v1, "handleScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setScreenTurnedOn(Z)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isAodServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardServiceBoxContainer"

    const-string v1, "Go to the clock page due to AOD is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "servicebox_clock"

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->verifyCurrentClockType()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedReissueAllPages:Z

    :cond_1
    return-void
.end method

.method private handleScreenTurnedOn(I)V
    .locals 5

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleScreenTurnedOn() why = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getPackageNameChangeToCurrentFromRemoteViews()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardServiceBoxContainer"

    const-string v2, "Go to the clock page. mHideOnKeyguard is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "servicebox_clock"

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Go to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->disableChangeToCurrent()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isMusicPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    if-nez v1, :cond_4

    const-string/jumbo v1, "servicebox_clock"

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxSharePageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    const-string v1, "KeyguardServiceBoxContainer"

    const-string v2, "Go to the music page due to UX concept"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "servicebox_music"

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isMusicPlaying()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne p1, v2, :cond_5

    const-string v1, "KeyguardServiceBoxContainer"

    const-string v2, "Go to the clock page due to Cover open concept"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "servicebox_clock"

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    :cond_5
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setScreenTurnedOn(Z)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsUserUnlocked:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v1, v4

    nop

    :cond_7
    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setSwipeLocked(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateAnalytics(Ljava/lang/String;Z)V

    return-void
.end method

.method private initDimens()V
    .locals 2

    const-string v0, "KeyguardServiceBoxContainer"

    const-string v1, "initDimens"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getMinHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->loadDimens(Landroid/content/res/Resources;)V

    return-void
.end method

.method private isAodServiceEnabled()Z
    .locals 2

    sget v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->SUPPORT_AOD_FEATURE_VERSION:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAodEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowFaceWidgetOnAod()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPageEnabled(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isPageEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSViewCovered()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    return v0
.end method

.method private isTypeClock()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$dismissServiceBox$2(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mAdditionalInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->updateAdditionInfoView()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mAdditionalInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->updateAdditionInfoView()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedToDirectSetCurrentPage:Z

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    :cond_0
    const-string v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged() : Update complete. Show contents. / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$sendRequestRemoteViewsBroadcast$3(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getMetadata()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;IIZ)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private launchBaseApplication(Ljava/lang/String;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "servicebox_music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "servicebox_calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private preProcessingBeforePageAttached(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "servicebox_calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "servicebox_music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->addCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshTime()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->refreshTime(I)V

    return-void
.end method

.method private refreshTime(I)V
    .locals 3

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshTime() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->refreshViews(I)V

    return-void
.end method

.method private saveCurrentPageKeyListForAOD()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->saveCurrentPageKeyListForAOD(Ljava/lang/String;)V

    return-void
.end method

.method private sendGsimLog(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method private sendRequestRemoteViewsBroadcast(Ljava/lang/String;IIZ)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.REQUEST_SERVICEBOX_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v1, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "pageId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "gravity"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYWI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v2, :cond_1

    const-string v2, "gravityAOD"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v2, "whiteTheme"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string v2, "KeyguardServiceBoxContainer"

    const-string/jumbo v3, "sendRequestRemoteViewsBroadcast() %s %s %d %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setMobileKeyboardState(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(ZZ)V

    return-void
.end method

.method private setMobileKeyboardState(ZZ)V
    .locals 3

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileKeyboardState() isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->setMobileKeyboardState(Z)V

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNotificationCount:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setExpandState(ZI)V

    return-void
.end method

.method private update()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAdditionalInfoView()V
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v6, v5}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->useAdditionInfo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v6}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->getLastUpdatedTime()J

    move-result-wide v7

    cmp-long v9, v0, v7

    if-gez v9, :cond_0

    move-wide v0, v7

    invoke-virtual {v6}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->getAdditionalView()Landroid/widget/RemoteViews;

    move-result-object v3

    move-object v2, v5

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mAdditionalInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->setAdditionalInfoView(Landroid/widget/RemoteViews;)V

    const-string v4, "KeyguardServiceBoxContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAdditionalInfoView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string v6, "no view"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateInfoContainer()V

    return-void
.end method

.method private updateAnalytics(Ljava/lang/String;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getDetailEventByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "107"

    goto :goto_0

    :cond_1
    const-string v1, "106"

    :goto_0
    if-eqz p2, :cond_2

    const-string v2, "1060"

    goto :goto_1

    :cond_2
    const-string v2, "1050"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    return-void
.end method

.method private updateComponentVisibility()V
    .locals 1

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenAllDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    return-void
.end method

.method private updateExpandState(ZI)V
    .locals 7

    const-string v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "updateExpandState() >> START >> isExpand=%s, mIsExpanded=%s, notiCount=%d, mNotiCount=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNotificationCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-ne v1, p1, :cond_3

    const-string v1, "KeyguardServiceBoxContainer"

    const-string/jumbo v2, "updateExpandState() << END << same state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput p2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNotificationCount:I

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    move v1, p1

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-nez v2, :cond_4

    move v2, v5

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    if-eqz p1, :cond_5

    move v4, v5

    nop

    :cond_5
    move v3, v4

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->makeTransitionData()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$9;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$9;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;IZ)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->invalidate()V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v4, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->setPageType(I)V

    :goto_1
    const-string v4, "KeyguardServiceBoxContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateExpandState() << END << isExpandFinal = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateInfoContainer()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateOwnerInfo()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateTextView()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mAdditionalInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->updateVisibility()V

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getClockSidePadding(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mAdditionalInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getClockGravity()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eq v4, v2, :cond_1

    move-object v5, v3

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mAdditionalInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eq v4, v2, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mAdditionalInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isTypeClock()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f070247

    goto :goto_0

    :cond_3
    const v5, 0x7f070246

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    move v1, v4

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    if-ne v2, v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    if-eq v2, v1, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v0, v1, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_7
    return-void
.end method

.method private updateRemoteViewsPage(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 4

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRemoteViewsPage() item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDeskMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->createInstanceRemoteViewsPage(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->addOrUpdateRemoteViewsPage(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/KeyguardPageItem;)Z

    nop

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentFullPagePkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hasWindow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KeyguardServiceBoxContainer"

    const-string/jumbo v3, "refresh big page"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-virtual {v2, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->setItem(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->updateFloatingView(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v2, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->updatePageItem(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->saveCurrentPageKeyListForAOD()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->removeRemoteViews(Ljava/lang/String;Z)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/aod/PluginAODManager;->isPlugged()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v2, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v2, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->getAODView(Z)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/aod/PluginAODManager;->setAODRemoteViews(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isShowServiceBox()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v2, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isEnabledChangeCurrentPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v2, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isShowingInServiceBoxOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateAdditionalInfoView()V

    return-void
.end method

.method private wakeUp()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "com.android.systemui:SERVICE_BOX"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void
.end method

.method private writePageToSettings(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxSharePageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writePageToSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disableBlurFlag(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableBlurFlag pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->setDuration(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->setFlag(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public dismissServiceBox(Ljava/lang/String;)V
    .locals 5

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissServiceBox pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->refreshTime()V

    const/4 v0, 0x0

    const-string/jumbo v2, "servicebox_clock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isFixedClockType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    :cond_1
    :goto_0
    new-instance v2, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$FUN_lZALaDw4RNQu_DZI53jwarU;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$FUN_lZALaDw4RNQu_DZI53jwarU;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V

    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateAnalytics(Ljava/lang/String;Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->resetTimer()V

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public dozeTimeTick()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->refreshTime()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const-string v0, "RemoteViewsItems"

    const-string v1, "ServiceBoxItems"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    nop

    :cond_1
    const/4 v2, 0x1

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v4

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    if-nez v5, :cond_2

    const-string v5, ": no item"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    const-string v5, " {\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v6, v1, v3

    array-length v7, v6

    move v8, v5

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v9, v6, v5

    if-eqz v8, :cond_3

    const-string v10, "    "

    goto :goto_3

    :cond_3
    const-string v10, ", "

    :goto_3
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const-string v5, "\n  }"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected getAODRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAODRemoteViews legacy pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v1, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isPermissionGrantedByPageId(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->getAODView(Z)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    :cond_1
    const-string v2, "KeyguardServiceBoxContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAODRemoteViews no item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentClockType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    return v0
.end method

.method public getCurrentPagePkgName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "clone_clock"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "servicebox_clock"

    :cond_1
    return-object v2
.end method

.method getMinHeight()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    nop

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f070724

    goto :goto_0

    :cond_0
    const v1, 0x7f070723

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    :cond_1
    const v1, 0x7f0706e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method public getMinTopMargin(Z)I
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->getTabletMinTopMargin(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isEnabledBioUnlock()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->getMinTopMargin(IZZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNotificationCount()I
    .locals 5

    const-string v0, "KeyguardServiceBoxContainer"

    const-string v1, "getNotificationCount %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNotificationCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNotificationCount:I

    return v0
.end method

.method getPaddingRect(Landroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v1

    nop

    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPaddingRect(Landroid/graphics/Rect;I)Z

    move-result v2

    return v2

    :cond_1
    return v1
.end method

.method public getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method isClockOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsClockOnly:Z

    return v0
.end method

.method public isContainerExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledBioUnlock()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInContentBounds(F)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getY()F

    move-result v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isKeyguardShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isShowServiceBox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->registerListener()V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    :cond_1
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v3}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {v3, v4}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isShowFaceWidgetOnKeyguard()Z

    move-result v3

    xor-int/2addr v3, v2

    sput-boolean v3, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsUserUnlocked:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setSwipeLocked(Z)V

    return-void
.end method

.method public onClockTypeChanged()V
    .locals 2

    const-string v0, "KeyguardServiceBoxContainer"

    const-string v1, "onClockTypeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getClockGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateGravity(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mConfig:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->access$3200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "KeyguardServiceBoxContainer"

    const-string v3, "onConfigurationChanged()"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mConfig:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->access$3300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedReissueAllPages:Z

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget v3, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eq v0, v3, :cond_4

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_4
    const-string/jumbo v0, "servicebox_calendar"

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isPageEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->onConfigurationChanged()V

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedReissueAllPages:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "KeyguardServiceBoxContainer"

    const-string v2, "onConfigurationChanged() : OrientationChanged. Hide contents before update complete."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateConfigChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateConfigChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedReissueAllPages:Z

    :cond_6
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->unregisterListener()V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method

.method public onDismissServiceBoxStarted(Ljava/lang/String;)V
    .locals 4

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDismissServiceBoxStarted pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    const/4 v1, 0x0

    const-wide/16 v2, 0x14d

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->setFullScreenMode(Ljava/util/function/Supplier;J)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedHashMap;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    const v0, 0x7f0a02a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/servicebox/-$$Lambda$CD4wwQMAYO-Y_UPcEEDKtHI02Gs;

    invoke-direct {v2, v1}, Lcom/android/systemui/servicebox/-$$Lambda$CD4wwQMAYO-Y_UPcEEDKtHI02Gs;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setOnPeekTouchEventListener(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateComponentVisibility()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->clearListeners()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->loadAllMetaData(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(ZZ)V

    :cond_1
    const v0, 0x7f0a028b

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    const v0, 0x7f0a0253

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mAdditionalInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

    const v0, 0x7f0a028c

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v1, 0x16f

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    return-void
.end method

.method public onPageSelected(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateAnalytics(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->checkMusicIsActivated(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->onSettingsChanged(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowFaceWidgetOnKeyguard()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    sget-boolean v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setSwipeLocked(Z)V

    return-void
.end method

.method public onSetupCompleted()V
    .locals 2

    const-string v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "onSetupCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateFaceWidgetInSettingMenu()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->hasOwnBigPage()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsShownOwnBigPage:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsShownOwnBigPage:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsShownOwnBigPage:Z

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowFocusChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchServiceBoxFullScreenMode(Z)V

    :cond_2
    return-void
.end method

.method protected playOwnerInfoAnimation(F)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mAdditionalInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    if-eqz v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-nez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    const-string v4, "KeyguardServiceBoxContainer"

    const-string/jumbo v5, "playOwnerInfoAnimation() show owner info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->resetMarqueeEffect()V

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    const-string v4, "KeyguardServiceBoxContainer"

    const-string/jumbo v5, "playOwnerInfoAnimation() hide owner info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_4
    :goto_0
    cmpl-float v3, v2, v3

    if-ltz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isShowServiceBox()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    if-nez v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->invalidate()V

    :cond_6
    :goto_1
    return-void
.end method

.method public reissueAllPages()V
    .locals 13

    const-string v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "reissueAllPages() >> START >>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPkgName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->clear()V

    const-string/jumbo v1, "servicebox_clock"

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->attachPage(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v6, "KeyguardServiceBoxContainer"

    const-string v7, "e=%s, u=%s, d=%s, owner=%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    sget-boolean v9, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    sget-boolean v6, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v5

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsClockOnly:Z

    iget-object v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-virtual {v6, v7}, Lcom/android/systemui/servicebox/pages/music/MusicController;->removeCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    iget-boolean v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsClockOnly:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->getPagesOrder()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v9}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->isInternalPage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-direct {p0, v9}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->attachPage(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-direct {p0, v9}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->preProcessingBeforePageAttached(Ljava/lang/String;)V

    :cond_4
    goto :goto_4

    :cond_5
    iget-object v12, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v12, v9}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isSystemUserOnly(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    invoke-direct {p0, v9}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->attachRemoteViewsPages(Ljava/lang/String;)V

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v9, v8}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isSystemUserOnly(Ljava/lang/String;)Z

    move-result v9

    iget-object v12, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v12, v8}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isShowingInServiceBoxOnly(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    if-eqz v9, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    invoke-direct {p0, v8}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->attachRemoteViewsPages(Ljava/lang/String;)V

    :cond_a
    goto :goto_5

    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->saveCurrentPageKeyListForAOD()V

    iget-object v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v6}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V

    iget-object v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    rem-int/lit8 v7, v6, 0x2

    sub-int v7, v6, v7

    div-int/2addr v7, v10

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v8, v7}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setOffscreenPageLimit(I)V

    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v8}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_d

    :cond_c
    const-string/jumbo v0, "servicebox_clock"

    :cond_d
    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    :cond_e
    sget-boolean v8, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v8, :cond_f

    iget-boolean v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v8, :cond_f

    iget-boolean v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v8}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateInfoContainer()V

    const-string v8, "KeyguardServiceBoxContainer"

    const-string/jumbo v9, "reissueAllPages() pageCount %d limit %d << END <<"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v5

    invoke-static {v8, v9, v10}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeRemoteViews(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRemoteViews() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRemoteViews() remoteViewsItemMap - no mapping for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->removeCacheData(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetaDataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->useAdditionInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateAdditionalInfoView()V

    goto :goto_0

    :cond_1
    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRemoteViews() serviceBoxItemMap - no mapping for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->saveCurrentPageKeyListForAOD()V

    return-void
.end method

.method public sendRequestRemoteViewsBroadcast()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getClockGravity()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getAODClockGravity()I

    move-result v2

    const-class v3, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/UiOffloadThread;

    new-instance v4, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;IIZ)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getClockGravity()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getAODClockGravity()I

    move-result v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAlpha "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method setCurrentClockType(I)V
    .locals 3

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentClockType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getClockGravity()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxPageGravity()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/util/SettingsHelper;->setServiceBoxPageGravity(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->onClockTypeChanged()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateInfoContainer()V

    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    if-eq v0, v2, :cond_4

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentClockType:I

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sendRequestRemoteViewsBroadcast()V

    :cond_4
    return-void
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    const-string v1, "KeyguardServiceBoxContainer"

    const-string/jumbo v2, "setCurrentPage() %s %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedToDirectSetCurrentPage:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedToDirectSetCurrentPage:Z

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v1, v0, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isShowServiceBox()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-nez v1, :cond_1

    move v4, v6

    nop

    :cond_1
    move v1, v4

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_2
    const-string v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCurrentPage() wrong pageIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public setExpandState(ZI)V
    .locals 4

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExpandState() isExpand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mExpandStateChangeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mExpandStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mExpandStateChangeHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mExpandStateChangeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-void
.end method

.method public showServiceBox(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->showServiceBox(Ljava/lang/String;ZI)V

    return-void
.end method

.method public showServiceBox(Ljava/lang/String;ZI)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    if-nez v3, :cond_0

    iget-object v0, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardServiceBoxContainer"

    const-string v4, "Ignore show service box. Screen is off and not external"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hasWindow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-boolean v0, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsKeyguardVisible:Z

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore show service box. mIsKeyguardVisible ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsKeyguardVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    const-string v4, "KeyguardServiceBoxContainer"

    const-string/jumbo v5, "showServiceBox p=%s, external=%s, isKeyguardShowing=%s, hideOnKgd=%s, o=%d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v6, v9

    sget-boolean v8, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v6, v10

    const/4 v8, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    iput-boolean v7, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    return-void

    :cond_3
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sendGsimLog(Ljava/lang/String;Z)V

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenAllDisabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->launchBaseApplication(Ljava/lang/String;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->wakeUp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean v7, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    return-void

    :cond_4
    :try_start_2
    iget-object v4, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v4, v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCacheData(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->showExternalActivity()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v0, "KeyguardServiceBoxContainer"

    const-string v5, "external activity is launched"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_5

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->wakeUp()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    iput-boolean v7, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    return-void

    :cond_7
    :try_start_3
    iget-object v5, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    if-eqz v5, :cond_e

    const-string/jumbo v6, "servicebox_clock"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    sget-boolean v8, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    if-eqz v8, :cond_a

    if-nez v6, :cond_a

    :cond_9
    iget-object v0, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->launchBaseApplication(Ljava/lang/String;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->wakeUp()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iput-boolean v7, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    return-void

    :cond_a
    :try_start_4
    const-string v8, "KeyguardServiceBoxContainer"

    const-string/jumbo v11, "showServiceBox!! %s %s %s"

    new-array v10, v10, [Ljava/lang/Object;

    sget-boolean v12, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v7

    iget-boolean v12, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v0

    sget-boolean v12, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v9

    invoke-static {v8, v11, v10}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v9

    sget-boolean v10, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-nez v10, :cond_b

    iget-boolean v10, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    if-nez v10, :cond_b

    sget-boolean v10, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v10, :cond_b

    const/4 v10, 0x1

    goto :goto_0

    :cond_b
    move/from16 v10, p3

    :goto_0
    :try_start_5
    iput-object v2, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentFullPagePkgName:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentFullPagePkgName:Ljava/lang/String;

    invoke-direct {v1, v5, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getKeyguardServiceBoxBigPage(Lcom/android/systemui/servicebox/pages/KeyguardPageItem;Z)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v15

    const/16 v18, 0x1

    if-eqz v3, :cond_c

    const-wide/16 v11, 0x1

    :goto_1
    move-wide/from16 v20, v11

    goto :goto_2

    :cond_c
    const-wide/16 v11, -0x1

    goto :goto_1

    :goto_2
    move-object v13, v9

    move/from16 v16, v8

    move/from16 v17, v8

    move/from16 v19, v10

    invoke-virtual/range {v13 .. v21}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->showFloatingView(Ljava/lang/String;Landroid/view/View;ZZZIJ)V

    iget-object v11, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    if-eqz v11, :cond_d

    iget-object v11, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    const-wide/16 v12, 0x64

    invoke-interface {v11, v9, v12, v13}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->setFullScreenMode(Ljava/util/function/Supplier;J)V

    :cond_d
    iget-object v11, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v11, v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateAnalytics(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_e
    move/from16 v10, p3

    :goto_3
    iput-boolean v7, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    nop

    return-void

    :catchall_1
    move-exception v0

    move/from16 v10, p3

    :goto_4
    iput-boolean v7, v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    throw v0

    :cond_f
    :goto_5
    const-string v0, "KeyguardServiceBoxContainer"

    const-string v4, "Ignore show service box. It is already in progress or showing"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateCMAS(Z)V
    .locals 3

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCMAS() hasCmasNotification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasCMAS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateOwnerInfo(Z)V

    :cond_0
    return-void
.end method

.method public updateClockPageLocation(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->updateClockPosition(F)V

    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedReissueAllPages:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "updateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mNeedReissueAllPages:Z

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->update()V

    :cond_0
    return-void
.end method
