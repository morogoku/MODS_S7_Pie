.class Lcom/android/server/enterprise/firewall/DomainFilter$4;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$900(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    const-string v2, "CAPPORTAL"

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1000(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1100(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->retrieveCaptivePortalHosts()Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    const-string v4, "CAPPORTAL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1100(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_39
    return-void
.end method
