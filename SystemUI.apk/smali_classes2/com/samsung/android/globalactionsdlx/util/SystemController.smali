.class public Lcom/samsung/android/globalactionsdlx/util/SystemController;
.super Ljava/lang/Object;
.source "SystemController.java"


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field private static final BIKE_MODE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.bikemode"

.field private static final INTERVAL_SCOVER_TRANSITION:I = 0xc8

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandlerWrapper:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mHandlerWrapper:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static synthetic lambda$doBugReport$0(Lcom/samsung/android/globalactionsdlx/util/SystemController;Z)V
    .registers 4

    if-eqz p1, :cond_14

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    const/16 v1, 0x125

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V

    goto :goto_23

    :catch_12
    move-exception v0

    goto :goto_24

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    const/16 v1, 0x124

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_12

    :goto_23
    goto :goto_25

    :goto_24
    nop

    :goto_25
    return-void
.end method


# virtual methods
.method public clearCoverStateChange()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "suppressCoverUI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miniModeUI"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public doBugReport(Z)V
    .registers 6

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mHandlerWrapper:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

    new-instance v1, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;-><init>(Lcom/samsung/android/globalactionsdlx/util/SystemController;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public goToHome()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public hideQuickPanel(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mHandlerWrapper:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;->obtainMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mHandlerWrapper:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public restoreQuickPanelBackground()V
    .registers 1

    return-void
.end method

.method public setDataEnabled(Z)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public startATTForceUpdate()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.attdm.intent.action.FIRSTNET_START_FORCE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.ws.dm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public startProKioskExitUI(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_14} :catch_17

    nop

    const/4 v1, 0x1

    return v1

    :catch_17
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method public toggleBikeMode(Z)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_14

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.bikemode"

    const-string v3, "com.samsung.android.app.bikemode.BMActivities.BMSplashScreen"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_25

    :cond_14
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.bikemode"

    const-string v3, "com.samsung.android.app.bikemode.BMActivities.BMONUnpinnedScreen"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.bikemode.ACTION_CLOSE_APP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_25
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_2a
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_34
    return-void
.end method

.method public toggleEmergencyMode()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enabled"

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SystemController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
