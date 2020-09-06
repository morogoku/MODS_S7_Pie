.class public final Lcom/android/server/SemService;
.super Lcom/samsung/android/service/SemService/ISemService$Stub;
.source "SemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SemService$AllowList;
    }
.end annotation


# static fields
.field public static final HEX_CHARS:[C

.field private static final TAG:Ljava/lang/String; = "SemService"

.field private static mContext:Landroid/content/Context;

.field private static mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mRequestedProcess:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/server/SemService;->HEX_CHARS:[C

    const-string/jumbo v0, "sec_sem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    nop

    :array_18
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;-><init>()V

    sput-object p1, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/SemService$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemService$AllowList;-><init>()V

    sput-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    sget-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    const-string/jumbo v1, "system"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    const-string v1, "com.sec.security.ese.proxy"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemService$AllowList;->add(Ljava/lang/String;I)V

    const-string v0, "SemService"

    const-string v1, "Start SemService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_30

    array-length v0, p0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_2a

    mul-int v3, v1, v2

    sget-object v4, Lcom/android/server/SemService;->HEX_CHARS:[C

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    mul-int v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/server/SemService;->HEX_CHARS:[C

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_30
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getHexString([B)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_29
    return-object v0
.end method

.method public static getHexString([BII)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, v1, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2a
    return-object v0
.end method

.method private hasAccessPermission(II)Z
    .registers 8

    const-string v0, ""

    :try_start_2
    sget-object v1, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_2e

    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_30

    move-object v0, v2

    goto :goto_2f

    :cond_2e
    goto :goto_1a

    :cond_2f
    :goto_2f
    goto :goto_3d

    :catch_30
    move-exception v1

    const-string v2, "SemService"

    const-string v3, "Error occurs on checking package name."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_3d
    sget-object v1, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/SemService$AllowList;->match(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested package name = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/SemService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_8a

    :cond_63
    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied. Package name = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/SemService;->mRequestedProcess:Ljava/lang/String;

    :goto_8a
    return v1
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v2

    new-array v1, v0, [B

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v0, :cond_2b

    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_2b
    return-object v1
.end method


# virtual methods
.method public ICD()I
    .registers 6

    const/16 v0, -0x3e7

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/SemService;->jniICD()I

    move-result v1
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_6} :catch_3c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_6} :catch_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_8

    move v0, v1

    :goto_7
    goto :goto_56

    :catch_8
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e7

    goto :goto_56

    :catch_22
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e7

    goto :goto_7

    :catch_3c
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e7

    goto :goto_7

    :goto_56
    return v0
.end method

.method public native closeDriverSpi()I
.end method

.method public native closeSpi()I
.end method

.method public closeSpiDriver()I
    .registers 6

    const-string v0, "SemService"

    const-string v1, "closeSpiDriver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_8
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_b} :catch_47
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_b} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_15

    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/SemService;->closeDriverSpi()I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_5f

    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    :try_start_14
    throw v2
    :try_end_15
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_14 .. :try_end_15} :catch_47
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_14 .. :try_end_15} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_15

    :catch_15
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_60

    :catch_2e
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_5f

    :catch_47
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_5f
    nop

    :goto_60
    return v0
.end method

.method public close_Spi()I
    .registers 6

    const-string v0, "SemService"

    const-string v1, "Start close_Spi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    return v1

    :cond_18
    :try_start_18
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1b} :catch_5d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1b} :catch_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_25

    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/SemService;->closeSpi()I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_78

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    :try_start_24
    throw v2
    :try_end_25
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_24 .. :try_end_25} :catch_5d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_24 .. :try_end_25} :catch_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catch_41
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef close_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :catch_5d
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield close_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    nop

    :goto_79
    return v0
.end method

