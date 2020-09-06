.class public Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;
.super Ljava/lang/Object;
.source "TelephonyManagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TelephonyManagerAdapter"

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;
    .registers 2

    const-class v0, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    :cond_e
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrengthDbm(Ljava/lang/Object;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public getSignalStrengthLevelAsu(Ljava/lang/Object;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public initPhoneStateReceiver(Landroid/content/Context;Landroid/os/Handler;I)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public isVoiceCapable()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method
