.class public Lcom/android/server/PermissionMonitor;
.super Landroid/os/IPermissionMonitor$Stub;
.source "PermissionMonitor.java"


# static fields
.field public static final ACTION_NOTIFY_APP_BGACCESS:Ljava/lang/String; = "com.samsung.intent.action.NOTIFY_APP_BGACCESS"

.field public static final APM_CHECK_PROPERTY:Ljava/lang/String; = "persist.app.permission.monitor"

.field public static final APM_FLAG_ALL_APP_OFF:I = 0x4000000

.field public static final APM_FLAG_APM_IS_OFF:I = 0x40000000

.field private static final APM_MEDIA_FILE_COPY_FOLDER:Ljava/lang/String; = "APM/FileCopy"

.field private static final APM_MEDIA_KW_DIR2:Ljava/lang/String; = "/data/knox/sdcard"

.field private static final APM_MEDIA_TEMP_DIR1:Ljava/lang/String; = "/storage/emulated"

.field private static final APM_MEDIA_TEMP_DIR2:Ljava/lang/String; = "/data/media"

.field public static final APM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final APP_UID:I = 0x2710

.field private static final CACHE_SIZE:I = 0xa

.field private static final CAMERA_FLAG:I = 0x1

.field private static final CTRL_COPY_MEDIADATA:I = 0x100

.field private static final CTRL_DONE_REC_MEDIA:I = 0x400

.field private static final CTRL_SAVE_MEDIAPATH:I = 0x200

.field private static final DEBUG_FLAG:Z

.field public static final DEFAULT_MONITOR:Ljava/lang/String; = "5244743"

.field public static final INTENT_EXTRA_APM_LATITUDE:Ljava/lang/String; = "com.samsung.intent.extra.APM_LATITUDE"

.field public static final INTENT_EXTRA_APM_LONGITUDE:Ljava/lang/String; = "com.samsung.intent.extra.APM_LONGITUDE"

.field public static final INTENT_EXTRA_APM_MEDIAPATH:Ljava/lang/String; = "com.samsung.intent.extra.APM_MEDIA"

.field public static final INTENT_EXTRA_APM_MEDIA_TYPE:Ljava/lang/String; = "com.samsung.intent.extra.APM_MEDIA_TYPE"

.field public static final INTENT_EXTRA_APM_MODULE_NAME:Ljava/lang/String; = "com.samsung.intent.extra.APM_MODULE_NAME"

.field public static final INTENT_EXTRA_APM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.intent.extra.APM_PACKAGE_NAME"

.field private static final LOCATION_FLAG:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "PermissionMonitor"

.field public static final PERMISSION_APP_PERMISSION_MONITOR:Ljava/lang/String; = "com.samsung.android.intent.permission.APP_PERMISSION_MONITOR"

.field private static final TIME_INTERVAL:J = 0xea60L

.field private static final mHiddenBehaviorOnly:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private final mIsAppPermissionMonitorSupported:Z

.field private mMediaFormat:I

.field private mMediaPath:Ljava/lang/String;

.field private mMediaPkgName:Ljava/lang/String;

.field private mSEAMS:Lcom/android/server/SEAMService;

.field private mlocationInfo:Lcom/android/server/APMPositionInfo;

.field private monitoredAppList:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/IPermissionMonitor$Stub;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PermissionMonitor;->monitoredAppList:Landroid/util/LruCache;

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_18

    const-string v0, "PermissionMonitor"

    const-string/jumbo v1, "initialize permission monitor service"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iput-object p1, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PermissionMonitor;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SEAMService;

    iput-object v0, p0, Lcom/android/server/PermissionMonitor;->mSEAMS:Lcom/android/server/SEAMService;

    iget-object v0, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/APMPositionInfo;->getLocationManager(Landroid/content/Context;)Lcom/android/server/APMPositionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PermissionMonitor;->mlocationInfo:Lcom/android/server/APMPositionInfo;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PermissionMonitor;->mIsAppPermissionMonitorSupported:Z

    return-void
.end method

