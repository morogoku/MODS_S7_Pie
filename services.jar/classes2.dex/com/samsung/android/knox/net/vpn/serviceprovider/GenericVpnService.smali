.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;
.super Landroid/app/Service;
.source "GenericVpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;,
        Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "GenericVpnService"

.field private static mVpnProfileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->mVpnProfileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/net/InetAddress;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->mVpnProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/IConnectivityManager;
    .registers 1

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method private static check(Ljava/net/InetAddress;I)V
    .registers 4

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_34

    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_19

    if-ltz p1, :cond_11

    const/16 v0, 0x20

    if-gt p1, v0, :cond_11

    goto :goto_23

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2c

    if-ltz p1, :cond_24

    const/16 v0, 0x80

    if-gt p1, v0, :cond_24

    :goto_23
    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkIfAdminHasVpnPermission()Z
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_NETWORK_TRAFFIC_AGENT"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_13

    if-nez v0, :cond_12

    const/4 v1, 0x1

    return v1

    :cond_12
    goto :goto_2e

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: checkIfAdminHasVpnPermission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenericVpnService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No permission grants found for UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenericVpnService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.samsung.android.knox.permission.KNOX_NETWORK_TRAFFIC_AGENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getService()Landroid/net/IConnectivityManager;
    .registers 1

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static prepare(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .registers 12

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.prepare"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "GenericVpnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare is getting called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isconnecting value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_79

    if-eqz p1, :cond_79

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sput-object p1, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->mVpnProfileName:Ljava/lang/String;

    :try_start_44
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    const/4 v3, 0x0

    move-object v2, v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_55

    if-eqz v1, :cond_54

    return-object v0

    :cond_54
    goto :goto_70

    :catch_55
    move-exception v1

    const-string v2, "GenericVpnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in prepare : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_70
    const/4 v1, 0x1

    if-ne p2, v1, :cond_78

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    nop

    :cond_78
    return-object v0

    :cond_79
    const-string v1, "GenericVpnService"

    const-string v2, "Invalid profile name or context passed in prepare()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)Z
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.addAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_14
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManager;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return v0

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    const-string v1, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;-><init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$1;)V

    return-object v1

    :cond_15
    return-object v0
.end method

.method public onRevoke()V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->stopSelf()V

    return-void
.end method

.method public protect(I)Z
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.protect"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_11
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    move-result v0

    return v0

    :cond_2a
    const-string v0, "GenericVpnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "protect is not going to be called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_47
    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    move-result v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b} :catch_4c

    return v0

    :catch_4c
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public protect(Ljava/net/DatagramSocket;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public protect(Ljava/net/Socket;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.removeAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_14
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManager;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return v0

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
