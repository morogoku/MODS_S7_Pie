.class Lcom/android/server/TimaService$1;
.super Landroid/content/BroadcastReceiver;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver - action:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isKapSupported()Z
    invoke-static {v1}, Lcom/android/server/TimaService;->access$200(Lcom/android/server/TimaService;)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isZeroModel()Z
    invoke-static {v3}, Lcom/android/server/TimaService;->access$300(Lcom/android/server/TimaService;)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->notifyKapEnabled()V
    invoke-static {v3}, Lcom/android/server/TimaService;->access$400(Lcom/android/server/TimaService;)V

    :cond_3b
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.samsung.klmsagent"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "KAP_LICENSE_STATUS_REQUEST"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_60
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    const-string v1, "TimaService"

    const-string/jumbo v2, "received ACTION_BOOT_COMPLETED, start new thread"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/TimaService$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/TimaService$1$1;-><init>(Lcom/android/server/TimaService$1;)V

    invoke-virtual {v1}, Lcom/android/server/TimaService$1$1;->start()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    :cond_78
    goto :goto_7d

    :catch_79
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7d
    return-void
.end method