.method public native deactivateCards(I[[B[II)I
.end method

.method public native deactivateCardsAID(II[[B[II[[B[II[[B[II)I
.end method

.method public deactivate_Cards(I[Ljava/lang/String;[II)I
    .registers 13

    const-string v0, "SemService"

    const-string v1, "Start deactivate_Cards"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v1, p4, [[B

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    return v3

    :cond_1a
    nop

    :goto_1b
    move v2, v3

    if-ge v2, p4, :cond_65

    :try_start_1e
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    aput-object v5, v1, v2

    aget-object v5, v1, v2

    const/4 v6, 0x2

    aget-object v7, v1, v2

    array-length v7, v7

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    aput-object v5, v1, v2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3f} :catch_40

    goto :goto_4a

    :catch_40
    move-exception v3

    const-string v4, "SemService"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    const-string v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v2, 0x1

    goto :goto_1b

    :cond_65
    :try_start_65
    sget-object v2, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_68
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_65 .. :try_end_68} :catch_aa
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_65 .. :try_end_68} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_72

    :try_start_68
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/server/SemService;->deactivateCards(I[[B[II)I

    move-result v3

    move v0, v3

    monitor-exit v2

    goto :goto_c5

    :catchall_6f
    move-exception v3

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v3
    :try_end_72
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_71 .. :try_end_72} :catch_aa
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_71 .. :try_end_72} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_72} :catch_72

    :catch_72
    move-exception v2

    const-string v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    :catch_8e
    move-exception v2

    const-string v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsatisfield deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    :catch_aa
    move-exception v2

    const-string v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoClassDef deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c5
    nop

    :goto_c6
    return v0
.end method

.method public deactivate_CardsAID(II[Ljava/lang/String;[II)I
    .registers 31

    move/from16 v1, p5

    const-string v0, "SemService"

    const-string v2, "Start deactivate_Cards"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    new-array v15, v1, [[B

    new-array v14, v1, [[B

    new-array v13, v1, [[B

    new-array v12, v1, [I

    new-array v11, v1, [I

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object/from16 v10, p0

    invoke-direct {v10, v6, v7}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2a

    return v7

    :cond_2a
    const-string v6, "SemService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "A Size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v16, v5

    :goto_48
    move v3, v7

    if-ge v3, v1, :cond_e1

    const/4 v4, 0x0

    :try_start_4c
    aget-object v0, p3, v3

    move-object v4, v0

    if-nez v4, :cond_5b

    const-string v0, "SemService"

    const-string/jumbo v5, "element is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_da

    :cond_5b
    const-string v0, "*"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "[*]"

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    if-eqz v4, :cond_da

    invoke-static {v4}, Lcom/android/server/SemService;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v14, v18

    aget-object v0, v14, v18

    array-length v0, v0

    aput v0, v12, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_da

    :cond_7c
    const-string v0, "#"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const-string v0, "#"

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    if-eqz v4, :cond_da

    invoke-static {v4}, Lcom/android/server/SemService;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v13, v19

    aget-object v0, v13, v19

    array-length v0, v0

    aput v0, v11, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_da

    :cond_9d
    invoke-static {v4}, Lcom/android/server/SemService;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v15, v17

    aget-object v0, v15, v17

    array-length v0, v0

    aput v0, p4, v17
    :try_end_a8
    .catch Ljava/lang/NullPointerException; {:try_start_4c .. :try_end_a8} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_a8} :catch_ab

    add-int/lit8 v17, v17, 0x1

    goto :goto_da

    :catch_ab
    move-exception v0

    const-string v5, "SemService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DDA Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    :catch_c3
    move-exception v0

    const-string v5, "SemService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DDA Null Point Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    :goto_da
    nop

    :goto_db
    move-object/from16 v16, v4

    add-int/lit8 v7, v3, 0x1

    goto/16 :goto_48

    :cond_e1
    :try_start_e1
    sget-object v20, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v20
    :try_end_e4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e1 .. :try_end_e4} :catch_169
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e1 .. :try_end_e4} :catch_145
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_121

    :try_start_e4
    const-string v0, "SemService"

    const-string v3, "DDA Start "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_e4 .. :try_end_eb} :catchall_10e

    move-object v3, v10

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v15

    move-object/from16 v7, p4

    move/from16 v8, v17

    move-object v9, v14

    move-object v10, v12

    move-object/from16 v21, v11

    move/from16 v11, v18

    move-object/from16 v22, v12

    move-object v12, v13

    move-object/from16 v23, v13

    move-object/from16 v13, v21

    move-object/from16 v24, v14

    move/from16 v14, v19

    :try_start_106
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/SemService;->deactivateCardsAID(II[[B[II[[B[II[[B[II)I

    move-result v0

    move v2, v0

    monitor-exit v20

    goto/16 :goto_18c

    :catchall_10e
    move-exception v0

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    :goto_117
    monitor-exit v20
    :try_end_118
    .catchall {:try_start_106 .. :try_end_118} :catchall_11f

    :try_start_118
    throw v0
    :try_end_119
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_118 .. :try_end_119} :catch_11d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_118 .. :try_end_119} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_119} :catch_119

    :catch_119
    move-exception v0

    goto :goto_12a

    :catch_11b
    move-exception v0

    goto :goto_14e

    :catch_11d
    move-exception v0

    goto :goto_172

    :catchall_11f
    move-exception v0

    goto :goto_117

    :catch_121
    move-exception v0

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    :goto_12a
    const-string v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18d

    :catch_145
    move-exception v0

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    :goto_14e
    const-string v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoClassDef deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18c

    :catch_169
    move-exception v0

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    :goto_172
    const-string v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsatisfield deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18c
    nop

    :goto_18d
    return v2
.end method

.method public native getAttackCountCheck([B)I
.end method

.method public native getCPLC14mode([B)I
.end method

.method public getCPLC14mode()Ljava/lang/String;
    .registers 8

    const-string v0, "SemService"

    const-string v1, "Start GetCPLC14mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    new-array v0, v0, [B

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    return-object v2

    :cond_1b
    :try_start_1b
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_7a

    :try_start_1e
    invoke-virtual {p0, v0}, Lcom/android/server/SemService;->getCPLC14mode([B)I

    move-result v3

    const-string v4, "SemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetCPLC14mode Len "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v3, :cond_44

    const-string v4, "SemService"

    const-string/jumbo v5, "no data to be returned"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :cond_44
    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_6e

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object v0, v4

    const-string v4, "SemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCPLC14mode CPLC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/SemService;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/SemService;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    monitor-exit v1

    return-object v4

    :cond_6e
    const-string v4, "SemService"

    const-string v5, "data overflow"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :catchall_77
    move-exception v3

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_1e .. :try_end_79} :catchall_77

    :try_start_79
    throw v3
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7a} :catch_7a

    :catch_7a
    move-exception v1

    const-string v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getCPLC14mode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public native getEnhancedACDumpGemalto([B)I
.end method

.method public native getHQMMemory([B)I
.end method

.method public native getHWParamData([BI)I
.end method

.method public native getRestricted05mode([B)I
.end method

.method public getRestrictedCheck05mode()Ljava/lang/String;
    .registers 10

    const-string v0, "SemService"

    const-string v1, "Start getRestricted05mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    new-array v1, v0, [B

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    return-object v3

    :cond_1b
    :try_start_1b
    sget-object v2, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_7f

    :try_start_1e
    invoke-virtual {p0, v1}, Lcom/android/server/SemService;->getRestricted05mode([B)I

    move-result v4

    const-string v5, "SemService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getRestricted05mode Len "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v4, :cond_45

    const-string v0, "SemService"

    const-string/jumbo v5, "no data to be returned"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-object v3

    :cond_45
    if-ge v4, v0, :cond_73

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_4b
    .catchall {:try_start_1e .. :try_end_4b} :catchall_7c

    :try_start_4b
    const-string v1, "SemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRestricted05mode Return0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_4b .. :try_end_6d} :catchall_6e

    return-object v1

    :catchall_6e
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_7d

    :cond_73
    :try_start_73
    const-string v0, "SemService"

    const-string v5, "data overflow"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-object v3

    :catchall_7c
    move-exception v0

    :goto_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_73 .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v0
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7f} :catch_7f

    :catch_7f
    move-exception v0

    const-string v2, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getRestricted05mode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public get_AttackCountCheck([B)I
    .registers 7

    const-string v0, "SemService"

    const-string v1, "Start get_AttackCountCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    return v1

    :cond_18
    :try_start_18
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1b} :catch_5d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1b} :catch_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_25

    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->getAttackCountCheck([B)I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_78

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    :try_start_24
    throw v2
    :try_end_25
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_24 .. :try_end_25} :catch_5d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_24 .. :try_end_25} :catch_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catch_41
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :catch_5d
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    nop

    :goto_79
    return v0
.end method

.method public get_EnhancedACDump_Gemalto()V
    .registers 9

    const-string v0, "SemService"

    const-string/jumbo v1, "get_EnhancedACDump"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f40

    new-array v0, v0, [B

    const/16 v1, 0xfa0

    new-array v1, v1, [B

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v2

    if-nez v2, :cond_1f

    return-void

    :cond_1f
    :try_start_1f
    sget-object v2, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_87

    :try_start_22
    invoke-virtual {p0, v0}, Lcom/android/server/SemService;->getEnhancedACDumpGemalto([B)I

    move-result v3

    const-string v4, "SemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enhancedACDump length befor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/16 v5, 0x7d0

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move-object v1, v4

    const-string v4, "SemService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enhancedACDump 1st: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/SemService;->getHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc84

    invoke-static {v0, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move-object v1, v4

    const-string v4, "SemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enhancedACDump 2nd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/SemService;->getHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_84
    move-exception v3

    monitor-exit v2
    :try_end_86
    .catchall {:try_start_22 .. :try_end_86} :catchall_84

    :try_start_86
    throw v3
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_87} :catch_87

    :catch_87
    move-exception v2

    const-string v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open_Spi, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public get_HQMMemory([B)I
    .registers 7

    const-string v0, "SemService"

    const-string v1, "Start get_HQMMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    return v1

    :cond_18
    :try_start_18
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1b} :catch_5d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1b} :catch_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_25

    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->getHQMMemory([B)I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_78

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    :try_start_24
    throw v2
    :try_end_25
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_24 .. :try_end_25} :catch_5d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_24 .. :try_end_25} :catch_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catch_41
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :catch_5d
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    nop

    :goto_79
    return v0
.end method

.method public get_HWParamData([BI)I
    .registers 8

    const-string v0, "SemService"

    const-string v1, "Start get_HWParamData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    return v1

    :cond_18
    :try_start_18
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1b} :catch_5d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1b} :catch_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_25

    :try_start_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->getHWParamData([BI)I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_78

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    :try_start_24
    throw v2
    :try_end_25
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_24 .. :try_end_25} :catch_5d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_24 .. :try_end_25} :catch_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get_HWParamData, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catch_41
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield get_HWParamData, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :catch_5d
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef get_HWParamData, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    nop

    :goto_79
    return v0
.end method

.method public native handleCCM([BI)[Ljava/lang/String;
.end method

.method public handle_CCM([BI)[Ljava/lang/String;
    .registers 8

    const-string v0, "SemService"

    const-string v1, "Start handle_CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    return-object v1

    :cond_18
    :try_start_18
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1b} :catch_5d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1b} :catch_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_25

    :try_start_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->handleCCM([BI)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    monitor-exit v1

    goto :goto_78

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    :try_start_24
    throw v2
    :try_end_25
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_24 .. :try_end_25} :catch_5d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_24 .. :try_end_25} :catch_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catch_41
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :catch_5d
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    nop

    :goto_79
    return-object v0
.end method

.method public isLccmSwp()I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SemService;->jniIsLccmSwp()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_5} :catch_3b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_5} :catch_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    :goto_6
    goto :goto_55

    :catch_7
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e7

    goto :goto_55

    :catch_21
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e7

    goto :goto_6

    :catch_3b
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e7

    goto :goto_6

    :goto_55
    return v0
.end method

.method public native jniICD()I
.end method

.method public native jniIsLccmSwp()I
.end method

.method public native openDriverSpi()I
.end method

.method public native openSpi()I
.end method

.method public openSpiDriver()I
    .registers 6

    const-string v0, "SemService"

    const-string/jumbo v1, "openSpiDriver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_9
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_c} :catch_48
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_c} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_16

    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/SemService;->openDriverSpi()I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_60

    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    :try_start_15
    throw v2
    :try_end_16
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_15 .. :try_end_16} :catch_48
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_15 .. :try_end_16} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_16

    :catch_16
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_61

    :catch_2f
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_60

    :catch_48
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_60
    nop

    :goto_61
    return v0
.end method

.method public open_Spi()I
    .registers 6

    const-string v0, "SemService"

    const-string v1, "Start open_Spi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    return v1

    :cond_18
    :try_start_18
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1b} :catch_5d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1b} :catch_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_25

    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/SemService;->openSpi()I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_78

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    :try_start_24
    throw v2
    :try_end_25
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_24 .. :try_end_25} :catch_5d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_24 .. :try_end_25} :catch_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catch_41
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef open_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :catch_5d
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield open_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    nop

    :goto_79
    return v0
.end method

.method public native printSeState()V
.end method

.method public print_SeState()V
    .registers 5

    const-string v0, "SemService"

    const-string v1, "Start print_SeState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    :try_start_16
    sget-object v0, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_19
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_16 .. :try_end_19} :catch_59
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_16 .. :try_end_19} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_21

    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/SemService;->printSeState()V

    monitor-exit v0

    goto :goto_74

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    :try_start_20
    throw v1
    :try_end_21
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_20 .. :try_end_21} :catch_59
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_20 .. :try_end_21} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_21} :catch_21

    :catch_21
    move-exception v0

    const-string v1, "SemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to print_SeState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    :catch_3d
    move-exception v0

    const-string v1, "SemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsatisfield print_SeState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    :catch_59
    move-exception v0

    const-string v1, "SemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoClassDef print_SeState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    nop

    :goto_75
    return-void
.end method

.method public native sendData([BI[B)I
.end method

.method public send_Data([BI[B)I
    .registers 9

    const-string v0, "SemService"

    const-string v1, "Start send_Data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    return v1

    :cond_18
    :try_start_18
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1b} :catch_5d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1b} :catch_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_25

    :try_start_1b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SemService;->sendData([BI[B)I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_78

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    :try_start_24
    throw v2
    :try_end_25
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_24 .. :try_end_25} :catch_5d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_24 .. :try_end_25} :catch_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send_Data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catch_41
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef send_Data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :catch_5d
    move-exception v1

    const-string v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield send_Data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    nop

    :goto_79
    return v0
.end method
