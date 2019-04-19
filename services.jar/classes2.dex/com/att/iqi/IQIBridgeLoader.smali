.class public Lcom/att/iqi/IQIBridgeLoader;
.super Ljava/lang/Object;
.source "IQIBridgeLoader.java"


# static fields
.field private static final BRIDGE_LIBRARY_NAME:Ljava/lang/String;

.field private static final BRIDGE_LIBRARY_PATH:Ljava/lang/String;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IQIBridgeLoader"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/att/iqi/IQIBridgeLoader;->getIqiLibPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_PATH:Ljava/lang/String;

    const-string v0, "iqi_bridge"

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyBridgeLibrary(Ljava/lang/String;)V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_PATH:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    aput-object v2, v6, v3

    sget-object v7, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    aput-object v7, v6, v0

    invoke-static {v4, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/att/iqi/IQIBridgeLoader;->shouldCopy(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v6

    if-eqz v6, :cond_73

    :try_start_2b
    new-array v6, v5, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v6, v3

    sget-object v7, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v6, v0

    invoke-static {v4, v1, v6}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    new-instance v6, Ljava/util/HashSet;

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v8, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v8, v7, v3

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v7, v0

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v0, v7, v5

    const/4 v0, 0x3

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v7, v0

    const/4 v0, 0x4

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v7, v0

    const/4 v0, 0x5

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v7, v0

    const/4 v0, 0x6

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v7, v0

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v6

    invoke-static {v1, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_68} :catch_69

    goto :goto_73

    :catch_69
    move-exception v0

    const-string v3, "IQIBridgeLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_73
    :goto_73
    return-void
.end method

.method private static getIqiLibPath()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_AutoConfigurationType"

    const-string v3, "DISABLE"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIMBASED_OMC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_OMC_VERSION"

    const-string v3, "0.0"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_30

    const-string v0, "/system/carrier/priv-app/AttIqi_ATT/lib/"

    goto :goto_32

    :cond_30
    const-string v0, "/system/priv-app/AttIqi_ATT/lib/"

    :goto_32
    return-object v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x400

    :try_start_6
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_11

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_10} :catch_12

    return-object v3

    :cond_11
    goto :goto_13

    :catch_12
    move-exception v1

    :goto_13
    const/4 v1, 0x0

    return-object v1
.end method

.method static loadBridgeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/att/iqi/IQIBridgeLoader;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/att/iqi/IQIBridgeLoader;->copyBridgeLibrary(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static shouldCopy(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_2f

    :try_start_13
    const-class v7, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v8, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v7, v8}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v7

    invoke-interface {v7}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v8
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_23} :catch_25

    move-wide v3, v8

    goto :goto_2f

    :catch_25
    move-exception v7

    const-string v8, "IQIBridgeLoader"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    :goto_2f
    if-eqz v2, :cond_4d

    :try_start_31
    const-class v7, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v8, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v7, v8}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v7

    invoke-interface {v7}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v8
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_43

    move-wide v5, v8

    goto :goto_4d

    :catch_43
    move-exception v7

    const-string v8, "IQIBridgeLoader"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4d
    :goto_4d
    if-eqz v2, :cond_57

    if-eqz v1, :cond_55

    cmp-long v7, v5, v3

    if-lez v7, :cond_57

    :cond_55
    const/4 v0, 0x1

    nop

    :cond_57
    return v0
.end method
