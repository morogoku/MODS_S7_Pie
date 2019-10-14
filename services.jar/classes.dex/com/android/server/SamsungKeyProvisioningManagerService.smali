.class public final Lcom/android/server/SamsungKeyProvisioningManagerService;
.super Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;
.source "SamsungKeyProvisioningManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;
    }
.end annotation


# static fields
.field private static final ERROR_EXCEPTION:I = -0x5a

.field private static final ERROR_NETWORK_NOT_AVAILABLE:I = -0x29

.field private static final ERROR_NO_PERMISSION:I = -0x5b

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SamsungKeyProvisioningManagerService"

.field private static mContext:Landroid/content/Context;

.field private static mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mRequestedProcess:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "sec_skpm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;-><init>()V

    sput-object p1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    invoke-direct {v0}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;-><init>()V

    sput-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    sget-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    const-string/jumbo v1, "system"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    const-string v1, "com.sec.keyverifier"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    const-string/jumbo v1, "security.sec.com.skpmtest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->add(Ljava/lang/String;I)V

    :cond_37
    return-void
.end method

.method private native changeOtaServer(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native createGetSessionKey(BLjava/lang/String;[BB)I
.end method

.method private native generateServiceKey()I
.end method

.method private hasAccessPermission(II)Z
    .registers 8

    const-string v0, ""

    :try_start_2
    sget-object v1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mContext:Landroid/content/Context;

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

    const-string v2, "SamsungKeyProvisioningManagerService"

    const-string v3, "Error occurs on checking package name."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_3d
    sget-object v1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->match(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested package name = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_b5

    :cond_63
    sget-object v2, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    const v3, 0x186a0

    rem-int v3, p2, v3

    invoke-virtual {v2, v0, v3}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->match(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested package name = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], called from secure container"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_b5

    :cond_8e
    const-string v2, "SamsungKeyProvisioningManagerService"

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

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mRequestedProcess:Ljava/lang/String;

    :goto_b5
    return v1
.end method

.method private native injectKey(BBLjava/lang/String;[BB)I
.end method

.method private isNetworkAvailable()Z
    .registers 7

    sget-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-string v2, "SamsungKeyProvisioningManagerService"

    const-string v3, "Couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_15
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_3d

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v1, 0x1

    nop

    :cond_3d
    return v1

    :cond_3e
    const-string v3, "SamsungKeyProvisioningManagerService"

    const-string v4, "Network is not connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_46
    const-string v3, "SamsungKeyProvisioningManagerService"

    const-string v4, "There is not active network"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private native readKeyUID(BBLjava/lang/String;[B)I
.end method

.method private native releaseGetSessionKey()I
.end method

.method private native verifyKey(BBLjava/lang/String;)I
.end method


# virtual methods
.method public create_keySession(BLjava/lang/String;[BB)I
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, -0x5b

    return v1

    :cond_12
    :try_start_12
    sget-object v1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1f

    :try_start_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SamsungKeyProvisioningManagerService;->createGetSessionKey(BLjava/lang/String;[BB)I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_54

    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v1

    const-string v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create_keySession. keyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", encodingType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    :goto_54
    return v0
.end method

.method public generate_serviceKey()V
    .registers 7

    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "factory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_3b

    sget-object v1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/SamsungKeyProvisioningManagerService;->generateServiceKey()I

    move-result v2

    if-eqz v2, :cond_36

    const-string v3, "SamsungKeyProvisioningManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to generateServiceKey. ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    monitor-exit v1

    goto :goto_3b

    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    throw v2

    :cond_3b
    :goto_3b
    return-void
.end method

.method public get_keyUid(BBLjava/lang/String;[B)I
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, -0x5b

    return v1

    :cond_12
    :try_start_12
    sget-object v1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1f

    :try_start_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SamsungKeyProvisioningManagerService;->readKeyUID(BBLjava/lang/String;[B)I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_54

    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v1

    const-string v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get_keyUid. injectionType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    :goto_54
    return v0
.end method

.method public release_keySession()I
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, -0x5b

    return v1

    :cond_12
    sget-object v1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    invoke-direct {p0}, Lcom/android/server/SamsungKeyProvisioningManagerService;->releaseGetSessionKey()I

    move-result v2

    move v0, v2

    monitor-exit v1

    return v0

    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public set_otaServer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, -0x5b

    return v1

    :cond_12
    :try_start_12
    sget-object v1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1f

    :try_start_15
    invoke-direct {p0, p1, p2}, Lcom/android/server/SamsungKeyProvisioningManagerService;->changeOtaServer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_4c

    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v1

    const-string v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set_otaServer. serverAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", serverPort : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    :goto_4c
    return v0
.end method

.method public verify_key(BBLjava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, -0x5b

    return v1

    :cond_12
    :try_start_12
    sget-object v1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1f

    :try_start_15
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SamsungKeyProvisioningManagerService;->verifyKey(BBLjava/lang/String;)I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_54

    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v1

    const-string v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to verify_key. injectionType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    :goto_54
    return v0
.end method

.method public write_key(BBLjava/lang/String;[BB)I
    .registers 11

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, -0x5b

    return v1

    :cond_12
    const/4 v1, 0x2

    if-eq p1, v1, :cond_18

    const/4 v1, 0x4

    if-ne p1, v1, :cond_28

    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/android/server/SamsungKeyProvisioningManagerService;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "SamsungKeyProvisioningManagerService"

    const-string v2, "Network is not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x29

    return v1

    :cond_28
    sget-object v1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2b} :catch_35

    :try_start_2b
    invoke-direct/range {p0 .. p5}, Lcom/android/server/SamsungKeyProvisioningManagerService;->injectKey(BBLjava/lang/String;[BB)I

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_72

    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    :try_start_34
    throw v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_35} :catch_35

    :catch_35
    move-exception v1

    const-string v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write_key. injectionType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", encodingType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    :goto_72
    return v0
.end method
