.class public Lcom/android/server/IcccManagerService;
.super Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;
.source "IcccManagerService.java"


# static fields
.field private static final ACTION_BCS_REQUEST:Ljava/lang/String; = "com.samsung.intent.action.BCS_REQUEST"

.field private static final ACTION_BCS_RESPONSE:Ljava/lang/String; = "com.samsung.intent.action.BCS_RESPONSE"

.field private static final ACTION_SYSSCOPESTATUS:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field public static final COMPONENT_TYPE_HARD_INTEGRITY:I = 0x1

.field public static final COMPONENT_TYPE_SOFT_INTEGRITY:I = 0x2

.field private static final CURR_BIN_STATUS:I = -0xffff6

.field private static final ICCC_DRK_KEY_DIR:Ljava/lang/String; = "/data/misc/tz_iccc/"

.field private static final ICCC_DRK_KEY_FILENAME:Ljava/lang/String; = "key.dat"

.field private static final ICCC_DRK_KEY_FILENAME_BKP:Ljava/lang/String; = "key.dat.bkp"

.field private static final ICCC_DRK_SERVICE_NAME:Ljava/lang/String; = "ICCC"

.field private static final NOK:I = 0x2

.field private static final NONCE_SIZE:I = 0x20

.field private static final NOT_SCANNED:I = -0x1

.field private static final OK:I = 0x1

.field private static final REQUEST_AT_COMMAND:Ljava/lang/String; = "AT+ICCCINFO=1,0,0"

.field private static final SYSSCOPE_FLAG:I = -0xe00000

.field static TAG:Ljava/lang/String; = null

.field private static final URANDOM_DRIVER_PATH:Ljava/lang/String; = "/dev/urandom"

.field private static final WARRANTY_BIT:I = -0xffff4

.field private static mContext:Landroid/content/Context;

.field private static mSysScopeResult:I


# instance fields
.field icccBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ICCC"

    sput-object v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;-><init>()V

    new-instance v0, Lcom/android/server/IcccManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    iput-object v0, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Start IcccManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    sget v0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1

    sput p0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/IcccManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/IcccManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->setSysScopeField()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/IcccManagerService;->get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/IcccManagerService;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->createNonce()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 5

    const-string v0, "IcccManagerService"

    sget-object v1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v2, "IcccManagerService() - Valid Caller"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "IcccManagerService() - Invalid Caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method private createNonce()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    new-array v2, v1, [B

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_d
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_17} :catch_2d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_28
    .catchall {:try_start_d .. :try_end_17} :catchall_26

    if-eq v5, v1, :cond_1e

    nop

    invoke-virtual {p0, v4}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    :cond_1e
    :try_start_1e
    invoke-static {v2}, Lcom/android/server/IcccManagerService;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_22} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_28
    .catchall {:try_start_1e .. :try_end_22} :catchall_26

    invoke-virtual {p0, v4}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_26
    move-exception v1

    goto :goto_36

    :catch_28
    move-exception v1

    :try_start_29
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    :goto_31
    invoke-virtual {p0, v4}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    nop

    return-object v3

    :goto_36
    invoke-virtual {p0, v4}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private deleteIcccKey()Z
    .registers 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/tz_iccc/"

    const-string/jumbo v2, "key.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/tz_iccc/"

    const-string/jumbo v3, "key.dat.bkp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v2, 0x1

    return v2

    :cond_28
    const/4 v2, 0x0

    return v2
.end method

.method private enforcePermission()Z
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    return v1

    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method private generateIcccKey()[B
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/misc/tz_iccc/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_14
    new-instance v5, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    sget-object v6, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const-string v8, "ICCC"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v2

    move-object v3, v2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_69

    array-length v2, v3

    if-eqz v2, :cond_60

    new-instance v2, Ljava/io/File;

    const-string/jumbo v8, "key.dat"

    invoke-direct {v2, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v8

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "key.dat.bkp"

    invoke-direct {v8, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v9

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    goto :goto_7e

    :cond_60
    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Invalid encapsulated/wrapped ICCC key length from DRK"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_7e

    :cond_69
    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "drkService.createServiceKeySession returned NULL"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_71} :catch_7a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_71} :catch_75
    .catchall {:try_start_4 .. :try_end_71} :catchall_73

    const/4 v3, 0x0

    goto :goto_7e

    :catchall_73
    move-exception v2

    goto :goto_86

    :catch_75
    move-exception v2

    :try_start_76
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7e

    :catch_7a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_73

    :goto_7e
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p0, v1}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    nop

    return-object v3

    :goto_86
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p0, v1}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method static native get_Trusted_Boot_Data()I
.end method

