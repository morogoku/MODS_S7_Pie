.class public Lcom/samsung/android/knox/net/GlobalProxy;
.super Ljava/lang/Object;
.source "GlobalProxy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "GlobalProxy"

    sput-object v0, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private canUsePacOrAuthConfig()Z
    .registers 3

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    const/4 v1, 0x1

    return v1
.end method

.method private getService()Lcom/samsung/android/knox/IMiscPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_11

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object v0
.end method

.method private isUsingPacOrAuthConfig(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    move-result v2

    if-nez v0, :cond_15

    if-eqz v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    nop

    :cond_15
    :goto_15
    return v1
.end method


# virtual methods
.method public getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GlobalProxy.getGlobalProxy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IMiscPolicy;->getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException at method getGlobalProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public setGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    invoke-direct {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v1

    if-eqz v1, :cond_1a

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/IMiscPolicy;->clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return v1

    :catch_12
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException at method setGlobalProxy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return v0

    :cond_1b
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/GlobalProxy;->isUsingPacOrAuthConfig(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->canUsePacOrAuthConfig()Z

    move-result v1

    if-nez v1, :cond_28

    return v0

    :cond_28
    iget-object v1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "GlobalProxy.setGlobalProxy"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v1

    if-gez v1, :cond_47

    sget-object v1, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    const-string v2, "inValid proxyPort"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_47
    invoke-direct {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v1

    if-eqz v1, :cond_5e

    :try_start_4d
    iget-object v1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/IMiscPolicy;->setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    move-result v1
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_55} :catch_56

    return v1

    :catch_56
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException at method setGlobalProxy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return v0
.end method
