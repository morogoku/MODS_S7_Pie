.class Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
.super Landroid/os/AsyncTask;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostnameResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFinishResolving:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 8

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->allIpsInfo:[Ljava/net/InetAddress;
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$802([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    const/4 v2, 0x1

    :try_start_8
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    # setter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->allIpsInfo:[Ljava/net/InetAddress;
    invoke-static {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$802([Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_f} :catch_14
    .catchall {:try_start_8 .. :try_end_f} :catchall_12

    :goto_f
    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    goto :goto_1d

    :catchall_12
    move-exception v1

    goto :goto_32

    :catch_14
    move-exception v3

    :try_start_15
    const-string v4, "FirewallPolicy"

    const-string v5, "HostnameResolver.doInBackground() - Couldn\'t create user context"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    goto :goto_f

    :goto_1d
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLocker:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$900(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_24
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLocker:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$900(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v3

    return-object v1

    :catchall_2f
    move-exception v1

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw v1

    :goto_32
    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    throw v1
.end method

.method protected isFinished()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    return v0
.end method
