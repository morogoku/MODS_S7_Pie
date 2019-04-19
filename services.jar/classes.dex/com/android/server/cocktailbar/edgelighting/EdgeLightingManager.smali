.class public Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
.super Ljava/lang/Object;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

.field private mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

.field private mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRinging:Z

.field private mScreenOnTimeStamp:J

.field private mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTurnOverLightingPackage:Ljava/lang/String;

.field private mUserId:I

.field private mUserSetupCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->registerReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hideEdgeLightingInternal(Ljava/lang/String;I)V
    .registers 6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_27

    :cond_8
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideEdgeLightingInternal : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    return-void
.end method

.method private hideForWakeLockInternal(Ljava/lang/String;II)V
    .registers 7

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : user setup is not yet completed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v1

    if-nez v1, :cond_34

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_2b

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_33

    :cond_2b
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void

    :cond_34
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_4e

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_45

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_4d

    :cond_45
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return-void

    :cond_4e
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-eqz v1, :cond_60

    goto :goto_7f

    :cond_60
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_79

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_70

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_78

    :cond_70
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return-void

    :cond_79
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    return-void

    :cond_7f
    :goto_7f
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_87

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_8f

    :cond_87
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by checking disable policy."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    return-void
.end method

.method private isCallingUserSupported(I)Z
    .registers 6

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_c

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_35

    :cond_c
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCallingUserSupported : callingUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isDualAppId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    if-nez v1, :cond_41

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    if-eq v1, p1, :cond_3f

    if-eqz v0, :cond_41

    :cond_3f
    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    return v1
.end method

.method private isEdgeLightingServiceUnbinded()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->existsHosts()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private isUserSetupCompleted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->verifyUserSetupCompleted()V

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    return v0
.end method

.method private registerReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V
    .registers 12

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const-string v1, "color"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    new-instance v2, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/16 v3, 0x7d1

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v0

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    move-object v0, v2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setUserId(I)V

    if-eqz p3, :cond_26

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setRepeatCount(I)V

    :cond_26
    if-eqz p2, :cond_2b

    invoke-virtual {v0, p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    :cond_2b
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_33

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v2, :cond_52

    :cond_33
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showEdgeLightingInternal : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v2, p1, v0, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method private showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZIIZ)Z
    .registers 25

    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v9

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_27

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_26

    :cond_1e
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return v10

    :cond_27
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_40

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_37

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_3f

    :cond_37
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return v10

    :cond_40
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_c3

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_c3

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v11, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto/16 :goto_c3

    :cond_5b
    iget-object v12, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p5

    move/from16 v17, p6

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZ)Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff No peeking: suppressed due to group alert behavior"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_84
    and-int/lit8 v0, v9, 0x4

    if-eqz v0, :cond_8a

    move v0, v11

    goto :goto_8b

    :cond_8a
    move v0, v10

    :goto_8b
    move v13, v0

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move/from16 v14, p4

    invoke-virtual {v0, v7, v11, v13, v14}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    if-nez v0, :cond_a7

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9e

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_a6

    :cond_9e
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    return v10

    :cond_a7
    const/4 v0, 0x4

    if-ne v9, v0, :cond_ac

    move v0, v11

    goto :goto_ad

    :cond_ac
    move v0, v10

    :goto_ad
    move v15, v0

    const/4 v3, 0x0

    if-eqz v15, :cond_b4

    const/4 v0, 0x7

    move v4, v0

    goto :goto_b5

    :cond_b4
    move v4, v11

    :goto_b5
    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v7

    move-object v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_c2

    move v10, v11

    nop

    :cond_c2
    return v10

    :cond_c3
    :goto_c3
    move/from16 v14, p4

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZIIZ)Z
    .registers 26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v11

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_2c

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_2b

    :cond_23
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return v13

    :cond_2c
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_45

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_3c

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_44

    :cond_3c
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return v13

    :cond_45
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v9, v1, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v14

    if-nez v14, :cond_57

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEnabledHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_124

    :cond_57
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v0

    if-eqz v0, :cond_124

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_124

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v12}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_124

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v12, v9}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    goto/16 :goto_124

    :cond_79
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move-object v1, v7

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZ)Landroid/os/Bundle;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_97

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : texts are empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_97
    if-eqz p3, :cond_bb

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_bb

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn Alert once notification. sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_bb
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_d4

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn No peeking: suppressed due to group alert behavior"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_d4
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v9, v12, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_ed

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_e4

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_ec

    :cond_e4
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    return v13

    :cond_ed
    if-nez p2, :cond_f3

    move v0, v14

    move/from16 v16, v0

    goto :goto_f5

    :cond_f3
    move/from16 v16, p2

    :goto_f5
    if-eqz v16, :cond_101

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_101

    move v0, v12

    goto :goto_102

    :cond_101
    move v0, v13

    :goto_102
    move/from16 v17, v0

    if-eqz v17, :cond_11c

    const/4 v0, 0x4

    if-ne v11, v0, :cond_10b

    move v0, v12

    goto :goto_10c

    :cond_10b
    move v0, v13

    :goto_10c
    move/from16 v18, v0

    const/4 v3, 0x0

    if-eqz v18, :cond_114

    const/4 v0, 0x7

    move v4, v0

    goto :goto_115

    :cond_114
    move v4, v12

    :goto_115
    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v9

    move-object v2, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    :cond_11c
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_123

    move/from16 v13, v17

    nop

    :cond_123
    return v13

    :cond_124
    :goto_124
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotificationScreenOn : return false by checking disable policy."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13
.end method

