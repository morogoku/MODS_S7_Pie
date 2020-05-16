.class Lcom/att/iqi/IQIServiceBrokerExt$1;
.super Ljava/lang/Object;
.source "IQIServiceBrokerExt.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    const/4 v1, 0x0

    # invokes: Lcom/att/iqi/IQIServiceBrokerExt;->changeIqiState(Z)V
    invoke-static {v0, v1}, Lcom/att/iqi/IQIServiceBrokerExt;->access$000(Lcom/att/iqi/IQIServiceBrokerExt;Z)V

    return-void
.end method
