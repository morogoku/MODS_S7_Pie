.class Lcom/android/server/smartclip/BleSpenManager;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# static fields
.field private static final BLE_SPEN_ADDR_FILE_NAME:Ljava/lang/String; = "blespen_addr"

.field private static final BLE_SPEN_BASE_DIR:Ljava/lang/String; = "/efs/spen"

.field private static final BLE_SPEN_CMF_FILE_NAME:Ljava/lang/String; = "blespen_cmf"

.field private static final BLE_SPEN_COMMAND_FILE_PATH_NAME:Ljava/lang/String; = "/sys/class/sec/sec_epen/epen_ble_charging_mode"

.field private static final PKG_NAME_AIR_COMNAND:Ljava/lang/String; = "com.samsung.android.service.aircommand"

.field private static final SETTING_KEY_AIR_ACTION:Ljava/lang/String; = "spen_air_action"

.field private static final SVC_NAME_REMOTE_SPEN:Ljava/lang/String; = "com.samsung.android.service.aircommand.remotespen.RemoteSpenService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsServiceBound:Z

.field private mIsSupportBleSpen:Z

.field private mServiceBinder:Landroid/os/IBinder;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mIsSupportBleSpen:Z

    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mIsServiceBound:Z

    new-instance v0, Lcom/android/server/smartclip/BleSpenManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/BleSpenManager$1;-><init>(Lcom/android/server/smartclip/BleSpenManager;)V

    iput-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mIsSupportBleSpen:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mIsSupportBleSpen:Z

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/android/server/smartclip/BleSpenManager;->registerAirActionSettingObserver()V

    :cond_2b
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mServiceBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/smartclip/BleSpenManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mIsServiceBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/BleSpenManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/smartclip/BleSpenManager;->onAirActionSettingChanged()V

    return-void
.end method

.method private onAirActionSettingChanged()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    move-result v0

    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAirActionSettingChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/smartclip/BleSpenManager;->startService(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_29
    return-void
.end method

.method private readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_1a} :catch_38
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_4f

    :catch_1b
    move-exception v2

    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBleSpenAddress : e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_50

    :catch_36
    move-exception v3

    goto :goto_50

    :catch_38
    move-exception v2

    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBleSpenAddress : file not exist. e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    nop

    :goto_50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readStringFromFile : empty file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_5f
    return-object v0
.end method

.method private registerAirActionSettingObserver()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "spen_air_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/smartclip/BleSpenManager$2;

    iget-object v3, p0, Lcom/android/server/smartclip/BleSpenManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/smartclip/BleSpenManager$2;-><init>(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/Handler;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    const/4 v0, 0x0

    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_31

    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile : Parent dir is null! filePathName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_27} :catch_12a
    .catchall {:try_start_5 .. :try_end_27} :catchall_128

    if-eqz v0, :cond_2f

    :try_start_29
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_2f

    :catch_2d
    move-exception v2

    goto :goto_30

    :cond_2f
    :goto_2f
    nop

    :goto_30
    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_55

    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile : No directoy, make directoy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_55
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_7e

    invoke-virtual {v1, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    if-nez v2, :cond_7e

    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeStringToFile : failed setreadable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-nez v2, :cond_a5

    invoke-virtual {v1, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v2

    if-nez v2, :cond_a5

    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeStringToFile : failed setexecutable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v5

    if-nez v5, :cond_de

    sget-object v5, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : failed setreadable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v3

    if-nez v3, :cond_ff

    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeStringToFile : failed setexecutable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ff
    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v3

    if-nez v3, :cond_120

    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToFile : failed setWritable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_120} :catch_12a
    .catchall {:try_start_31 .. :try_end_120} :catchall_128

    :cond_120
    nop

    :try_start_121
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_125

    goto :goto_127

    :catch_125
    move-exception v1

    goto :goto_148

    :cond_127
    :goto_127
    goto :goto_148

    :catchall_128
    move-exception v1

    goto :goto_149

    :catch_12a
    move-exception v1

    :try_start_12b
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile : e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catchall {:try_start_12b .. :try_end_142} :catchall_128

    if-eqz v0, :cond_127

    :try_start_144
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_125

    goto :goto_127

    :goto_148
    return-void

    :goto_149
    nop

    if-eqz v0, :cond_152

    :try_start_14c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    goto :goto_152

    :catch_150
    move-exception v2

    nop

    :cond_152
    :goto_152
    throw v1
.end method


# virtual methods
.method public declared-synchronized disableCharging()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/BleSpenManager;->writeBleSpenCommand(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBleSpenAddress()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string v1, "getBleSpenAddress : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_19

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_addr"

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBleSpenCmfCode()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string v1, "getBleSpenCmfCode : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_19

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_cmf"

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAirActionSettingEnabled()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "spen_air_action"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public declared-synchronized isServiceBound()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mIsServiceBound:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mServiceBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mServiceBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_16

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSupportBleSpen()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mIsSupportBleSpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBleSpenAddress(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setBleSpenAddress : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_addr"

    invoke-direct {p0, v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBleSpenCmfCode(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setBleSpenCmfCode : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_cmf"

    invoke-direct {p0, v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startService(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startService : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_6a

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startService : BLE Spen is disabled on knox container enabled mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_6a

    monitor-exit p0

    return-void

    :cond_21
    const/4 v0, 0x0

    if-eqz v0, :cond_2e

    :try_start_24
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startService : already bounded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_6a

    monitor-exit p0

    return-void

    :cond_2e
    :try_start_2e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.service.aircommand"

    const-string v3, "com.samsung.android.service.aircommand.remotespen.RemoteSpenService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_3f

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3f
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_4f

    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startService : failed to launch the service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_4f} :catch_50
    .catchall {:try_start_2e .. :try_end_4f} :catchall_6a

    :cond_4f
    goto :goto_68

    :catch_50
    move-exception v1

    :try_start_51
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startService : Failed to start BLE SPen service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_6a

    :goto_68
    monitor-exit p0

    return-void

    :catchall_6a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeBleSpenCommand(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeBleSpenCommand : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_92

    monitor-exit p0

    return-void

    :cond_11
    const/4 v0, 0x0

    :try_start_12
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sys/class/sec/sec_epen/epen_ble_charging_mode"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_3d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_3b

    nop

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_92

    :goto_21
    goto :goto_71

    :catch_22
    move-exception v1

    :try_start_23
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeBleSpenCommand : close : e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_37
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_92

    goto :goto_21

    :catchall_3b
    move-exception v1

    goto :goto_73

    :catch_3d
    move-exception v1

    :try_start_3e
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeBleSpenCommand : e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_3b

    if-eqz v0, :cond_71

    :try_start_57
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b
    .catchall {:try_start_57 .. :try_end_5a} :catchall_92

    goto :goto_21

    :catch_5b
    move-exception v1

    :try_start_5c
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeBleSpenCommand : close : e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_70
    .catchall {:try_start_5c .. :try_end_70} :catchall_92

    goto :goto_37

    :cond_71
    :goto_71
    monitor-exit p0

    return-void

    :goto_73
    if-eqz v0, :cond_91

    :try_start_75
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79
    .catchall {:try_start_75 .. :try_end_78} :catchall_92

    goto :goto_91

    :catch_79
    move-exception v2

    :try_start_7a
    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeBleSpenCommand : close : e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_91
    :goto_91
    throw v1
    :try_end_92
    .catchall {:try_start_7a .. :try_end_92} :catchall_92

    :catchall_92
    move-exception p1

    monitor-exit p0

    throw p1
.end method