.method private showForTurnOverNotification(ZLjava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_8d

    :cond_1a
    if-eqz p2, :cond_59

    if-nez p1, :cond_37

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p2, v1, v1, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    if-nez v0, :cond_59

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_2e

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_36

    :cond_2e
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForTurnOverNotification : return false by isAcceptableApplication.1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void

    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4e

    iget-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4e

    return-void

    :cond_4e
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/16 v3, 0x400

    invoke-virtual {v2, p2, v3, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_59

    return-void

    :cond_59
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    :cond_65
    iput-object p2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForTurnOverNotification : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startTurnOverLighting(Ljava/lang/String;ILcom/samsung/android/edge/SemEdgeLightingInfo;)V

    :cond_8c
    return-void

    :cond_8d
    :goto_8d
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForTurnOverNotification : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showForWakeLockInternal(Ljava/lang/String;II)Z
    .registers 14

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForWakeLockInternal : user setup is not yet completed"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v1

    if-nez v1, :cond_34

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_2b

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_33

    :cond_2b
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return v2

    :cond_34
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_4e

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_45

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_4d

    :cond_45
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return v2

    :cond_4e
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_84

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-eqz v1, :cond_60

    goto :goto_84

    :cond_60
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, p1, v3, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_79

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_70

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_78

    :cond_70
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return v2

    :cond_79
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x4

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 v1, 0x1

    return v1

    :cond_84
    :goto_84
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_8c

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_94

    :cond_8c
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForWakeLockInternal : return false by checking disable policy."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    return v2
.end method

.method private showForWakeUpInternal(Ljava/lang/String;II)Z
    .registers 14

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForWakeUpInternal : user setup is not yet completed"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v1

    if-nez v1, :cond_34

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_2b

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_33

    :cond_2b
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return v2

    :cond_34
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_4e

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_45

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_4d

    :cond_45
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForWakeUpInternal : return false by isAvailableEdgeLighting."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return v2

    :cond_4e
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    goto :goto_7b

    :cond_5f
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, p1, v3, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_70

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForWakeUpInternal : return false by isAcceptableApplication."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_70
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 v1, 0x1

    return v1

    :cond_7b
    :goto_7b
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_83

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_8b

    :cond_83
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForWakeUpInternal : return false by checking disable policy."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    return v2
.end method

.method private verifyUserSetupCompleted()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    nop

    :cond_12
    iput-boolean v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    return-void
.end method


# virtual methods
.method public bindService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->bind(Landroid/os/IBinder;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 20

    move-object v1, p0

    move-object v10, p1

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_20

    :cond_a
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification : pkg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v0, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v2, "cancelNotification"

    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_55

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_55
    iget-object v0, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_61

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v2, "cancelNotification : mIStatusBarService is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v11, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    move-object/from16 v13, p5

    :try_start_6a
    invoke-static {v13, v0, v2, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v9

    iget-object v2, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v8, 0x0

    move-object v3, v10

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v13

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_7c} :catch_7f
    .catchall {:try_start_6a .. :try_end_7c} :catchall_7d

    goto :goto_83

    :catchall_7d
    move-exception v0

    goto :goto_88

    :catch_7f
    move-exception v0

    :try_start_80
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_7d

    :goto_83
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_88
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_16

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_f

    goto :goto_16

    :cond_f
    move-object/from16 v14, p2

    move/from16 v13, p3

    move/from16 v12, p4

    goto :goto_52

    :cond_16
    :goto_16
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotificationByGroupKey : cancel notification  uesrid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p4

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", id=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , key=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , group = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotificationByGroupKey pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v0, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v2, "cancelNotificationByGroupKey"

    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_89

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_89
    iget-object v0, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_95

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v2, "cancelNotificationByGroupKey : mIStatusBarService is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v6, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v11, :cond_136

    :try_start_9e
    iget-object v3, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v11}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getGroupNotificationData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object v3

    if-eqz v3, :cond_136

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getChildNotificationCount()I

    move-result v4

    if-gt v4, v2, :cond_136

    invoke-virtual {v3, v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getChild(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v4

    if-eqz v4, :cond_136

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getSummaryNotification()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v4

    if-eqz v4, :cond_136

    iget-object v5, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v9, "user_id"

    invoke-virtual {v5, v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v15, "noti_id"

    invoke-virtual {v9, v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v15, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v0, "noti_key"

    const/4 v2, 0x0

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v15, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "noti_tag"

    move-object/from16 v23, v3

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v15, 0x0

    invoke-static {v0, v15, v3, v3}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v22

    iget-object v15, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/16 v21, 0x0

    move-object/from16 v16, v8

    move-object/from16 v17, v2

    move/from16 v18, v9

    move/from16 v19, v5

    move-object/from16 v20, v0

    invoke-interface/range {v15 .. v22}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_ff

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_136

    :cond_ff
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    const-string v4, "cancelNotificationByGroupKey : Child count 1. so cancel summary notification : uesrid = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", id=  "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , key=  "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , tag = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12f
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_12f} :catch_133
    .catchall {:try_start_9e .. :try_end_12f} :catchall_130

    goto :goto_136

    :catchall_130
    move-exception v0

    move-wide v2, v6

    goto :goto_166

    :catch_133
    move-exception v0

    move-wide v2, v6

    goto :goto_15d

    :cond_136
    :goto_136
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_138
    invoke-static {v10, v2, v0, v0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v9

    iget-object v2, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_13e
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_13e} :catch_15b
    .catchall {:try_start_138 .. :try_end_13e} :catchall_158

    const/4 v0, 0x0

    move-object v3, v8

    move-object v4, v14

    move v5, v13

    move-wide/from16 v25, v6

    move v6, v12

    move-object v7, v10

    move v8, v0

    :try_start_147
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_14a} :catch_154
    .catchall {:try_start_147 .. :try_end_14a} :catchall_150

    move-wide/from16 v2, v25

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_163

    :catchall_150
    move-exception v0

    move-wide/from16 v2, v25

    goto :goto_166

    :catch_154
    move-exception v0

    move-wide/from16 v2, v25

    goto :goto_15d

    :catchall_158
    move-exception v0

    move-wide v2, v6

    goto :goto_166

    :catch_15b
    move-exception v0

    move-wide v2, v6

    :goto_15d
    :try_start_15d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_160
    .catchall {:try_start_15d .. :try_end_160} :catchall_165

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_163
    nop

    return-void

    :catchall_165
    move-exception v0

    :goto_166
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "disableEdgeLighting"

    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public disableEdgeLightingNotification(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->disableEdgeLighting(ILjava/lang/String;Z)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "[EdgeLightingManager]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getEdgeLightingState()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->getEdgeLightingState()I

    move-result v0

    return v0
.end method

.method public hideForNotification(Landroid/service/notification/StatusBarNotification;I)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_a1

    :cond_b
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v2

    if-nez v2, :cond_1a

    return v0

    :cond_1a
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "hideForNotification : user setup is not yet completed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_29
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hideForNotification : packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v3

    if-nez v3, :cond_58

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "hideForNotification : isOngoing is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_58
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_69

    sget-object v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "hideForNotification : isInteractive is true"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_69
    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v4

    if-nez v4, :cond_a0

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v4

    if-nez v4, :cond_a0

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_83

    goto :goto_a0

    :cond_83
    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v4, v2, v5, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_9c

    sget-boolean v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_93

    sget-boolean v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v4, :cond_9b

    :cond_93
    sget-object v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "showForNotification : return false by isAcceptableApplication."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    return v0

    :cond_9c
    invoke-direct {p0, v2, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideEdgeLightingInternal(Ljava/lang/String;I)V

    return v0

    :cond_a0
    :goto_a0
    return v0

    :cond_a1
    :goto_a1
    return v0
.end method

.method public hideForWakeLock(Ljava/lang/String;I)V
    .registers 6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    :cond_8
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideForWakeLock packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForWakeLockInternal(Ljava/lang/String;II)V

    return-void
.end method

.method public hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    :cond_8
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideForWakeLockByWindow : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForWakeLockInternal(Ljava/lang/String;II)V

    return-void
.end method

.method public isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, v3, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x2

    :goto_3e
    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_4d

    :cond_45
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    return v1

    :cond_4d
    :goto_4d
    return v2
.end method

.method public onBootCompleted()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onBootCompleted()V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onSwitchUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onUnlockUser(I)V

    return-void
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "registerListener"

    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setSuppressed(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->setSuppressed(I)V

    return-void
.end method

.method public showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .registers 27

    move-object/from16 v7, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    const-string/jumbo v0, "isHeadUp"

    const/4 v1, 0x0

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v0, "isUpdate"

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string/jumbo v0, "isInterrupt"

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    const-string/jumbo v0, "visibility"

    const/16 v2, -0x3e8

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v0, "sound"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/Uri;

    const-string/jumbo v0, "vibrate"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v19

    if-eqz v14, :cond_193

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_43

    move-object v12, v5

    move/from16 v23, v6

    goto/16 :goto_196

    :cond_43
    const/4 v0, 0x1

    if-eqz v5, :cond_50

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    move v2, v0

    goto :goto_51

    :cond_50
    move v2, v1

    :goto_51
    move/from16 v20, v2

    iget-object v2, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/media/AudioManager;

    if-eqz v19, :cond_62

    move v2, v0

    goto :goto_63

    :cond_62
    move v2, v1

    :goto_63
    if-nez v19, :cond_6e

    if-eqz v20, :cond_6e

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    if-ne v3, v0, :cond_6e

    const/4 v2, 0x1

    :cond_6e
    move/from16 v21, v2

    if-nez v20, :cond_77

    if-eqz v21, :cond_75

    goto :goto_77

    :cond_75
    move v13, v1

    goto :goto_78

    :cond_77
    :goto_77
    move v13, v0

    :goto_78
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {v7, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v2

    if-nez v2, :cond_87

    return v1

    :cond_87
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v2

    if-nez v2, :cond_96

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotification : user setup is not yet completed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_96
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v12, v8, Landroid/app/Notification;->ledARGB:I

    iget-object v8, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v11

    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v8, :cond_e3

    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v8, :cond_af

    goto :goto_e3

    :cond_af
    sget-object v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showForNotification : isInteractive="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isHeadUp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", color="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_116

    :cond_e3
    :goto_e3
    sget-object v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showForNotification : isInteractive="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isHeadUp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", color="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", sbn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_116
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_129

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "showForNotification : return false by notication disabling edge lighting."

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_129
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v8

    if-eqz v8, :cond_15f

    iget-object v8, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isConnectedMode()Z

    move-result v8

    if-eqz v8, :cond_15f

    new-instance v8, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/16 v9, 0x7d1

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v12, v10, v1

    aput v1, v10, v0

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    move-object v0, v8

    iget-object v8, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move-object v9, v14

    move v10, v6

    move v1, v11

    move/from16 v11, v16

    move/from16 v22, v12

    move/from16 v12, v18

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZ)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_15a

    invoke-virtual {v0, v8}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    :cond_15a
    invoke-direct {v7, v1, v2, v0, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForTurnOverNotification(ZLjava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    const/4 v9, 0x0

    return v9

    :cond_15f
    move v9, v1

    move v1, v11

    move/from16 v22, v12

    if-eqz v1, :cond_17d

    if-eqz v17, :cond_168

    return v9

    :cond_168
    move-object v0, v7

    move v8, v1

    move-object v1, v14

    move-object v9, v2

    move v2, v6

    move v10, v3

    move/from16 v3, v16

    move-object v11, v4

    move v4, v10

    move-object v12, v5

    move/from16 v5, v18

    move/from16 v23, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZIIZ)Z

    move-result v0

    return v0

    :cond_17d
    move v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move-object v12, v5

    move/from16 v23, v6

    move-object v0, v7

    move-object v1, v14

    move/from16 v2, v23

    move/from16 v3, v16

    move v4, v10

    move/from16 v5, v18

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZIIZ)Z

    move-result v0

    return v0

    :cond_193
    move-object v12, v5

    move/from16 v23, v6

    :goto_196
    const/4 v0, 0x0

    return v0
.end method

.method public showForResumedActivity(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->setResumedComponent(Landroid/content/ComponentName;)V

    return-void
.end method

.method public showForToast(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 17

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v6, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    invoke-direct {v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : user setup is not yet completed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_42

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, p2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :cond_42
    move-object v9, p2

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_78

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_6f

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_77

    :cond_6f
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return v1

    :cond_78
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_91

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_88

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_90

    :cond_88
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : return false by isAvailableEdgeLighting."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return v1

    :cond_91
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_f8

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-eqz v0, :cond_a4

    goto :goto_f8

    :cond_a4
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v7, v2, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_bd

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_b4

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_bc

    :cond_b4
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : return false by isAcceptableApplication."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    return v1

    :cond_bd
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_c6

    return v1

    :cond_c6
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getValidNotificationData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v11

    if-eqz v11, :cond_f7

    invoke-virtual {v11}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->isOnGoing()Z

    move-result v12

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : ongoing check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_f7

    iget-object v2, v11, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x200

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    return v10

    :cond_f7
    return v1

    :cond_f8
    :goto_f8
    return v1
.end method

.method public showForWakeLock(Ljava/lang/String;I)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    :cond_8
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeLock : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeLockInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_2d

    :cond_e
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForWakeLockByWindow : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", screenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    if-eqz v0, :cond_31

    const/4 v1, 0x0

    return v1

    :cond_31
    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeLockInternal(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public showForWakeUp(Ljava/lang/String;I)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    :cond_8
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeUp : packageName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeUpInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_2d

    :cond_e
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForWakeUpByWindow : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", screenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    if-eqz v0, :cond_31

    const/4 v1, 0x0

    return v1

    :cond_31
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeUpInternal(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "startEdgeLighting"

    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V

    return-void
.end method

.method public statusBarDisabled(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->statusBarDisabled(II)V

    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "stopEdgeLighting"

    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLighting(Ljava/lang/String;)V

    return-void
.end method

.method public unbindService(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->unbind(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "unregisterListener"

    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .registers 5

    if-nez p2, :cond_b

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEdgeLightingPolicy : policy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p2}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyType()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->setConnectedMode(Z)V

    return-void
.end method
