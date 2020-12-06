.class public Lcom/android/systemui/statusbar/policy/NetspeedView;
.super Landroid/widget/TextView;
.source "NetspeedView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;,
        Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
    }
.end annotation


# static fields
.field private static mActiveInterface:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mNetspeedSwitch:Z

.field private static mVpnConnected:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isDexMode:Z

.field private mAttached:Z

.field private mBatteryIconDarkModeAlpha:F

.field private mBatteryIconLightModeAlpha:F

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDarkModeFillColor:I

.field private mIsForceTintColor:Z

.field private mLightModeFillColor:I

.field private mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

.field private mNetworkStats:Z

.field private mNetworkStatsHandler:Landroid/os/Handler;

.field private mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mNonAdaptedForegroundColor:I

.field private mQsTintIntensity:F

.field private mRegisterReceiver:Z

.field private mScreenOn:Z

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mShouldUseQsTintColor:Z

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVpnConnected:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVisibility:Z

    const-string v0, "NetworkSpeedView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIsForceTintColor:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$4;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    sput-object p1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVisibility:Z

    const-string v0, "NetworkSpeedView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIsForceTintColor:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$4;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    sput-object p1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVisibility:Z

    const-string v0, "NetworkSpeedView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIsForceTintColor:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$4;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    sput-object p1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->initView()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setNetworkSpeed()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mActiveInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mActiveInterface:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getActiveInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVpnConnected:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVpnConnected:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    return p1
.end method

.method private getActiveInterface(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NetworkSpeedView"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private initView()V
    .locals 5

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconLightModeAlpha:F

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconDarkModeAlpha:F

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    const v3, 0x7f040101

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    const v4, 0x7f04022b

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    const v3, 0x7f0602bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mLightModeFillColor:I

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    const v3, 0x7f0602bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mDarkModeFillColor:I

    return-void
.end method

.method private registerListener()V
    .locals 5

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_speed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private setNetworkSpeed()V
    .locals 3

    const-string v0, "NetworkSpeedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetspeedSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mNetworkStats = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVisibility:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVisibility:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->addObserver(Ljava/util/Observer;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private unregisterListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->registerListener()V

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setNetworkSpeed()V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIsForceTintColor:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    move v1, p2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    if-eqz v3, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mQsTintIntensity:F

    :cond_3
    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconLightModeAlpha:F

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconDarkModeAlpha:F

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconLightModeAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    nop

    :cond_4
    const-class v3, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    if-eqz v3, :cond_5

    const-class v3, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNonAdaptedForegroundColor:I

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mLightModeFillColor:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mDarkModeFillColor:I

    invoke-direct {p0, v1, v3, v4}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getColorForDarkIntensity(FII)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNonAdaptedForegroundColor:I

    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNonAdaptedForegroundColor:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setTextColor(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setAlpha(F)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070193

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0707c0

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->unregisterListener()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    return-void
.end method

.method public setForceQsTintColor(ZF)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mQsTintIntensity:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    const v2, -0x42000001    # -0.12499999f

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
