.class public Lcom/android/server/accessibility/GestureWakeup;
.super Ljava/lang/Object;
.source "GestureWakeup.java"


# static fields
.field static final TAG:Ljava/lang/String; = "GestureWakeup"

.field static mContext:Landroid/content/Context;

.field private static mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private static mPM:Landroid/os/PowerManager;

.field private static sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;


# instance fields
.field private mIsSettingGestureWakeUp:Z

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field mSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    sput-object v0, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    new-instance v0, Lcom/android/server/accessibility/GestureWakeup$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/GestureWakeup$1;-><init>(Lcom/android/server/accessibility/GestureWakeup;)V

    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    sput-object p1, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    return-void
.end method

.method private UnregisterApproachListener()V
    .registers 4

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    const-string v0, "GestureWakeup"

    const-string v1, "GestureWakeupService : UnregisterApproachListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/GestureWakeup;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/GestureWakeup;->launchGestureWakeup()V

    return-void
.end method

.method private finishGestureWakeup()V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/android/server/accessibility/GestureWakeup;->UnregisterApproachListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    const-string v0, "GestureWakeup"

    const-string/jumbo v1, "finish"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_22
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/accessibility/GestureWakeup;
    .registers 3

    const-class v0, Lcom/android/server/accessibility/GestureWakeup;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/accessibility/GestureWakeup;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/GestureWakeup;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    :cond_e
    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_33
    return-void
.end method

.method private launchGestureWakeup()V
    .registers 7

    const-string v0, "GestureWakeup"

    const-string/jumbo v1, "launchGestureWakeup()+"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "GestureWakeup"

    const-string/jumbo v2, "launchGestureWakeup() :: No action in Desktop mode+"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7d

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    goto :goto_7d

    :cond_3d
    sget-object v2, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    if-eqz v2, :cond_58

    :try_start_45
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "GestureWakeup"

    const-string v4, "..Cover is closed .."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59

    :cond_58
    nop

    :goto_59
    sget-object v3, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    if-nez v3, :cond_6a

    sget-object v3, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    sput-object v3, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    :cond_6a
    sget-object v3, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    sget-object v3, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.app.airwakeupview"

    const-string v5, "ACC3"

    invoke-static {v3, v4, v5}, Lcom/android/server/accessibility/GestureWakeup;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7d
    :goto_7d
    const-string v2, "GestureWakeup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CALL_STATE_OFFHOOK or CALL_STATE_RINGING : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerApproachListener()Z
    .registers 7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v1, :cond_2b

    const-string v1, "GestureWakeup"

    const-string/jumbo v2, "registerApproachListener, mSContextManager is null, create again "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_2b
    new-instance v1, Landroid/hardware/scontext/SContextApproachAttribute;

    invoke-direct {v1, v0}, Landroid/hardware/scontext/SContextApproachAttribute;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    const-string v2, "GestureWakeup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerApproachListener, CurrentUser : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_50
    const-string v1, "GestureWakeup"

    const-string v2, "GestureWakeup: registerApproachListener fail"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public StartGestureWakeup()Z
    .registers 5

    const-string v0, "GestureWakeup"

    const-string v1, "StartGestureWakeup()+"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-nez v0, :cond_30

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v0, "GestureWakeup"

    const-string v1, "StartGestureWakeup() create mCoverManager instance"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    invoke-direct {p0}, Lcom/android/server/accessibility/GestureWakeup;->registerApproachListener()Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "GestureWakeup"

    const-string v1, "StartGestureWakeup() Can\'t use proximity sensor in sensor hub"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_3f
    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "GestureWakeup"

    const-string v1, "GestureWakeup start success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public StopGestureWakeup()Z
    .registers 4

    const-string v0, "GestureWakeup"

    const-string v1, "StopGestureWakeup()+"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    iget-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    invoke-direct {p0}, Lcom/android/server/accessibility/GestureWakeup;->finishGestureWakeup()V

    const-string v0, "GestureWakeup"

    const-string v2, "GestureWakeup stop success"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1f
    const-string v0, "GestureWakeup"

    const-string v1, "GestureWakeup is aleady stopped"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public checkSettingCondition(Landroid/content/Context;)Z
    .registers 6

    monitor-enter p0

    nop

    nop

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    iput-boolean v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    const-string v0, "GestureWakeup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSettingCondition() mIsSettingGestureWakeUp = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " User mode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    monitor-exit p0

    return v0

    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v0
.end method
