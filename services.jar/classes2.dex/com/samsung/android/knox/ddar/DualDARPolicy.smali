.class public Lcom/samsung/android/knox/ddar/DualDARPolicy;
.super Ljava/lang/Object;
.source "DualDARPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ddar/DualDARPolicy$DUAL_DAR_VERSION_CODES;
    }
.end annotation


# static fields
.field private static final CURRENT_DUAL_DAR_VERSION:Ljava/lang/String; = "1.0.1"

.field public static final DUAL_DAR_POLICY_SERVICE:Ljava/lang/String; = "DualDARPolicy"

.field public static final ERROR_FAILURE_IN_SETTING_DATA_LOCK_TIMEOUT:I = -0x1

.field public static final ERROR_FAILURE_IN_SETTING_DE_RESTRICTION:I = -0x3

.field public static final ERROR_FAILURE_IN_SETTING_WHITELIST_PACKAGES:I = -0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final KEY_CONFIG_CLIENT_PACKAGE:Ljava/lang/String; = "dualdar-config-client-package"

.field public static final KEY_CONFIG_CLIENT_SIGNATURE:Ljava/lang/String; = "dualdar-config-client-signature"

.field public static final KEY_CONFIG_DATA_LOCK_TIMEOUT:Ljava/lang/String; = "dualdar-config-datalock-timeout"

.field public static final KEY_CONFIG_DE_RESTRICTION:Ljava/lang/String; = "dualdar-config-de-restriction"

.field public static final KEY_CONFIG_WHITELISTED_DATA_LOCK_STATE_PACKAGES:Ljava/lang/String; = "dualdar-config-datalock-whitelistpackages"

.field public static final KEY_DUAL_DAR_CONFIG:Ljava/lang/String; = "dualdar-config"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DualDARPolicy"

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getService()Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-nez v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v1, "DualDARPolicy Service is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public static getDualDARVersion()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-nez v0, :cond_10

    const-string v0, "DualDARPolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    return-object v0
.end method


# virtual methods
.method public clearPolicy()Z
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v1, "clearPolicy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->clearPolicy(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    return v0

    :cond_14
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getService() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v2, "clearPolicy Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    const/4 v0, 0x0

    return v0
.end method

.method public getConfig()Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualDARPolicy.getConfig"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_14
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getService() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getConfig Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setClientInfo() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setClientInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getService() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_1c

    goto :goto_25

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setClientInfo Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public setConfig(Landroid/os/Bundle;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualDARPolicy.setConfig"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v0

    return v0

    :cond_14
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getService() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_25

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setConfig Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    const/4 v0, -0x1

    return v0
.end method