.method private declared-synchronized get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    const v1, -0xffff4

    :try_start_5
    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v1

    move v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    const v1, -0xffff6

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v1

    move v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_5b

    move-object p1, v1

    monitor-exit p0

    return-object p1

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static native iccc_device_status(I[B[BZ)[B
.end method

.method static native iccc_load()I
.end method

.method static native iccc_readData_platform(I)I
.end method

.method static native iccc_saveData_platform(II)I
.end method

.method static native iccc_unload()I
.end method

.method private readIcccKey()[B
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/tz_iccc/"

    const-string/jumbo v4, "key.dat"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3a

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v4, v3, [B

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    array-length v4, v1

    if-nez v4, :cond_3a

    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v5, "Key file is empty. wrappedKey.length = 0"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2d} :catch_36
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2d} :catch_31
    .catchall {:try_start_2 .. :try_end_2d} :catchall_2f

    const/4 v1, 0x0

    goto :goto_3a

    :catchall_2f
    move-exception v2

    goto :goto_3f

    :catch_31
    move-exception v2

    :try_start_32
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    :catch_36
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_2f

    :cond_3a
    :goto_3a
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    nop

    return-object v1

    :goto_3f
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method private releaseDrk()Z
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    sget-object v2, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    move-result v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v4, :cond_17

    const/4 v0, 0x1

    goto :goto_2f

    :cond_17
    const/4 v0, 0x0

    sget-object v5, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failure releasing drk service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return v0
.end method

.method private restoreBackup(Ljava/io/File;Ljava/io/File;)[B
    .registers 9

    sget-object v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Restoring backup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_33

    new-array v4, v3, [B

    move-object v2, v4

    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    goto :goto_3a

    :cond_33
    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v5, "The backup key length is ZERO"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    goto :goto_4e

    :cond_3b
    sget-object v3, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v4, "The backup key does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_42} :catch_4a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_42} :catch_45
    .catchall {:try_start_a .. :try_end_42} :catchall_43

    goto :goto_4e

    :catchall_43
    move-exception v3

    goto :goto_56

    :catch_45
    move-exception v3

    :try_start_46
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    :catch_4a
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_43

    :goto_4e
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p0, v1}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    nop

    return-object v2

    :goto_56
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p0, v1}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method private declared-synchronized setSysScopeField()V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const-wide/16 v0, 0x1

    :cond_10
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    const-wide/16 v4, 0x78

    cmp-long v2, v0, v4

    if-lez v2, :cond_23

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "There is some problem in SysScope. Keep it uninitialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_23
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    const/4 v4, 0x1

    const/high16 v5, -0xe00000

    if-ne v2, v4, :cond_36

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Saving SysScope Value : OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v5, v2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    goto :goto_54

    :cond_36
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_46

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Saving SysScope Value : NOK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v4}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    goto :goto_54

    :cond_46
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v3, :cond_54

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Saving SysScope Value : NOT_SCANNED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v6}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    :cond_54
    :goto_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public closeQuietly(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p1, :cond_8

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :cond_8
    :goto_8
    nop

    :goto_9
    return-void
.end method

.method public declared-synchronized getDeviceStatus(I[B)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v2, "getDeviceStatus"

    invoke-static {v2}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_load()I

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "iccc_load failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_a0

    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    :cond_1a
    :try_start_1a
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/tz_iccc/"

    const-string/jumbo v4, "key.dat"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->generateIcccKey()[B

    move-result-object v3

    goto :goto_4c

    :cond_2f
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->readIcccKey()[B

    move-result-object v3

    const/4 v0, 0x1

    if-nez v3, :cond_4c

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/misc/tz_iccc/"

    const-string/jumbo v6, "key.dat.bkp"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v6, "Failed to read ICCC wrappedKey. Try to restore backup"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v2}, Lcom/android/server/IcccManagerService;->restoreBackup(Ljava/io/File;Ljava/io/File;)[B

    move-result-object v5

    move-object v3, v5

    :cond_4c
    :goto_4c
    if-nez v3, :cond_64

    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "wrappedKey is null, delete ICCC key for a new try"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->deleteIcccKey()Z

    move-result v4

    if-nez v4, :cond_70

    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v5, "deleteIcccKey failure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    :cond_64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {p1, p2, v3, v0}, Lcom/android/server/IcccManagerService;->iccc_device_status(I[B[BZ)[B

    move-result-object v6

    move-object v1, v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_70
    :goto_70
    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_unload()I

    move-result v4

    if-eqz v4, :cond_7e

    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "iccc_unload failure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    if-nez v0, :cond_9e

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->releaseDrk()Z

    if-eqz v1, :cond_89

    array-length v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9e

    :cond_89
    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "response is not as expected, delete ICCC key for a new try"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->deleteIcccKey()Z

    move-result v4

    if-nez v4, :cond_9e

    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v5, "deleteIcccKey failure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_1a .. :try_end_9e} :catchall_a0

    :cond_9e
    monitor-exit p0

    return-object v1

    :catchall_a0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSecureData(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_9

    move v0, v1

    monitor-exit p0

    return v0

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTrustedBootData()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/android/server/IcccManagerService;->get_Trusted_Boot_Data()I

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_9

    move v0, v1

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSecureData(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    move-result v1

    move v0, v1

    goto :goto_16

    :cond_e
    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Not System UID. Only system UID caller can change status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_18

    const/4 v0, -0x1

    :goto_16
    monitor-exit p0

    return v0

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
