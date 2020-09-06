.class Lcom/att/iqi/IQIServiceBroker$3;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$3;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "com.att.iqi.extra.IQI_DEBUG"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eq v0, v1, :cond_15

    # setter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$402(Z)Z

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$3;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # invokes: Lcom/att/iqi/IQIServiceBroker;->setEnableLogs(Z)V
    invoke-static {v1, v0}, Lcom/att/iqi/IQIServiceBroker;->access$500(Lcom/att/iqi/IQIServiceBroker;Z)V

    :cond_15
    return-void
.end method
