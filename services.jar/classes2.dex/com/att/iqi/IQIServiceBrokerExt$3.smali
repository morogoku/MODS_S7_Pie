.class Lcom/att/iqi/IQIServiceBrokerExt$3;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBrokerExt;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBrokerExt;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    const-string v1, "com.att.iqi.extra.SERVICE_RUNNING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/att/iqi/IQIServiceBrokerExt;->mServiceRunning:Z
    invoke-static {v0, v1}, Lcom/att/iqi/IQIServiceBrokerExt;->access$302(Lcom/att/iqi/IQIServiceBrokerExt;Z)Z

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/att/iqi/IQIServiceBrokerExt;->DEBUG:Z
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBrokerExt;->access$200(Lcom/att/iqi/IQIServiceBrokerExt;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "IQIServiceBrokerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceStateReceiver : service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/att/iqi/IQIServiceBrokerExt;->mServiceRunning:Z
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBrokerExt;->access$300(Lcom/att/iqi/IQIServiceBrokerExt;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "running"

    goto :goto_30

    :cond_2d
    const-string/jumbo v2, "stopped"

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method
