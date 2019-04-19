.class public Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;
.super Ljava/lang/Object;
.source "BluetoothManagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothManagerAdapter"

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    if-nez v1, :cond_16

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_16
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public removeBond(Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_27

    return v3

    :cond_25
    goto :goto_a

    :cond_26
    goto :goto_31

    :catch_27
    move-exception v0

    const-string v1, "BluetoothManagerAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    const/4 v0, 0x0

    return v0
.end method
