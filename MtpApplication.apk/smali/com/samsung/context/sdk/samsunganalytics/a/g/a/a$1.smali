.class Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "DLC Sender"

    const-string v0, "DLC Client ServiceConnected"

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {p2}, Lcom/sec/spp/push/dlc/api/IDlcService$a;->a(Landroid/os/IBinder;)Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->b(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->c(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Lcom/samsung/context/sdk/samsunganalytics/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->c(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Lcom/samsung/context/sdk/samsunganalytics/a/a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "DLC Sender"

    const-string v0, "Client ServiceDisconnected"

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Z)Z

    return-void
.end method
