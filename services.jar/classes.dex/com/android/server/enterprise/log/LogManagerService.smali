.class public Lcom/android/server/enterprise/log/LogManagerService;
.super Landroid/app/enterprise/ILogManager$Stub;
.source "LogManagerService.java"


# static fields
.field private static final DISABLED:Ljava/lang/String; = "0"

.field private static final ENABLED:Ljava/lang/String; = "1"

.field private static final LOGGER_NAMES:[Ljava/lang/String;

.field private static final LOGGER_TYPES:[I

.field private static final LOG_CONFIG_FILE:Ljava/lang/String; = "/data/system/enterprise/log.cfg"

.field private static final TAG:Ljava/lang/String; = "LogManagerService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLogReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ConsoleLogger"

    const-string v1, "FileLogger"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/enterprise/ILogManager$Stub;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/log/LogManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/log/LogManagerService$1;-><init>(Lcom/android/server/enterprise/log/LogManagerService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/log/LogManagerService;->mLogReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/log/LogManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/log/LogManagerService;->mLogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->initLog()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/log/LogManagerService;I)Lcom/android/server/enterprise/log/Logger;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method private checkAdminExistsInELMDB(I)Z
    .registers 12

    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_b
    const-string/jumbo v4, "enterprise_license_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v5

    if-eqz v5, :cond_35

    array-length v6, v5

    move v7, v3

    :goto_1e
    if-ge v7, v6, :cond_35

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_3b
    .catchall {:try_start_b .. :try_end_2a} :catchall_39

    if-eqz v9, :cond_32

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x1

    return v3

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_35
    :goto_35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_53

    :catchall_39
    move-exception v3

    goto :goto_54

    :catch_3b
    move-exception v4

    :try_start_3c
    const-string v5, "LogManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_39

    goto :goto_35

    :goto_53
    return v3

    :goto_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private checkCallingUidAccess()Z
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    return v1

    :cond_a
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveSamsungAuthorizedAdmin(I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v2

    if-nez v2, :cond_1c

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/log/LogManagerService;->checkAdminExistsInELMDB(I)Z

    move-result v2

    if-nez v2, :cond_1c

    const/4 v1, 0x0

    return v1

    :cond_1c
    return v1
.end method

.method private static createLogger(I)Lcom/android/server/enterprise/log/Logger;
    .registers 5

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_3a

    const-string v1, "LogManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Logger Type Returning Console Logger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/enterprise/log/ConsoleLogger;

    sget-object v2, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/log/ConsoleLogger;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_24
    new-instance v0, Lcom/android/server/enterprise/log/FileLogger;

    sget-object v1, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/FileLogger;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_2f
    new-instance v1, Lcom/android/server/enterprise/log/ConsoleLogger;

    sget-object v2, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/log/ConsoleLogger;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_24
    .end packed-switch
.end method

.method private getLogger(I)Lcom/android/server/enterprise/log/Logger;
    .registers 4

    if-eqz p1, :cond_d

    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->getLogger(Ljava/lang/String;)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private initLog()V
    .registers 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/enterprise/log.cfg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/log/LogManagerService;->enableLogging(I)I

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    sget-object v3, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3e

    sget-object v3, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "/data/system/enterprise/log.cfg"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3b

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    sget-object v4, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    aget v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/log/LogManagerService;->enableLogging(I)I

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3e
    return-void
.end method

.method private isValidLogLevel(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isValidLogType(I)Z
    .registers 7

    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget v4, v0, v3

    if-ne p1, v4, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    return v2
.end method


# virtual methods
.method public copyLogs(Landroid/os/ParcelFileDescriptor;)I
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, -0x2

    return v0

    :cond_c
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 v0, -0x5

    return v0

    :cond_15
    :try_start_15
    new-instance v0, Ljava/lang/SecurityManager;

    invoke-direct {v0}, Ljava/lang/SecurityManager;-><init>()V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_21} :catch_32

    nop

    const/4 v0, 0x0

    :try_start_23
    new-instance v1, Lcom/android/server/enterprise/log/LogManagerService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/log/LogManagerService$2;-><init>(Lcom/android/server/enterprise/log/LogManagerService;Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x6

    :goto_31
    return v0

    :catch_32
    move-exception v0

    const-string v1, "LogManagerService"

    const-string v2, "can\'t write to file descriptor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x6

    return v1
.end method

.method public disableLogging(I)I
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x2

    return v0

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, -0x3

    return v0

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->removeLogger(Lcom/android/server/enterprise/log/Logger;)Z

    :cond_1d
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    const-string v1, "0"

    const-string v2, "/data/system/enterprise/log.cfg"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public enableLogging(I)I
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x2

    return v0

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, -0x3

    return v0

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Lcom/android/server/enterprise/log/LogManagerService;->createLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->addLogger(Lcom/android/server/enterprise/log/Logger;)Z

    :cond_1d
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    const-string v1, "1"

    const-string v2, "/data/system/enterprise/log.cfg"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public getLogLevel(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x3

    return v0

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/enterprise/log/Logger;->getLogLevel()I

    move-result v1

    return v1

    :cond_13
    const/4 v1, -0x5

    return v1
.end method

.method public isLoggingEnabled(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public setLogLevel(II)I
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x2

    return v0

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, -0x3

    return v0

    :cond_10
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogLevel(I)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, -0x4

    return v0

    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/log/Logger;->setLogLevel(I)V

    const/4 v1, 0x0

    return v1

    :cond_23
    const/4 v1, -0x5

    return v1
.end method
