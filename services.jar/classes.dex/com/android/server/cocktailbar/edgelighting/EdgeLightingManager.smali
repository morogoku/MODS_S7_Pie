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
    .registers 8

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hideForWakeLockInternal : Calling user is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return-void

    :cond_23
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v1

    if-nez v1, :cond_4a

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : user setup is not yet completed."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hideForWakeLockInternal : user setup is not yet completed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v1

    if-nez v1, :cond_7c

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_5b

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_7b

    :cond_5b
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hideForWakeLockInternal : return false by isAllowEdgelighting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_7b
    return-void

    :cond_7c
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_ae

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_8d

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_ad

    :cond_8d
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hideForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_ad
    return-void

    :cond_ae
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_f7

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-eqz v1, :cond_c0

    goto :goto_f7

    :cond_c0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_f1

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_d0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_f0

    :cond_d0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hideForWakeLockInternal : return false by isAcceptableApplication."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_f0
    return-void

    :cond_f1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    return-void

    :cond_f7
    :goto_f7
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_ff

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_11f

    :cond_ff
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by checking disable policy."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hideForWakeLockInternal : return false by checking disable policy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_11f
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

    if-nez v0, :cond_3f

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_3e

    :cond_1e
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAllowEdgelighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOff : return false by isAllowEdgelighting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_3e
    return v10

    :cond_3f
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_70

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_4f

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_6f

    :cond_4f
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOff : return false by isAvailableEdgeLighting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_6f
    return v10

    :cond_70
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_123

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_123

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v11, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    goto/16 :goto_123

    :cond_8b
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

    if-eqz v0, :cond_cc

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_cc

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff No peeking: suppressed due to group alert behavior"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOff : No peeking suppressed due to group alert behavior"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v10

    :cond_cc
    and-int/lit8 v0, v9, 0x4

    if-eqz v0, :cond_d2

    move v0, v11

    goto :goto_d3

    :cond_d2
    move v0, v10

    :goto_d3
    move v13, v0

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move/from16 v14, p4

    invoke-virtual {v0, v7, v11, v13, v14}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    if-nez v0, :cond_107

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_e6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_106

    :cond_e6
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOff : return false by isAcceptableApplication."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_106
    return v10

    :cond_107
    const/4 v0, 0x4

    if-ne v9, v0, :cond_10c

    move v0, v11

    goto :goto_10d

    :cond_10c
    move v0, v10

    :goto_10d
    move v15, v0

    const/4 v3, 0x0

    if-eqz v15, :cond_114

    const/4 v0, 0x7

    move v4, v0

    goto :goto_115

    :cond_114
    move v4, v11

    :goto_115
    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v7

    move-object v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_122

    move v10, v11

    nop

    :cond_122
    return v10

    :cond_123
    :goto_123
    move/from16 v14, p4

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOff : return false by checking disable policy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

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

    if-nez v0, :cond_44

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_43

    :cond_23
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_43
    return v13

    :cond_44
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_75

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_54

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_74

    :cond_54
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOn : return false by isAvailableEdgeLighting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_74
    return v13

    :cond_75
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v9, v1, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v14

    if-nez v14, :cond_87

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEnabledHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_1b7

    :cond_87
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v0

    if-eqz v0, :cond_1b7

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_1b7

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v12}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_1b7

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v12, v9}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    goto/16 :goto_1b7

    :cond_a9
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

    if-eqz v0, :cond_df

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : texts are empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOn : texts are empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v13

    :cond_df
    if-eqz p3, :cond_11e

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_11e

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn Alert once notification. sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOn : Alert once notification. sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v13

    :cond_11e
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_14f

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn No peeking: suppressed due to group alert behavior"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOn : No peeking suppressed due to group alert behavior"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v13

    :cond_14f
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v9, v12, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_180

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_15f

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_17f

    :cond_15f
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForNotificationScreenOn : return false by isAcceptableApplication."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_17f
    return v13

    :cond_180
    if-nez p2, :cond_186

    move v0, v14

    move/from16 v16, v0

    goto :goto_188

    :cond_186
    move/from16 v16, p2

    :goto_188
    if-eqz v16, :cond_194

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_194

    move v0, v12

    goto :goto_195

    :cond_194
    move v0, v13

    :goto_195
    move/from16 v17, v0

    if-eqz v17, :cond_1af

    const/4 v0, 0x4

    if-ne v11, v0, :cond_19e

    move v0, v12

    goto :goto_19f

    :cond_19e
    move v0, v13

    :goto_19f
    move/from16 v18, v0

    const/4 v3, 0x0

    if-eqz v18, :cond_1a7

    const/4 v0, 0x7

    move v4, v0

    goto :goto_1a8

    :cond_1a7
    move v4, v12

    :goto_1a8
    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v9

    move-object v2, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    :cond_1af
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_1b6

    move/from16 v13, v17

    nop

    :cond_1b6
    return v13

    :cond_1b7
    :goto_1b7
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotificationScreenOn : return false by checking disable policy."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForNotificationScreenOn : return false by checking disable policy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v13
.end method

