.class Lcom/android/server/knox/ddar/proxy/DualDARComnService$1;
.super Landroid/os/Handler;
.source "DualDARComnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/knox/ddar/proxy/DualDARComnService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_f

    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-virtual {v1, v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->handleAgentDied(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V

    :goto_f
    return-void
.end method
