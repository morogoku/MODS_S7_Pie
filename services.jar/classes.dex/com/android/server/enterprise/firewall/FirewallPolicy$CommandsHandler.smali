.class Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;
.super Landroid/os/Handler;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetdService:Landroid/net/INetd;
    invoke-static {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/INetd;

    move-result-object v3

    if-nez v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->connectNativeNetdService()V
    invoke-static {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$700(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    :cond_1f
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetdService:Landroid/net/INetd;
    invoke-static {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_2b
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetdService:Landroid/net/INetd;
    invoke-static {v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/INetd;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/net/INetd;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_3a
    .catchall {:try_start_2b .. :try_end_34} :catchall_38

    :goto_34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_47

    :catchall_38
    move-exception v5

    goto :goto_43

    :catch_3a
    move-exception v5

    :try_start_3b
    const-string v6, "FirewallPolicy"

    const-string v7, "CommandsHandler.handleMessage() - RemoteException in runShellCommand."

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_38

    goto :goto_34

    :goto_43
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_47
    :goto_47
    return-void
.end method
