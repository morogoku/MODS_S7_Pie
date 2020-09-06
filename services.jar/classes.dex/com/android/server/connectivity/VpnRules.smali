.class public Lcom/android/server/connectivity/VpnRules;
.super Ljava/lang/Object;
.source "VpnRules.java"


# static fields
.field private static final APPEND:Ljava/lang/String; = "-A"

.field private static final DEL_CHAIN:Ljava/lang/String; = "-X"

.field private static final DEL_RULE:Ljava/lang/String; = "-D"

.field private static final FLUSH:Ljava/lang/String; = "-F"

.field private static final JUMP:Ljava/lang/String; = " -j"

.field private static final KEY_VPN_RULES_COMMAND:Ljava/lang/String; = "TCPMONITOR"

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

    invoke-direct {p0}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()Z

    :cond_a
    return-void
.end method

.method private bindNetdNativeService()Z
    .registers 5

    :try_start_0
    const-string/jumbo v0, "netd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    const-string v0, "VpnRules"

    const-string v2, "Can not bind netd service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1a
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "VpnRules"

    const-string v2, "Failed to bind netd service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2b

    return v1

    :cond_2a
    goto :goto_46

    :catch_2b
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

    :goto_46
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized runVpnRulesCommand(ILjava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "VpnRules"

    const-string v1, "Failed to runVpnRulesCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_5b

    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->runVpnRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnRules"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_31

    :cond_2f
    move-object v3, v0

    goto :goto_33

    :cond_31
    :goto_31
    const-string v3, "OK"

    :goto_33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3d} :catch_3e
    .catchall {:try_start_14 .. :try_end_3d} :catchall_5b

    goto :goto_59

    :catch_3e
    move-exception v0

    :try_start_3f
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
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_5b

    :goto_59
    monitor-exit p0

    return-void

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized runVpnRulesShellCommand(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "VpnRules"

    const-string v1, "Failed to runVpnRulesShellCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_99

    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    const-string v0, ""

    const/4 v1, 0x0

    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "TCPMONITOR"

    const-string v5, "TCPMONITOR"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    rem-int v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_44
    iget-object v1, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, v0}, Landroid/net/INetd;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Run cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const-string v4, "OK"

    goto :goto_71

    :cond_70
    move-object v4, v1

    :goto_71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_7b} :catch_7c
    .catchall {:try_start_14 .. :try_end_7b} :catchall_99

    goto :goto_97

    :catch_7c
    move-exception v0

    :try_start_7d
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
    :try_end_97
    .catchall {:try_start_7d .. :try_end_97} :catchall_99

    :goto_97
    monitor-exit p0

    return-void

    :catchall_99
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

.method public flushXfrmStateRule()V
    .registers 3

    const-string v0, "VpnRules"

    const-string/jumbo v1, "flushXfrmStateRule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ip xfrm state flush"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesShellCommand(Ljava/lang/String;)V

    return-void
.end method
