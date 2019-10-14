.class Lcom/samsung/android/MtpApplication/MtpService$4;
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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In MTPAPP onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside ACTION_USER_PRESENT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mtp_drive_display"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "MtpService"

    const-string v2, "unregistering mtpUserPresentReceiver in if case action_user_present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpService;->access$400(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MtpService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z

    goto :goto_2

    :cond_1
    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/MtpApplication/MtpService;->access$002(Lcom/samsung/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpService;->access$000(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpService;->access$000(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const-string v1, "MtpService"

    const-string v4, "MTP is already running. Setting the status to unlock"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mtp_drive_display"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "dev.kies.drivedisplay"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MtpService"

    const-string v2, "unregistering mtpUserPresentReceiver in else case action_user_present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->startDBupdate()V

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpService;->access$400(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "MtpService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z

    :cond_2
    :goto_2
    return-void
.end method
