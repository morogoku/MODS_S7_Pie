.class public Lcom/android/server/connectivity/VpnRules;
.super Ljava/lang/Object;
.source "VpnRules.java"


# static fields
.field private static final APPEND:Ljava/lang/String; = "-A"

.field private static final DEL_CHAIN:Ljava/lang/String; = "-X"

.field private static final DEL_RULE:Ljava/lang/String; = "-D"

.field private static final FLUSH:Ljava/lang/String; = "-F"

.field private static final JUMP:Ljava/lang/String; = " -j"

.field private static final MANGLE:Ljava/lang/String; = "mangle"

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final NEW_CHAIN:Ljava/lang/String; = "-N"

.field private static final POSTROUTING:Ljava/lang/String; = " POSTROUTING"

.field private static final TAG:Ljava/lang/String; = "VpnRules"

.field private static final VPN_POSTROUTING:Ljava/lang/String; = " vpn_POSTROUTING"


# instance fields
.field private mNetdService:Landroid/net/INetd;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()V

    :cond_a
    return-void
.end method

.method private bindNetdNativeService()V
    .registers 5

    :try_start_0
    const-string/jumbo v0, "netd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_29

    :catch_e
    move-exception v0

    const-string v1, "VpnRules"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind netd service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_34

    const-string v0, "VpnRules"

    const-string v1, "Can not bind netd service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method private declared-synchronized runVpnRulesCommand(ILjava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4f

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->runVpnRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnRules"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_25

    :cond_23
    move-object v3, v0

    goto :goto_27

    :cond_25
    :goto_25
    const-string v3, "OK"

    :goto_27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_32
    .catchall {:try_start_8 .. :try_end_31} :catchall_4f

    goto :goto_4d

    :catch_32
    move-exception v0

    :try_start_33
    const-string v1, "VpnRules"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to run cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_4f

    :goto_4d
    monitor-exit p0

    return-void

    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addTcpmssClampRule()V
    .registers 3

    const-string v0, "VpnRules"

    const-string v1, "addTcpmssClampRule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "*mangle\n-A vpn_POSTROUTING -p tcp --tcp-flag SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu\nCOMMIT\n"

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public createVpnPostroutingChain()V
    .registers 3

    const-string v0, "VpnRules"

    const-string v1, "createVpnPostroutingChain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "*mangle\n-N vpn_POSTROUTING\nCOMMIT\n"

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    const-string v0, "*mangle\n-D POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    const-string v0, "*mangle\n-A POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public deleteTcpmssClampRule()V
    .registers 3

    const-string v0, "VpnRules"

    const-string/jumbo v1, "deleteTcpmssClampRule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "*mangle\n-D vpn_POSTROUTING -p tcp --tcp-flag SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu\nCOMMIT\n"

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public deleteVpnPostroutingChain()V
    .registers 3

    const-string v0, "VpnRules"

    const-string/jumbo v1, "deleteVpnPostroutingChain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "*mangle\n-D POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    const-string v0, "*mangle\n-F vpn_POSTROUTING\nCOMMIT\n"

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    const-string v0, "*mangle\n-X vpn_POSTROUTING\nCOMMIT\n"

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method
