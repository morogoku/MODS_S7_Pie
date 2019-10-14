.class public Lcom/samsung/android/knox/net/firewall/Firewall;
.super Ljava/lang/Object;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;,
        Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;,
        Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;,
        Lcom/samsung/android/knox/net/firewall/Firewall$Direction;,
        Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    }
.end annotation


# static fields
.field public static final ACTION_BLOCKED_DOMAIN:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BLOCKED_DOMAIN"

.field public static final EXTRA_BLOCKED_DOMAIN_ISFOREGROUND:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

.field public static final EXTRA_BLOCKED_DOMAIN_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

.field public static final EXTRA_BLOCKED_DOMAIN_TIMESTAMP:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

.field public static final EXTRA_BLOCKED_DOMAIN_UID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_UID"

.field public static final EXTRA_BLOCKED_DOMAIN_URL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_URL"

.field public static final FIREWALL_ALLOW_RULE:I = 0x1

.field public static final FIREWALL_ALL_DOMAIN_RULES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIREWALL_ALL_PACKAGES:Ljava/lang/String; = "*"

.field public static final FIREWALL_ALL_RULES:I = 0xf

.field public static final FIREWALL_DENY_RULE:I = 0x2

.field public static final FIREWALL_REDIRECT_EXCEPTION_RULE:I = 0x8

.field public static final FIREWALL_REDIRECT_RULE:I = 0x4

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/net/firewall/IFirewall;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->FIREWALL_ALL_DOMAIN_RULES:Ljava/util/List;

    const-string v0, "FirewallSDK"

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/net/firewall/Firewall;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/net/firewall/IFirewall;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    if-nez v0, :cond_10

    const-string v0, "firewall"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/firewall/IFirewall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    return-object v0
.end method


# virtual methods
.method public addDomainFilterRules(Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.addDomainFilterRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDomainFilterRules() - rules.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_20

    :cond_1e
    const-string v2, "0"

    :goto_20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "addDomainFilterRules() - Error in getService()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_39
    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_bc

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-ge v0, v3, :cond_84

    if-eqz p1, :cond_84

    new-instance v3, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-direct {v3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>()V

    move v5, v4

    :goto_55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_84

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    if-eqz v6, :cond_81

    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_81

    :cond_77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    :cond_84
    :try_start_84
    iget-object v3, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v5, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v3, v5, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v3

    if-eqz v3, :cond_b2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b2

    nop

    :goto_95
    array-length v5, v3

    if-ge v4, v5, :cond_b2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "DNS(s) not yet supported."

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v5, v3, v4
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_af} :catch_b3

    :cond_af
    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    :cond_b2
    return-object v3

    :catch_b3
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v5, "addDomainFilterRules() - RemoteException at addDomainFilterRules method."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    :cond_bc
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "addDomainFilterRules() - Not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c3
    return-object v1
.end method

.method public addRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.addRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRules() - FirewallRule[].length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1b

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1d

    :cond_1b
    const-string v2, "0"

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_50

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_49

    :try_start_37
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->addRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3f} :catch_40

    return-object v1

    :catch_40
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "addRules() - RemoteException at addRules method."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_49
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "Firewall.addRules() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    :goto_50
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearRules(I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.clearRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearRules(bitmask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_48

    :try_start_36
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->clearRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v1
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_3f

    return-object v1

    :catch_3f
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "clearRules() - RemoteException at clearRules method."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_48
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "Firewall.clearRules() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableDomainFilterOnIptables(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.enableDomainFilterOnIptables"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_28

    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException at enableDomainFilterOnIptables method."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableDomainFilterReport(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.enableDomainFilterReport"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_28

    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "enableDomainFilterReport() - RemoteException at enableDomainFilterReport method."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableFirewall(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.enableFirewall"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableFirewall(enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_48

    :try_start_36
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->enableFirewall(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v1
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_3f

    return-object v1

    :catch_3f
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "enableFirewall() - RemoteException at enableFirewall method."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_48
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "Firewall.enableFirewall() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomainFilterReport(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.getDomainFilterReport"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v1, "25"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2a

    :try_start_18
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v3, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_22

    move-object v0, v2

    goto :goto_2a

    :catch_22
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v4, "getDomainFilterReport() - RemoteException at getDomainFilterReport method."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public getDomainFilterRules(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.getDomainFilterRules"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string v1, "25"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2b

    :try_start_19
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v3, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_21} :catch_23

    move-object v0, v2

    goto :goto_2b

    :catch_23
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v4, "getDomainFilterRules() - RemoteException at getDomainFilterRules method."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public getRules(ILcom/samsung/android/knox/net/firewall/FirewallRule$Status;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.getRules"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_3c

    if-eqz p2, :cond_2a

    :try_start_1b
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v3, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v2

    return-object v2

    :catch_28
    move-exception v2

    goto :goto_33

    :cond_2a
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v3, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1, v1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_32} :catch_28

    return-object v2

    :goto_33
    nop

    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v4, "getRules() - RemoteException at getRules method."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_3c
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "Firewall.getRules() : This device doesn\'t support this API."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    :goto_43
    return-object v1
.end method

.method public isDomainFilterOnIptablesEnabled()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.isDomainFilterOnIptablesEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_28

    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/firewall/IFirewall;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    return v1

    :catch_20
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "isDomainFilterOnIptablesEnabled() - RemoteException at isDomainFilterOnIptablesEnabled method."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public isDomainFilterReportEnabled()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.isDomainFilterReportEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_29

    :try_start_18
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/firewall/IFirewall;->isDomainFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21

    return v1

    :catch_21
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "isDomainFilterReportEnabled() - RemoteException at isDomainFilterReportEnabled method."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public isFirewallEnabled()Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_22

    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/firewall/IFirewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19

    return v1

    :catch_19
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "isFirewallEnabled() - RemoteException at isFirewallEnabled method."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_22
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "Firewall.isFirewallEnabled() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public listIptablesRules()[Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.listIptablesRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_29

    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/firewall/IFirewall;->listIptablesRules(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "listIptablesRules() - RemoteException at listIptablesRules method."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_29
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "Firewall.listIptablesRules() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_30
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeDomainFilterRules(Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.removeDomainFilterRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDomainFilterRules() - List<DomainFilterRule>.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_21

    :cond_1f
    const-string v2, "0"

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeDomainFilterRules() - Error in getService()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3b
    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_bf

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-ge v0, v3, :cond_86

    if-eqz p1, :cond_86

    new-instance v3, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-direct {v3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>()V

    move v5, v4

    :goto_57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_86

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    if-eqz v6, :cond_83

    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_83

    :cond_79
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_83
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :cond_86
    :try_start_86
    iget-object v3, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v5, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v3, v5, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v3

    if-eqz v3, :cond_b4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b4

    nop

    :goto_97
    array-length v5, v3

    if-ge v4, v5, :cond_b4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "DNS(s) not yet supported."

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v5, v3, v4
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_b1} :catch_b5

    :cond_b1
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    :cond_b4
    return-object v3

    :catch_b5
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "removeDomainFilterRules() - RemoteException at removeDomainFilterRules method."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    :cond_bf
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeDomainFilterRules() - Not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c7
    return-object v1
.end method

.method public removeRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.removeRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRules() - FirewallRule[].length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1c

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1e

    :cond_1c
    const-string v2, "0"

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4b

    :try_start_38
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->removeRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v1
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_40} :catch_41

    return-object v1

    :catch_41
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeRules() - RemoteException at removeRules method."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_4b
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "Firewall.removeRules() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    const/4 v0, 0x0

    return-object v0
.end method