.method private CopyLeakedData(Ljava/lang/String;I)Ljava/lang/String;
    .registers 19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    const/4 v0, 0x0

    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APM/FileCopy/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_65

    sget-boolean v9, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v9, :cond_5b

    const-string v9, "PermissionMonitor"

    const-string/jumbo v11, "make apm directory to copy media data"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_65
    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_ac

    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APM/FileCopy/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v6, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_cf

    :cond_ac
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APM/FileCopy/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v9

    :goto_cf
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_f5

    const-string v0, "PermissionMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CopyLeakedData ... from : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  to : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object v13, v0

    :try_start_f8
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v12, v0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v13, v0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_108
    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    move v15, v14

    if-eq v14, v11, :cond_113

    invoke-virtual {v13, v0, v10, v15}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_108

    :cond_113
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_116} :catch_12e
    .catchall {:try_start_f8 .. :try_end_116} :catchall_12b

    nop

    :try_start_117
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_11b

    goto :goto_120

    :catch_11b
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_120
    nop

    :try_start_121
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_125

    goto :goto_159

    :catch_125
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_159

    :catchall_12b
    move-exception v0

    move-object v10, v0

    goto :goto_15e

    :catch_12e
    move-exception v0

    :try_start_12f
    const-string v10, "PermissionMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error occured while copying file"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_12f .. :try_end_149} :catchall_12b

    if-eqz v12, :cond_154

    :try_start_14b
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_14f

    goto :goto_154

    :catch_14f
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_154
    :goto_154
    if-eqz v13, :cond_159

    :try_start_156
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_125

    :cond_159
    :goto_159
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_15e
    if-eqz v12, :cond_169

    :try_start_160
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_164

    goto :goto_169

    :catch_164
    move-exception v0

    move-object v11, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_169
    :goto_169
    if-eqz v13, :cond_174

    :try_start_16b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16e} :catch_16f

    goto :goto_174

    :catch_16f
    move-exception v0

    move-object v11, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_174
    :goto_174
    throw v10
.end method

