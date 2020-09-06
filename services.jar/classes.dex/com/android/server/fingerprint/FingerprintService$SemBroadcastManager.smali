.class Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemBroadcastManager"
.end annotation


# static fields
.field public static final BR_ENROLL:I = 0x1

.field public static final BR_FOD:I = 0x4

.field public static final BR_GESTURE:I = 0x2


# instance fields
.field mBrAlways:Landroid/content/BroadcastReceiver;

.field mBrScreenOff:Landroid/content/BroadcastReceiver;

.field mBrScreenOn:Landroid/content/BroadcastReceiver;

.field private mH:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrAlways:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrAlways:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method private setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 7

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemBroadcastManager : setReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-nez p2, :cond_2c

    const-string v0, "FingerprintService"

    const-string v1, "SemBroadcastManager : setReceiver : receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    if-eqz p1, :cond_3a

    :try_start_2e
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_43

    :catch_38
    move-exception v0

    goto :goto_44

    :cond_3a
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_43} :catch_38

    :goto_43
    goto :goto_4c

    :goto_44
    nop

    const-string v1, "FingerprintService"

    const-string v2, "SemBroadcastManager : failed to set receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    return-void
.end method


# virtual methods
.method declared-synchronized add(I)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    :try_start_4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_5c

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_5c

    :catchall_1c
    move-exception p1

    goto :goto_5e

    :cond_1e
    const/4 v1, 0x2

    if-eq p1, v1, :cond_24

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5c

    :cond_24
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_40

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_40
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_5c

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_1c

    :cond_5c
    :goto_5c
    monitor-exit p0

    return-void

    :goto_5e
    monitor-exit p0

    throw p1
.end method

.method handleAction(Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemBroadcastManager : onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x11

    if-nez v1, :cond_c6

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto/16 :goto_c6

    :cond_2e
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_85

    :cond_3f
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_USER_REMOVED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v2, :cond_122

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-nez v2, :cond_122

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_122

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v3, ""

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I
    invoke-static {v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5500(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_122

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v3, -0x1

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->semRemoveFinger(II)I
    invoke-static {v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5600(Lcom/android/server/fingerprint/FingerprintService;II)I

    goto/16 :goto_122

    :cond_85
    :goto_85
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_122

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_122

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v1

    if-nez v1, :cond_122

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_b3

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v1, :cond_b3

    const-string/jumbo v1, "fod_enable,1,1"

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :cond_b3
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->semIsEnabledNavigationMode()Z
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5300(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v1

    if-eqz v1, :cond_122

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    goto :goto_122

    :cond_c6
    :goto_c6
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_f8

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    const/4 v1, 0x1

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_10d

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v3, :cond_10d

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v3

    if-nez v3, :cond_f1

    const-string/jumbo v4, "fod_enable,0"

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    goto :goto_f7

    :cond_f1
    const-string/jumbo v4, "fod_enable,1,0"

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :goto_f7
    goto :goto_10d

    :cond_f8
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$5400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_10d

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$5400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v3

    if-eqz v3, :cond_10d

    const/4 v1, 0x1

    :cond_10d
    :goto_10d
    if-eqz v1, :cond_121

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->semIsEnabledNavigationMode()Z
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$5300(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v3

    if-eqz v3, :cond_121

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$5200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    :cond_121
    nop

    :cond_122
    :goto_122
    return-void
.end method

.method declared-synchronized remove(I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->semIsEnabledNavigationMode()Z
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$5300(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    goto :goto_34

    :catchall_16
    move-exception p1

    goto :goto_32

    :cond_18
    const/4 v0, 0x2

    if-ne p1, v0, :cond_34

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$4300(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    :cond_2a
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_16

    goto :goto_34

    :goto_32
    monitor-exit p0

    throw p1

    :cond_34
    :goto_34
    monitor-exit p0

    return-void
.end method
