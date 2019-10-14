.class Lcom/android/server/usb/UsbHostRestrictor$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbHostRestrictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostRestrictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "UsbHostRestrictor"

    const-string v1, "Subscription Receiver onReceive"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    if-lez v1, :cond_7a

    const/4 v2, 0x0

    # setter for: Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$702(Z)Z

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const-string v3, "UsbHostRestrictor"

    const-string v4, "Subscription Receiver USB is already UNBLOCKED"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_4b
    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    const-string v3, "ON_HOST_MDM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    :cond_5b
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    goto :goto_79

    :cond_6a
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string v3, "UsbHostRestrictor"

    const-string v4, "Subscription Receiver Cannot write for USB DISABLE"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    :goto_79
    goto :goto_81

    :cond_7a
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Subscription Receiver SIM is not recognized properly. Needs to check the SIM CARD"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    :goto_81
    return-void
.end method