.method private getPackageNameByUid(I)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2

    :cond_14
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    return-object v2

    :cond_1b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private isAppWhitelisted(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PermissionMonitor;->isSystemApp_WhitelistedApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isBackgroundApp(IILjava/lang/String;)Z
    .registers 14

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_7
    iget-object v4, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, p1, :cond_86

    sget-boolean v7, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v7, :cond_4b

    const-string v7, "PermissionMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "We found matching pid. (uid, pid) : ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-ge v7, v1, :cond_52

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move v1, v7

    :cond_52
    const/16 v7, 0x64

    if-eq v1, v7, :cond_62

    const/16 v7, 0x145

    if-eq v1, v7, :cond_62

    const/16 v7, 0x96

    if-eq v1, v7, :cond_62

    const/16 v7, 0x7d

    if-ne v1, v7, :cond_86

    :cond_62
    sget-boolean v5, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v5, :cond_84

    const-string v5, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " App has at least one process in foreground. uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_84} :catch_8d
    .catchall {:try_start_7 .. :try_end_84} :catchall_8b

    :cond_84
    const/4 v0, 0x1

    goto :goto_87

    :cond_86
    goto :goto_19

    :cond_87
    :goto_87
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a9

    :catchall_8b
    move-exception v4

    goto :goto_aa

    :catch_8d
    move-exception v4

    :try_start_8e
    const-string v5, "PermissionMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Exception occus in isBackgroundApp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_8e .. :try_end_a8} :catchall_8b

    goto :goto_87

    :goto_a9
    return v0

    :goto_aa
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private isCalledPackage(Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PermissionMonitor;->isExpired(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/server/PermissionMonitor;->monitoredAppList:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    return v2

    :cond_15
    const/4 v2, 0x1

    return v2
.end method

.method private isExpired(Ljava/lang/String;J)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/PermissionMonitor;->monitoredAppList:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sget-boolean v1, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v1, :cond_32

    const-string v1, "PermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", lastTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-gez v1, :cond_4d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p2

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v1, 0x0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v1, 0x1

    :goto_4e
    return v1
.end method

.method private isHiddenApp(IILjava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PermissionMonitor;->isBackgroundApp(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSystemApp_WhitelistedApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_101

    const-string v1, "20"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_73

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v2, "untrusted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_48

    sget-boolean v1, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v1, :cond_45

    const-string v1, "PermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling app is pre-installed on system partition. pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/4 v0, 0x1

    goto/16 :goto_123

    :cond_48
    invoke-direct {p0, p1, p3}, Lcom/android/server/PermissionMonitor;->isWhitelistedAppInUser(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    if-eqz v1, :cond_123

    sget-boolean v1, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v1, :cond_70

    const-string v1, "PermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling app is whitelistapp. pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    const/4 v0, 0x1

    goto/16 :goto_123

    :cond_73
    const-string v1, "SEAMService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/SEAMService;

    if-nez v1, :cond_85

    const-string v2, "PermissionMonitor"

    const-string/jumbo v3, "isSystemAppWhitelistApp , sseams is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v3, "untrusted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ba

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_ba

    sget-boolean v2, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v2, :cond_b8

    const-string v2, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling app is pre-installed on system partition. pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", UserId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    const/4 v0, 0x1

    goto :goto_dc

    :cond_ba
    sget-boolean v2, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v2, :cond_dc

    const-string v2, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling app is not pre-installed on system. Ignore its notification. pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", UserId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    :goto_dc
    if-nez v0, :cond_100

    invoke-virtual {v1, p2}, Lcom/android/server/SEAMService;->isAPMWhiteListAPP(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_100

    sget-boolean v2, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v2, :cond_ff

    const-string v2, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is whitelistapp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ff
    const/4 v0, 0x1

    :cond_100
    goto :goto_123

    :cond_101
    sget-boolean v1, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v1, :cond_123

    const-string v1, "PermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApplicationInfo for ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is null! UserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_123
    :goto_123
    return v0
.end method

.method private isWhitelistedAppInUser(Landroid/content/pm/ApplicationInfo;I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string v2, "apm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->apmWL:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->apmWL:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/PermissionMonitor;->checkUser(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_19

    const/4 v1, 0x1

    return v1

    :cond_19
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public checkUser(ILjava/lang/String;)I
    .registers 6

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_18

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_15

    return p1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method checkingEnforcing(I)Z
    .registers 4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/PermissionMonitor;->mSEAMS:Lcom/android/server/SEAMService;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/PermissionMonitor;->mSEAMS:Lcom/android/server/SEAMService;

    iget-object v1, p0, Lcom/android/server/PermissionMonitor;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SEAMService;->getAPMStatus(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    const-string v0, "PermissionMonitor"

    const-string v1, "Enforcing User"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public isEnforcedInUser(I)Z
    .registers 3

    if-lez p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/server/PermissionMonitor;->checkingEnforcing(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public sendAPMEnforcing(III)V
    .registers 24

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/server/PermissionMonitor;->mIsAppPermissionMonitorSupported:Z

    if-eqz v0, :cond_113

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_39

    const-string v0, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "we received enforcing notification for rUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "from rModuleFlag: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_39
    move/from16 v4, p2

    move/from16 v5, p3

    :goto_3d
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v12, 0x2710

    if-gt v7, v12, :cond_112

    if-ge v2, v12, :cond_51

    goto/16 :goto_112

    :cond_51
    div-int/lit16 v12, v2, 0x2710

    div-int/lit8 v12, v12, 0xa

    invoke-direct/range {p0 .. p1}, Lcom/android/server/PermissionMonitor;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v13, v6, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_79
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v13, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_83} :catch_8b
    .catchall {:try_start_79 .. :try_end_83} :catchall_88

    move-object v11, v0

    :goto_84
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_ad

    :catchall_88
    move-exception v0

    goto/16 :goto_10e

    :catch_8b
    move-exception v0

    :try_start_8c
    const-string v8, "PermissionMonitor"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(NameNotFoundException) ApplicationInfo for ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is null! UserId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_8c .. :try_end_ac} :catchall_88

    goto :goto_84

    :goto_ad
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_c8

    const-string v0, "PermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "packageName: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    invoke-virtual {v1, v12}, Lcom/android/server/PermissionMonitor;->isEnforcedInUser(I)Z

    move-result v0

    if-nez v0, :cond_cf

    return-void

    :cond_cf
    invoke-direct {v1, v11, v13, v12}, Lcom/android/server/PermissionMonitor;->isAppWhitelisted(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_dd

    const-string v0, "PermissionMonitor"

    const-string v2, "App is whitelisted. Ignore"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_dd
    :try_start_dd
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    move-wide/from16 v9, v17

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v13, v12}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_ea} :catch_f0
    .catchall {:try_start_dd .. :try_end_ea} :catchall_ee

    :goto_ea
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_108

    :catchall_ee
    move-exception v0

    goto :goto_10a

    :catch_f0
    move-exception v0

    :try_start_f1
    const-string v2, "PermissionMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceStopPackage: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catchall {:try_start_f1 .. :try_end_107} :catchall_ee

    goto :goto_ea

    :goto_108
    nop

    return-void

    :goto_10a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_10e
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_112
    :goto_112
    return-void

    :cond_113
    move/from16 v4, p2

    move/from16 v5, p3

    return-void
.end method

.method public sendAPMMediaNotification(IILjava/lang/String;II)V
    .registers 32

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    iget-boolean v0, v1, Lcom/android/server/PermissionMonitor;->mIsAppPermissionMonitorSupported:Z

    if-eqz v0, :cond_16e

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_4b

    const-string v0, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APMMediaNotification for rUid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", rPid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", media_format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "from rModuleFlag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " media path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    const/4 v0, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v16, v0

    const/16 v0, 0x2710

    if-ge v2, v0, :cond_5e

    return-void

    :cond_5e
    move v11, v2

    div-int/lit16 v0, v2, 0x2710

    div-int/lit8 v10, v0, 0xa

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_82

    const-string v0, "PermissionMonitor"

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v8

    const-string v8, "Binder.getCallingUid(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :cond_82
    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    :goto_86
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PermissionMonitor;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v9, v7, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-wide/from16 v20, v16

    :try_start_ac
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9, v8, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ac .. :try_end_b6} :catch_cf
    .catchall {:try_start_ac .. :try_end_b6} :catchall_c4

    move-object v15, v0

    move-object/from16 v22, v7

    move-wide/from16 v7, v20

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move/from16 v24, v11

    move-object/from16 v25, v12

    goto :goto_fc

    :catchall_c4
    move-exception v0

    move-object/from16 v22, v7

    move-wide/from16 v7, v20

    move/from16 v24, v11

    move-object/from16 v25, v12

    goto/16 :goto_16a

    :catch_cf
    move-exception v0

    move-object/from16 v22, v7

    move-wide/from16 v7, v20

    move-object/from16 v23, v0

    :try_start_d6
    const-string v0, "PermissionMonitor"
    :try_end_d8
    .catchall {:try_start_d6 .. :try_end_d8} :catchall_165

    move/from16 v24, v11

    :try_start_da
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_df
    .catchall {:try_start_da .. :try_end_df} :catchall_161

    move-object/from16 v25, v12

    :try_start_e1
    const-string v12, "(NameNotFoundException) ApplicationInfo for ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") is null! UserId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_e1 .. :try_end_f8} :catchall_15f

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_fc
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_117

    const-string v0, "PermissionMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_117
    invoke-direct {v1, v15, v9, v10}, Lcom/android/server/PermissionMonitor;->isAppWhitelisted(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_125

    const-string v0, "PermissionMonitor"

    const-string v11, "App is whitelisted. Ignore"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_125
    invoke-direct {v1, v2, v3, v9}, Lcom/android/server/PermissionMonitor;->isHiddenApp(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    const-string v0, "PermissionMonitor"

    const-string v11, "App is not in hidden status (background/etc). Ignore"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_133
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_13e

    const-string v0, "PermissionMonitor"

    const-string v11, "All conditions are satisfied, report app access now."

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13e
    and-int/lit16 v0, v6, 0x200

    if-lez v0, :cond_15d

    const/4 v0, 0x0

    if-eqz v10, :cond_14e

    const-string v11, "/storage/emulated"

    const-string v12, "/data/knox/sdcard"

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_156

    :cond_14e
    const-string v11, "/storage/emulated"

    const-string v12, "/data/media"

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_156
    iput-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPath:Ljava/lang/String;

    iput-object v9, v1, Lcom/android/server/PermissionMonitor;->mMediaPkgName:Ljava/lang/String;

    iput v5, v1, Lcom/android/server/PermissionMonitor;->mMediaFormat:I

    return-void

    :cond_15d
    nop

    return-void

    :catchall_15f
    move-exception v0

    goto :goto_16a

    :catchall_161
    move-exception v0

    move-object/from16 v25, v12

    goto :goto_16a

    :catchall_165
    move-exception v0

    move/from16 v24, v11

    move-object/from16 v25, v12

    :goto_16a
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_16e
    return-void
.end method

.method public sendAPMNotification(III)V
    .registers 45

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_34

    const-string v0, "PermissionMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "we received permission notification for rUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", rPid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "from rModuleFlag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    iget-boolean v0, v1, Lcom/android/server/PermissionMonitor;->mIsAppPermissionMonitorSupported:Z

    if-nez v0, :cond_39

    return-void

    :cond_39
    const/4 v0, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v0

    const/16 v0, 0x2710

    if-ge v2, v0, :cond_51

    return-void

    :cond_51
    move v9, v2

    div-int/lit16 v0, v2, 0x2710

    div-int/lit8 v8, v0, 0xa

    invoke-direct/range {p0 .. p1}, Lcom/android/server/PermissionMonitor;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v5

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    move-wide/from16 v20, v6

    aget-object v6, v5, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    move-wide/from16 v22, v18

    :try_start_80
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v6, v10, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_8a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_8a} :catch_aa
    .catchall {:try_start_80 .. :try_end_8a} :catchall_9b

    move-object/from16 v17, v0

    move/from16 v24, v9

    move-wide/from16 v9, v22

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move-object/from16 v26, v5

    move-wide/from16 v27, v11

    :goto_98
    move-object/from16 v5, v17

    goto :goto_d7

    :catchall_9b
    move-exception v0

    move/from16 v24, v9

    move-wide/from16 v9, v22

    move-object/from16 v26, v5

    move-wide/from16 v27, v11

    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    goto/16 :goto_3a3

    :catch_aa
    move-exception v0

    move/from16 v24, v9

    move-wide/from16 v9, v22

    move-object/from16 v25, v0

    :try_start_b1
    const-string v0, "PermissionMonitor"
    :try_end_b3
    .catchall {:try_start_b1 .. :try_end_b3} :catchall_39a

    move-object/from16 v26, v5

    :try_start_b5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_392

    move-wide/from16 v27, v11

    :try_start_bc
    const-string v11, "(NameNotFoundException) ApplicationInfo for ("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") is null! UserId: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_bc .. :try_end_d3} :catchall_38c

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_98

    :goto_d7
    const-string v0, "20"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v11, 0x12

    if-lt v0, v11, :cond_18e

    and-int/lit16 v0, v4, 0x400

    if-lez v0, :cond_18e

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_10b

    const-string v0, "PermissionMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Record Done  mediaPath is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/PermissionMonitor;->mMediaPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/PermissionMonitor;->mMediaPkgName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10b
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPath:Ljava/lang/String;

    if-eqz v0, :cond_189

    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPkgName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPath:Ljava/lang/String;

    invoke-direct {v1, v0, v8}, Lcom/android/server/PermissionMonitor;->CopyLeakedData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Landroid/content/Intent;

    const-string v12, "com.samsung.intent.action.NOTIFY_APP_BGACCESS"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    const-string v0, "com.samsung.intent.extra.APM_PACKAGE_NAME"

    invoke-virtual {v12, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MODULE_NAME"

    invoke-virtual {v12, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MEDIA_TYPE"

    move-wide/from16 v29, v13

    iget v13, v1, Lcom/android/server/PermissionMonitor;->mMediaFormat:I

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MEDIA"

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.securitylogagent"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_146
    const-string v0, "PermissionMonitor"
    :try_end_148
    .catchall {:try_start_146 .. :try_end_148} :catchall_180

    move-object/from16 v31, v11

    :try_start_14a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14f
    .catchall {:try_start_14a .. :try_end_14f} :catchall_17c

    move-wide/from16 v32, v15

    :try_start_151
    const-string/jumbo v15, "userId : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v15, "com.samsung.android.intent.permission.APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v12, v11, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_16d
    .catchall {:try_start_151 .. :try_end_16d} :catchall_17a

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPath:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPkgName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/PermissionMonitor;->mMediaFormat:I

    goto :goto_18d

    :catchall_17a
    move-exception v0

    goto :goto_185

    :catchall_17c
    move-exception v0

    move-wide/from16 v32, v15

    goto :goto_185

    :catchall_180
    move-exception v0

    move-object/from16 v31, v11

    move-wide/from16 v32, v15

    :goto_185
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_189
    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    :goto_18d
    return-void

    :cond_18e
    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_1ac

    const-string v0, "PermissionMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Calling packageName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ac
    invoke-direct {v1, v5, v6, v8}, Lcom/android/server/PermissionMonitor;->isAppWhitelisted(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1ba

    const-string v0, "PermissionMonitor"

    const-string v11, "App is whitelisted. Ignore"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1ba
    invoke-direct {v1, v2, v3, v6}, Lcom/android/server/PermissionMonitor;->isHiddenApp(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    const-string v0, "PermissionMonitor"

    const-string v11, "App is not in hidden status (background/etc). Ignore"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c8
    invoke-direct {v1, v7}, Lcom/android/server/PermissionMonitor;->isCalledPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    const-string v0, "PermissionMonitor"

    const-string/jumbo v11, "isCalledPkg is in effect. Ignore."

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d7
    and-int/lit8 v0, v4, 0x8

    if-lez v0, :cond_2a7

    const-string/jumbo v0, "persist.app.permission.monitor"

    const-string v12, "5244743"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :try_start_1e5
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1e9
    .catch Ljava/lang/NumberFormatException; {:try_start_1e5 .. :try_end_1e9} :catch_1ef

    and-int/lit8 v0, v0, 0x8

    if-gtz v0, :cond_1ee

    return-void

    :cond_1ee
    goto :goto_20b

    :catch_1ef
    move-exception v0

    move-object v13, v0

    const-string v13, "PermissionMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception notify permission monitor service about access from LOCATION_FLAG nfe = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20b
    const-string v0, "20"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v11, :cond_2a7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_217
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mlocationInfo:Lcom/android/server/APMPositionInfo;

    iget-object v13, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Lcom/android/server/APMPositionInfo;->callLocationInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26a

    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mlocationInfo:Lcom/android/server/APMPositionInfo;

    invoke-virtual {v0}, Lcom/android/server/APMPositionInfo;->getLatitude()D

    move-result-wide v13
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_227} :catch_281
    .catchall {:try_start_217 .. :try_end_227} :catchall_27b

    :try_start_227
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mlocationInfo:Lcom/android/server/APMPositionInfo;

    invoke-virtual {v0}, Lcom/android/server/APMPositionInfo;->getLongitude()D

    move-result-wide v15
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_22d} :catch_268
    .catchall {:try_start_227 .. :try_end_22d} :catchall_266

    move-wide/from16 v34, v15

    :try_start_22f
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_259

    const-string v0, "PermissionMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location Information : Latitude = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, " Longitude = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_247} :catch_261
    .catchall {:try_start_22f .. :try_end_247} :catchall_25d

    move-wide/from16 v2, v34

    :try_start_249
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_253} :catch_256
    .catchall {:try_start_249 .. :try_end_253} :catchall_254

    goto :goto_25b

    :catchall_254
    move-exception v0

    goto :goto_2a3

    :catch_256
    move-exception v0

    move-wide v15, v2

    goto :goto_286

    :cond_259
    move-wide/from16 v2, v34

    :goto_25b
    move-wide v15, v2

    goto :goto_26e

    :catchall_25d
    move-exception v0

    move-wide/from16 v2, v34

    goto :goto_2a3

    :catch_261
    move-exception v0

    move-wide/from16 v2, v34

    move-wide v15, v2

    goto :goto_286

    :catchall_266
    move-exception v0

    goto :goto_27e

    :catch_268
    move-exception v0

    goto :goto_284

    :cond_26a
    move-wide/from16 v13, v29

    move-wide/from16 v15, v32

    :goto_26e
    :try_start_26e
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mlocationInfo:Lcom/android/server/APMPositionInfo;

    invoke-virtual {v0}, Lcom/android/server/APMPositionInfo;->stopUsingLocationService()V
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_26e .. :try_end_273} :catch_279
    .catchall {:try_start_26e .. :try_end_273} :catchall_2a1

    :goto_273
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move-wide v2, v15

    goto :goto_2ab

    :catch_279
    move-exception v0

    goto :goto_286

    :catchall_27b
    move-exception v0

    move-wide/from16 v13, v29

    :goto_27e
    move-wide/from16 v2, v32

    goto :goto_2a3

    :catch_281
    move-exception v0

    move-wide/from16 v13, v29

    :goto_284
    move-wide/from16 v15, v32

    :goto_286
    :try_start_286
    const-string v2, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Exception occus in getting locationInfo"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a0
    .catchall {:try_start_286 .. :try_end_2a0} :catchall_2a1

    goto :goto_273

    :catchall_2a1
    move-exception v0

    move-wide v2, v15

    :goto_2a3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2a7
    move-wide/from16 v13, v29

    move-wide/from16 v2, v32

    :goto_2ab
    const-string v0, "5244743"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/SEAMService;

    if-eqz v12, :cond_2ec

    :try_start_2bc
    invoke-virtual {v12, v8}, Lcom/android/server/SEAMService;->getAPMStatusAsUser(I)I

    move-result v0

    move v11, v0

    const-string v0, "PermissionMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2cb
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2cb} :catch_2e0

    move-object/from16 v36, v5

    :try_start_2cd
    const-string/jumbo v5, "s getAPMStatusAsUser"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2dd
    .catch Ljava/lang/Exception; {:try_start_2cd .. :try_end_2dd} :catch_2de

    goto :goto_2eb

    :catch_2de
    move-exception v0

    goto :goto_2e3

    :catch_2e0
    move-exception v0

    move-object/from16 v36, v5

    :goto_2e3
    const-string v5, "PermissionMonitor"

    const-string/jumbo v15, "failed to getAPMStatusAsUser "

    invoke-static {v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2eb
    goto :goto_305

    :cond_2ec
    move-object/from16 v36, v5

    const-string v0, "PermissionMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "seams is null, userId: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_305
    if-lez v11, :cond_389

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v11

    if-nez v0, :cond_389

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.NOTIFY_APP_BGACCESS"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    const-string v0, "com.samsung.intent.extra.APM_PACKAGE_NAME"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MODULE_NAME"

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.securitylogagent"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    and-int/lit8 v0, v4, 0x8

    if-lez v0, :cond_33b

    const-string v0, "20"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v15, 0x12

    if-lt v0, v15, :cond_33b

    const-string v0, "com.samsung.intent.extra.APM_LATITUDE"

    invoke-virtual {v5, v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_LONGITUDE"

    invoke-virtual {v5, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :cond_33b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move-wide/from16 v37, v15

    :try_start_341
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z
    :try_end_343
    .catchall {:try_start_341 .. :try_end_343} :catchall_380

    if-eqz v0, :cond_368

    :try_start_345
    const-string v0, "PermissionMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_34c
    .catchall {:try_start_345 .. :try_end_34c} :catchall_362

    move-wide/from16 v39, v2

    :try_start_34e
    const-string v2, "All conditions are satisfied, report app access now. pkgName is "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35d
    .catchall {:try_start_34e .. :try_end_35d} :catchall_35e

    goto :goto_36a

    :catchall_35e
    move-exception v0

    move-wide/from16 v2, v37

    goto :goto_385

    :catchall_362
    move-exception v0

    move-wide/from16 v39, v2

    move-wide/from16 v2, v37

    goto :goto_385

    :cond_368
    move-wide/from16 v39, v2

    :goto_36a
    :try_start_36a
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "com.samsung.android.intent.permission.APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v5, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_376
    .catchall {:try_start_36a .. :try_end_376} :catchall_37c

    move-wide/from16 v2, v37

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38b

    :catchall_37c
    move-exception v0

    move-wide/from16 v2, v37

    goto :goto_385

    :catchall_380
    move-exception v0

    move-wide/from16 v39, v2

    move-wide/from16 v2, v37

    :goto_385
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_389
    move-wide/from16 v39, v2

    :goto_38b
    return-void

    :catchall_38c
    move-exception v0

    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    goto :goto_3a3

    :catchall_392
    move-exception v0

    move-wide/from16 v27, v11

    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    goto :goto_3a3

    :catchall_39a
    move-exception v0

    move-object/from16 v26, v5

    move-wide/from16 v27, v11

    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    :goto_3a3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public sendAPMSMSNotification(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 44

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    iget-boolean v0, v1, Lcom/android/server/PermissionMonitor;->mIsAppPermissionMonitorSupported:Z

    if-eqz v0, :cond_398

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_3b

    const-string v0, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APMSMSNotification for rUid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", rPid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "from rModuleFlag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    const/4 v0, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v16, v0

    const/16 v0, 0x2710

    if-ge v2, v0, :cond_4e

    return-void

    :cond_4e
    move v11, v2

    div-int/lit16 v0, v2, 0x2710

    div-int/lit8 v10, v0, 0xa

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_72

    const-string v0, "PermissionMonitor"

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v8

    const-string v8, "Binder.getCallingUid(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :cond_72
    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    :goto_76
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PermissionMonitor;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v9, v7, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-wide/from16 v20, v16

    :try_start_9c
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9, v8, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_a6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9c .. :try_end_a6} :catch_c9
    .catchall {:try_start_9c .. :try_end_a6} :catchall_b8

    move-object v15, v0

    move-object/from16 v22, v9

    move-wide/from16 v8, v20

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move-object/from16 v24, v7

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v11, v22

    goto :goto_fa

    :catchall_b8
    move-exception v0

    move-object/from16 v22, v9

    move-wide/from16 v8, v20

    move-object/from16 v24, v7

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v29, v13

    move-object/from16 v11, v22

    goto/16 :goto_394

    :catch_c9
    move-exception v0

    move-object/from16 v22, v9

    move-wide/from16 v8, v20

    move-object/from16 v23, v0

    :try_start_d0
    const-string v0, "PermissionMonitor"
    :try_end_d2
    .catchall {:try_start_d0 .. :try_end_d2} :catchall_389

    move-object/from16 v24, v7

    :try_start_d4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_37f

    move/from16 v25, v11

    :try_start_db
    const-string v11, "(NameNotFoundException) ApplicationInfo for ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e0
    .catchall {:try_start_db .. :try_end_e0} :catchall_377

    move-object/from16 v11, v22

    :try_start_e2
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_371

    move-object/from16 v26, v12

    :try_start_e7
    const-string v12, ") is null! UserId: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_e7 .. :try_end_f6} :catchall_36d

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_fa
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_115

    const-string v0, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_115
    invoke-direct {v1, v15, v11, v10}, Lcom/android/server/PermissionMonitor;->isAppWhitelisted(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_123

    const-string v0, "PermissionMonitor"

    const-string v7, "App is whitelisted. Ignore"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_123
    invoke-direct {v1, v2, v3, v11}, Lcom/android/server/PermissionMonitor;->isHiddenApp(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_131

    const-string v0, "PermissionMonitor"

    const-string v7, "App is not in hidden status (background/etc). Ignore"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_131
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM/FileCopy/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_169

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_15f

    const-string v0, "PermissionMonitor"

    const-string/jumbo v12, "make apm directory to copy media data"

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15f
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const/4 v12, 0x0

    invoke-virtual {v2, v7, v12}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v7, v12}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_169
    const/4 v12, 0x0

    const/16 v16, 0x0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v2

    const-string v2, "_send_sms.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    move-object/from16 v28, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v29, v13

    const-string v13, "APM/FileCopy/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_235

    :try_start_1c1
    new-instance v0, Ljava/io/FileWriter;

    const/4 v13, 0x1

    invoke-direct {v0, v3, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c7} :catch_205

    move-object v13, v0

    :try_start_1c8
    const-string v0, "--------------------------------------\n"

    invoke-virtual {v13, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Sending date : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n Destination number : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n Sending message : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v13}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1fc} :catch_203

    nop

    move-object/from16 v31, v2

    move-object/from16 v28, v13

    goto/16 :goto_2b3

    :catch_203
    move-exception v0

    goto :goto_208

    :catch_205
    move-exception v0

    move-object/from16 v13, v28

    :goto_208
    move-object v14, v0

    if-eqz v13, :cond_211

    :try_start_20b
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_20b .. :try_end_20e} :catch_20f

    goto :goto_211

    :catch_20f
    move-exception v0

    goto :goto_212

    :cond_211
    :goto_211
    nop

    :goto_212
    const-string v0, "PermissionMonitor"

    move-object/from16 v31, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v13

    const-string v13, "Error: File write failed: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v28, v32

    goto/16 :goto_2b3

    :cond_235
    move-object/from16 v31, v2

    :try_start_237
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_280

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_242
    .catch Ljava/io/IOException; {:try_start_237 .. :try_end_242} :catch_288

    move-object v2, v0

    :try_start_243
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Sending date : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n Destination number : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n Sending message : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_27a
    .catch Ljava/io/IOException; {:try_start_243 .. :try_end_27a} :catch_27e

    nop

    move-object/from16 v16, v2

    goto :goto_287

    :catch_27e
    move-exception v0

    goto :goto_28b

    :cond_280
    :try_start_280
    const-string v0, "PermissionMonitor"

    const-string v2, "Error: Failed to create message file"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_287
    .catch Ljava/io/IOException; {:try_start_280 .. :try_end_287} :catch_288

    :goto_287
    goto :goto_2b3

    :catch_288
    move-exception v0

    move-object/from16 v2, v16

    :goto_28b
    move-object v13, v0

    if-eqz v2, :cond_294

    :try_start_28e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_291
    .catch Ljava/io/IOException; {:try_start_28e .. :try_end_291} :catch_292

    goto :goto_294

    :catch_292
    move-exception v0

    goto :goto_295

    :cond_294
    :goto_294
    nop

    :goto_295
    const-string v0, "PermissionMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v2

    const-string v2, "Error: File write failed: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v33

    :goto_2b3
    const-string v0, "5244743"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/SEAMService;

    if-eqz v13, :cond_2f4

    :try_start_2c4
    invoke-virtual {v13, v10}, Lcom/android/server/SEAMService;->getAPMStatusAsUser(I)I

    move-result v0

    move v2, v0

    const-string v0, "PermissionMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_2c4 .. :try_end_2d3} :catch_2e8

    move-object/from16 v34, v3

    :try_start_2d5
    const-string/jumbo v3, "s getAPMStatusAsUser"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2e5} :catch_2e6

    goto :goto_2f3

    :catch_2e6
    move-exception v0

    goto :goto_2eb

    :catch_2e8
    move-exception v0

    move-object/from16 v34, v3

    :goto_2eb
    const-string v3, "PermissionMonitor"

    const-string/jumbo v14, "failed to getAPMStatusAsUser "

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f3
    goto :goto_30d

    :cond_2f4
    move-object/from16 v34, v3

    const-string v0, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "seams is null, userId: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30d
    if-lez v2, :cond_36b

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_36b

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.NOTIFY_APP_BGACCESS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string v0, "com.samsung.intent.extra.APM_PACKAGE_NAME"

    invoke-virtual {v3, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MODULE_NAME"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MEDIA_TYPE"

    const/4 v14, 0x3

    invoke-virtual {v3, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MEDIA"

    invoke-virtual {v3, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.securitylogagent"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    move-wide/from16 v35, v20

    :try_start_33c
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z
    :try_end_33e
    .catchall {:try_start_33c .. :try_end_33e} :catchall_362

    if-eqz v0, :cond_34e

    :try_start_340
    const-string v0, "PermissionMonitor"

    const-string v14, "All conditions are satisfied, report app access now."

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_347
    .catchall {:try_start_340 .. :try_end_347} :catchall_348

    goto :goto_34e

    :catchall_348
    move-exception v0

    move/from16 v37, v2

    move-wide/from16 v1, v35

    goto :goto_367

    :cond_34e
    :goto_34e
    :try_start_34e
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v10}, Landroid/os/UserHandle;-><init>(I)V

    const-string v1, "com.samsung.android.intent.permission.APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v3, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_35a
    .catchall {:try_start_34e .. :try_end_35a} :catchall_362

    move/from16 v37, v2

    move-wide/from16 v1, v35

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_36b

    :catchall_362
    move-exception v0

    move/from16 v37, v2

    move-wide/from16 v1, v35

    :goto_367
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_36b
    :goto_36b
    nop

    return-void

    :catchall_36d
    move-exception v0

    move-wide/from16 v29, v13

    goto :goto_394

    :catchall_371
    move-exception v0

    move-object/from16 v26, v12

    move-wide/from16 v29, v13

    goto :goto_394

    :catchall_377
    move-exception v0

    move-object/from16 v26, v12

    move-wide/from16 v29, v13

    move-object/from16 v11, v22

    goto :goto_394

    :catchall_37f
    move-exception v0

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v29, v13

    move-object/from16 v11, v22

    goto :goto_394

    :catchall_389
    move-exception v0

    move-object/from16 v24, v7

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v29, v13

    move-object/from16 v11, v22

    :goto_394
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_398
    return-void
.end method
