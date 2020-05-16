.class Lcom/samsung/android/MtpApplication/MtpApplication$3;
.super Landroid/content/BroadcastReceiver;
.source "MtpApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/MtpApplication/MtpApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/MtpApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/MtpApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTPAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In MTPAPP onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "plugged"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battPlugged Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string v2, "MTPRx"

    const-string v3, "Plug Type is coming zeor so finishing service: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    invoke-virtual {v2}, Lcom/samsung/android/MtpApplication/MtpApplication;->finish()V

    :cond_0
    goto/16 :goto_0

    :cond_1
    const-string v1, "com.samsung.android.END_MTP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const-string v1, "MTP"

    const-string v3, "END key pressed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v3, "mtp_usb_connection_status"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v3, "media_player_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v3, "mtp_usb_conditions_met"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v3, "mtp_running_status"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "com.samsung.android.END_MTP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v2, "end_key_press"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "MTPAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Key pressed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.MTP_FILE_SCAN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "MTPAPP"

    const-string v2, "Sending Broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_4
    :goto_0
    return-void
.end method
