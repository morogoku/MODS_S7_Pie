.class Lcom/android/server/knox/ddar/proxy/DualDARComnService$3;
.super Landroid/content/BroadcastReceiver;
.source "DualDARComnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/proxy/DualDARComnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_2b

    :cond_1d
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_2b
    :goto_2b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    # invokes: Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectAgentsByPkgName(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->access$100(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Ljava/lang/String;)V

    :cond_3a
    nop

    :cond_3b
    :goto_3b
    return-void
.end method
