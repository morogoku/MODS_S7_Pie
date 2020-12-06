.class Lcom/samsung/android/MtpApplication/MtpService$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/MtpApplication/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/MtpService;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/MtpService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpService$1;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In MTPAPP onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xcd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "mtp_running_status"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_2

    const-string v1, "MtpService"

    const-string v3, "In MTPAPP inside disable drive in mtp disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->disableDrive(Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService$1;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v1, p1}, Lcom/samsung/android/MtpApplication/MtpService;->access$300(Lcom/samsung/android/MtpApplication/MtpService;Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "mtp_running_status"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService$1;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpService;->access$100(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_1

    const-string v2, "MtpService"

    const-string v3, " dpm is null. So return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->semGetAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "MtpService"

    const-string v4, "In MTPAPP inside disable drive in policy state changed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->disableDrive(Landroid/content/Context;)Z

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpService$1;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v3, p1}, Lcom/samsung/android/MtpApplication/MtpService;->access$300(Lcom/samsung/android/MtpApplication/MtpService;Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iput v2, v3, Landroid/os/Message;->what:I

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method
