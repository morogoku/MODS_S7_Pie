.class Lcom/android/server/enterprise/firewall/Firewall$1;
.super Landroid/content/BroadcastReceiver;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "noConnectivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # invokes: Lcom/android/server/enterprise/firewall/Firewall;->initializeIpTables()V
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->access$100(Lcom/android/server/enterprise/firewall/Firewall;)V

    :cond_37
    return-void
.end method