.method private showForTurnOverNotification(ZLjava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_c1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_c1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_c1

    :cond_1b
    if-eqz p2, :cond_8d

    if-nez p1, :cond_53

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p2, v1, v1, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    if-nez v0, :cond_8d

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_2f

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_52

    :cond_2f
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForTurnOverNotification : return false by isAcceptableApplication.1"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForTurnOverNotification : return false by isAcceptableApplication."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_52
    return-void

    :cond_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6a

    iget-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6a

    return-void

    :cond_6a
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/16 v3, 0x400

    invoke-virtual {v2, p2, v3, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_8d

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " showForTurnOverNotification : unacceptable application."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return-void

    :cond_8d
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_99
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

    :cond_c0
    return-void

    :cond_c1
    :goto_c1
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForTurnOverNotification : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showForTurnOverNotification : return false by checking disable policy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return-void
.end method

.method private showForWakeLockInternal(Ljava/lang/String;II)Z
    .registers 15

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " showForWakeLockInternal : Calling user is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v2

    :cond_24
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_40

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    const-string/jumbo v4, "showForWakeLockInternal : lockdown mode"

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v2

    :cond_40
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v3

    if-nez v3, :cond_67

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeLockInternal : user setup is not yet completed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showForWakeLockInternal : user setup is not yet completed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v2

    :cond_67
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v3

    if-nez v3, :cond_98

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_77

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_97

    :cond_77
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeLockInternal : return false by isAllowEdgelighting."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showForWakeLockInternal : return false by isAllowEdgelighting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_97
    return v2

    :cond_98
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v3

    if-nez v3, :cond_ca

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_a9

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_c9

    :cond_a9
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_c9
    return v2

    :cond_ca
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v3

    if-nez v3, :cond_118

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_dc

    goto :goto_118

    :cond_dc
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_10d

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_ec

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_10c

    :cond_ec
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showForWakeLockInternal : return false by isAcceptableApplication."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_10c
    return v2

    :cond_10d
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x4

    move-object v5, p0

    move-object v6, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 v2, 0x1

    return v2

    :cond_118
    :goto_118
    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_120

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_140

    :cond_120
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeLockInternal : return false by checking disable policy."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showForWakeLockInternal : return false by checking disable policy."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_140
    return v2
.end method

.method private showForWakeUpInternal(Ljava/lang/String;II)Z
    .registers 15

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " showForWakeUpInternal : Calling user is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v2

    :cond_24
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_40

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    const-string/jumbo v4, "showForWakeUpInternal : lockdown mode"

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v2

    :cond_40
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v3

    if-nez v3, :cond_67

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeUpInternal : user setup is not yet completed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showForWakeUpInternal : user setup is not yet completed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v2

    :cond_67
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v3

    if-nez v3, :cond_98

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_77

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_97

    :cond_77
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showForWakeUpInternal : return false by isAllowEdgelighting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_97
    return v2

    :cond_98
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v3

    if-nez v3, :cond_ca

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_a9

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_c9

    :cond_a9
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeUpInternal : return false by isAvailableEdgeLighting."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showForWakeUpInternal : return false by isAvailableEdgeLighting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_c9
    return v2

    :cond_ca
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v3

    if-nez v3, :cond_10f

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_db

    goto :goto_10f

    :cond_db
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_104

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeUpInternal : return false by isAcceptableApplication."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showForWakeUpInternal : return false by isAcceptableApplication."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v2

    :cond_104
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x2

    move-object v5, p0

    move-object v6, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 v2, 0x1

    return v2

    :cond_10f
    :goto_10f
    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_117

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_137

    :cond_117
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeUpInternal : return false by checking disable policy."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showForWakeUpInternal : return false by checking disable policy."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_137
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

    const-string/jumbo v5, "hideForNotification : return false by isAcceptableApplication."

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

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    iget v0, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v2, "showForNotification : lockdown mode"

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    :cond_24
    const-string/jumbo v0, "isHeadUp"

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

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

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    const-string/jumbo v0, "vibrate"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v19

    if-eqz v14, :cond_22b

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_61

    move-object v11, v4

    move v12, v5

    move-object/from16 v23, v6

    goto/16 :goto_22f

    :cond_61
    const/4 v0, 0x1

    if-eqz v4, :cond_6e

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    move v2, v0

    goto :goto_6f

    :cond_6e
    move v2, v1

    :goto_6f
    move/from16 v20, v2

    iget-object v2, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/media/AudioManager;

    if-eqz v19, :cond_80

    move v2, v0

    goto :goto_81

    :cond_80
    move v2, v1

    :goto_81
    if-nez v19, :cond_8c

    if-eqz v20, :cond_8c

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v8

    if-ne v8, v0, :cond_8c

    const/4 v2, 0x1

    :cond_8c
    move/from16 v21, v2

    if-nez v20, :cond_95

    if-eqz v21, :cond_93

    goto :goto_95

    :cond_93
    move v13, v1

    goto :goto_96

    :cond_95
    :goto_95
    move v13, v0

    :goto_96
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v8

    if-nez v8, :cond_c1

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " showForNotification : Calling user is not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    :cond_c1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v8

    if-nez v8, :cond_e8

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "showForNotification : user setup is not yet completed"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " showForNotification : user setup is not yet completed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    :cond_e8
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v11, v8, Landroid/app/Notification;->ledARGB:I

    iget-object v8, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v10

    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v8, :cond_131

    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v8, :cond_fd

    goto :goto_131

    :cond_fd
    sget-object v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showForNotification : isInteractive="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isHeadUp="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", color="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", packageName = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_164

    :cond_131
    :goto_131
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showForNotification : isInteractive="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isHeadUp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", color="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", sbn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_164
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_18f

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "showForNotification : return false by notication disabling edge lighting."

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " showForNotification : return false by notication disabling edge lighting."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    :cond_18f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    if-eqz v0, :cond_1df

    iget-object v0, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isConnectedMode()Z

    move-result v0

    if-eqz v0, :cond_1df

    new-instance v0, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/16 v8, 0x7d1

    const/4 v9, 0x2

    new-array v9, v9, [I

    aput v11, v9, v1

    const/16 v22, 0x1

    aput v1, v9, v22

    invoke-direct {v0, v8, v9}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    iget-object v8, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move-object v9, v14

    move v1, v10

    move v10, v5

    move/from16 v22, v11

    move/from16 v11, v16

    move-object v15, v12

    move/from16 v12, v18

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZ)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_1c2

    invoke-virtual {v0, v8}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    :cond_1c2
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " showForNotification : showForTurnOverNotification."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    invoke-direct {v7, v1, v15, v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForTurnOverNotification(ZLjava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    const/4 v9, 0x0

    return v9

    :cond_1df
    move v1, v10

    move/from16 v22, v11

    move-object v15, v12

    if-eqz v1, :cond_216

    if-eqz v17, :cond_201

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " showForNotification : isIntercepted."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_201
    move-object v0, v7

    move v8, v1

    move-object v1, v14

    move v9, v2

    move v2, v5

    move-object v10, v3

    move/from16 v3, v16

    move-object v11, v4

    move v4, v9

    move v12, v5

    move/from16 v5, v18

    move-object/from16 v23, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZIIZ)Z

    move-result v0

    return v0

    :cond_216
    move v8, v1

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move-object/from16 v23, v6

    move-object v0, v7

    move-object v1, v14

    move v2, v12

    move/from16 v3, v16

    move v4, v9

    move/from16 v5, v18

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZIIZ)Z

    move-result v0

    return v0

    :cond_22b
    move-object v11, v4

    move v12, v5

    move-object/from16 v23, v6

    :goto_22f
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : Notification is null"

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

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

    if-nez v0, :cond_35

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : user setup is not yet completed."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForToast : user setup is not yet completed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    :cond_35
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_5a

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

    goto :goto_76

    :cond_5a
    move-object v9, p2

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-eqz v0, :cond_76

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    :goto_76
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_a8

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_87

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_a7

    :cond_87
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForToast : return false by isAllowEdgelighting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_a7
    return v1

    :cond_a8
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v10}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_d9

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_b8

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_d8

    :cond_b8
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : return false by isAvailableEdgeLighting."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForToast : return false by isAvailableEdgeLighting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_d8
    return v1

    :cond_d9
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_189

    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-eqz v0, :cond_ed

    goto/16 :goto_189

    :cond_ed
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v7, v2, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_11e

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_fd

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_11d

    :cond_fd
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : return false by isAcceptableApplication."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForToast : return false by isAcceptableApplication."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_11d
    return v1

    :cond_11e
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_13f

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForToast : power not interactive."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    :cond_13f
    iget-object v0, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getValidNotificationData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v11

    if-eqz v11, :cond_188

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

    if-nez v12, :cond_170

    iget-object v2, v11, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x200

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    return v10

    :cond_170
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForToast : onGoing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_188
    return v1

    :cond_189
    :goto_189
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : return false by checking disable policy."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForToast : return false by checking disable policy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

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

    if-eqz v1, :cond_45

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

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForWakeLockByWindow : Calling user is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_45
    if-eqz v0, :cond_61

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForWakeLockByWindow :  screenOn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_61
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
    if-eqz v0, :cond_49

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showForWakeUpByWindow : screenOn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_49
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
