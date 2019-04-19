.class public Lcom/android/server/OcfKeyService;
.super Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;
.source "OcfKeyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OcfKeyService$OcfKeyServiceResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OcfKeyService"

.field private static mAllowedPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/OcfKeyService;->mAllowedPackageNames:Ljava/util/Set;

    const-string/jumbo v0, "tlc_tz_ocf_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;-><init>()V

    sput-object p1, Lcom/android/server/OcfKeyService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/OcfKeyService;->mAllowedPackageNames:Ljava/util/Set;

    const-string v1, "com.samsung.android.oneconnect"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/OcfKeyService;->mAllowedPackageNames:Ljava/util/Set;

    const-string v1, "com.samsung.android.ocfkeytest"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/OcfKeyService;->mAllowedPackageNames:Ljava/util/Set;

    const-string v1, "com.samsung.sept.IoTSecurity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "OcfKeyService"

    const-string v1, "OcfKeyService Constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkPermission(II)Z
    .registers 14

    const-string v0, ""

    const-string v1, ""

    :try_start_4
    sget-object v2, Lcom/android/server/OcfKeyService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1d

    const-string v5, "OcfKeyService"

    const-string v6, "Failed to get runing app processes."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_35

    iget-object v5, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object v0, v5

    goto :goto_36

    :cond_35
    goto :goto_21

    :cond_36
    :goto_36
    move-object v1, v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_45

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    :cond_45
    const-string v6, "OcfKeyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "target packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/OcfKeyService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    const-string v8, "OcfKeyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "packageInfo uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " caller uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, p2, :cond_97

    const-string v8, "OcfKeyService"

    const-string v9, "Package doe not match uid"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_96} :catch_98

    return v4

    :cond_97
    goto :goto_a3

    :catch_98
    move-exception v2

    const-string v3, "OcfKeyService"

    const-string v4, "Failed to get caller package name."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a3
    const-string v2, "OcfKeyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check package name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/OcfKeyService;->mAllowedPackageNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private native getCertificateChain(I)[B
.end method

.method private native getWrappedKeyStatus(I)I
.end method

.method private native installKey([B)I
.end method

.method private native loadOcfTa()I
.end method

.method private native sign(II[B)[B
.end method

.method private native unloadOcfTa()I
.end method


# virtual methods
.method public finalizeTA()I
    .registers 4

    const-string v0, "OcfKeyService"

    const-string/jumbo v1, "finalize Ocf TA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "OcfKeyService"

    const-string v1, "Permission denied to use OcfKeyService."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v0

    return v0

    :cond_24
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28
    invoke-direct {p0}, Lcom/android/server/OcfKeyService;->unloadOcfTa()I

    move-result v2

    move v0, v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_37

    invoke-static {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->convertOcfKeyServiceError(I)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public getCertificateChain(I[B)I
    .registers 8

    const-string v0, "OcfKeyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCertificateChain. type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "OcfKeyService"

    const-string v2, "Permission denied to use OcfKeyService."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :cond_34
    sget-object v1, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_37
    invoke-direct {p0, p1}, Lcom/android/server/OcfKeyService;->getCertificateChain(I)[B

    move-result-object v2

    if-eqz v2, :cond_77

    array-length v3, v2

    if-nez v3, :cond_41

    goto :goto_77

    :cond_41
    if-eqz p2, :cond_68

    array-length v3, p2

    array-length v4, v2

    if-ge v3, v4, :cond_48

    goto :goto_68

    :cond_48
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, p2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v2

    move v0, v3

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_86

    const-string v1, "OcfKeyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCertificateChain. return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_68
    :goto_68
    :try_start_68
    const-string v3, "OcfKeyService"

    const-string v4, "Failed to write Certificate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->INVALID_PARAMETER:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v3}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v3

    monitor-exit v1

    return v3

    :cond_77
    :goto_77
    const-string v3, "OcfKeyService"

    const-string v4, "Failed to get Certificate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v3}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v3

    monitor-exit v1

    return v3

    :catchall_86
    move-exception v2

    monitor-exit v1
    :try_end_88
    .catchall {:try_start_68 .. :try_end_88} :catchall_86

    throw v2
.end method

.method public getInstalledKeyStatus(I)I
    .registers 5

    const-string v0, "OcfKeyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check key installed for type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "OcfKeyService"

    const-string v1, "Permission denied to use OcfKeyService."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v0

    return v0

    :cond_32
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_36
    invoke-direct {p0, p1}, Lcom/android/server/OcfKeyService;->getWrappedKeyStatus(I)I

    move-result v2

    move v0, v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_45

    invoke-static {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->convertOcfKeyServiceError(I)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2
.end method

.method public initializeTA()I
    .registers 4

    const-string v0, "OcfKeyService"

    const-string/jumbo v1, "initialize Ocf TA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "OcfKeyService"

    const-string v1, "Permission denied to use OcfKeyService."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v0

    return v0

    :cond_24
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28
    invoke-direct {p0}, Lcom/android/server/OcfKeyService;->loadOcfTa()I

    move-result v2

    move v0, v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_37

    invoke-static {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->convertOcfKeyServiceError(I)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public installCertificateChain([B)I
    .registers 5

    const-string v0, "OcfKeyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install Certificate chain. wrapped length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "OcfKeyService"

    const-string v1, "Permission denied to use OcfKeyService."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v0

    return v0

    :cond_33
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_37
    invoke-direct {p0, p1}, Lcom/android/server/OcfKeyService;->installKey([B)I

    move-result v2

    move v0, v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_46

    invoke-static {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->convertOcfKeyServiceError(I)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :catchall_46
    move-exception v2

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v2
.end method

.method public sign(II[B[B)I
    .registers 11

    if-nez p3, :cond_1f

    const-string v0, "OcfKeyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sign. hash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_1f
    const-string v0, "OcfKeyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sign. hash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "OcfKeyService"

    const-string v1, "Permission denied to use OcfKeyService."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v0

    return v0

    :cond_5b
    if-eqz p3, :cond_b8

    array-length v0, p3

    if-nez v0, :cond_61

    goto :goto_b8

    :cond_61
    const/4 v0, 0x0

    move v1, p1

    sget-object v2, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_66
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/OcfKeyService;->sign(II[B)[B

    move-result-object v3

    if-eqz v3, :cond_a6

    array-length v4, v3

    if-nez v4, :cond_70

    goto :goto_a6

    :cond_70
    if-eqz p4, :cond_97

    array-length v4, p4

    array-length v5, v3

    if-ge v4, v5, :cond_77

    goto :goto_97

    :cond_77
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, p4, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v4, v3

    move v0, v4

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_b5

    const-string v2, "OcfKeyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sign. return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_97
    :goto_97
    :try_start_97
    const-string v4, "OcfKeyService"

    const-string v5, "Failed to write signature"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->INVALID_PARAMETER:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v4}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v4

    monitor-exit v2

    return v4

    :cond_a6
    :goto_a6
    const-string v4, "OcfKeyService"

    const-string v5, "Failed to sign"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v4}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v4

    monitor-exit v2

    return v4

    :catchall_b5
    move-exception v3

    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_97 .. :try_end_b7} :catchall_b5

    throw v3

    :cond_b8
    :goto_b8
    const-string v0, "OcfKeyService"

    const-string v1, "Message is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->INVALID_PARAMETER:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v0

    return v0
.end method
