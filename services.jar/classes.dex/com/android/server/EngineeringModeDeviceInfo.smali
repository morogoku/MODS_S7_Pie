.class public Lcom/android/server/EngineeringModeDeviceInfo;
.super Ljava/lang/Object;
.source "EngineeringModeDeviceInfo.java"


# static fields
.field private static final PRODUCT_SERIAL_NUM:Ljava/lang/String; = "ril.serialnumber"

.field private static final PRODUCT_SERIAL_NUM_SINCE_P:Ljava/lang/String; = "ro.serialno"

.field private static final TAG:Ljava/lang/String; = "EngineeringModeDeviceInfo"

.field private static volatile uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/EngineeringModeDeviceInfo;->uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/EngineeringModeDeviceInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;
    .registers 3

    sget-object v0, Lcom/android/server/EngineeringModeDeviceInfo;->uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/server/EngineeringModeDeviceInfo;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/server/EngineeringModeDeviceInfo;->uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/server/EngineeringModeDeviceInfo;

    invoke-direct {v1, p0}, Lcom/android/server/EngineeringModeDeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/EngineeringModeDeviceInfo;->uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/EngineeringModeDeviceInfo;->uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;

    return-object v0
.end method

.method public static isWifiOnlyModel(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_12

    return v1

    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method public static readSN()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ro.serialno"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/EngineeringModeDeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "EngineeringModeDeviceInfo"

    const-string v1, "Support Only Wifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EngineeringModeDeviceInfo;->readSN()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/android/server/EngineeringModeDeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getModelName()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/server/CscParser;->getCustomerInstance()Lcom/android/server/CscParser;

    move-result-object v0

    const-string v1, "GeneralInfo.SalesCode"

    invoke-virtual {v0, v1}, Lcom/android/server/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
