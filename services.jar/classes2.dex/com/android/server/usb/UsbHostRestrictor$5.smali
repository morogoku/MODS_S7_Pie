.class Lcom/android/server/usb/UsbHostRestrictor$5;
.super Landroid/os/UEventObserver;
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

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 12

    const-string v0, "UsbHostRestrictor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB HOST UEVENT : event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ACTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVPATH"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SWITCH_NAME"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "change"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f7

    if-eqz v2, :cond_f7

    const-string v5, "/devices/virtual/host_notify"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f7

    :try_start_4a
    const-string v5, "ADD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bf

    const-string v5, "REMOVE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    goto :goto_bf

    :cond_5b
    const-string v5, "BLOCK"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "user_setup_complete"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_7f

    const-string v5, "UsbHostRestrictor"

    const-string v6, "UEventObserver SETUP WIZARD SCREEN. So skip about showing USB BLOCK Popup"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    :cond_7f
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$1200()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x7cd7fb21

    if-eq v8, v9, :cond_9d

    const v7, 0x10942699

    if-eq v8, v7, :cond_93

    goto :goto_a6

    :cond_93
    const-string v7, "ON_ALL_SIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    const/4 v7, 0x0

    goto :goto_a7

    :cond_9d
    const-string v8, "ON_HOST_MDM"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v7, v6

    :goto_a7
    packed-switch v7, :pswitch_data_fa

    const-string v5, "UsbHostRestrictor"

    goto :goto_b9

    :pswitch_ad
    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showMDMToast()V
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$1400(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_df

    :pswitch_b3
    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$1300(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_df

    :goto_b9
    const-string v6, "USB HOST is BLOCKED by UNKNOWN. Do Nothing!"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    :cond_bf
    :goto_bf
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mSupportDualRole:Z
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_c6

    return-void

    :cond_c6
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->isMPSM:Z
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$900()Z

    move-result v5

    if-eqz v5, :cond_df

    const-string v5, "ADD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    const-string v5, "SHOW"

    goto :goto_d9

    :cond_d7
    const-string v5, "CANCEL"

    :goto_d9
    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->notifyBatteryUsage(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$1000(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_de} :catch_e0

    nop

    :cond_df
    :goto_df
    goto :goto_f7

    :catch_e0
    move-exception v5

    const-string v6, "UsbHostRestrictor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse state or devPath from event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    :goto_f7
    return-void

    nop

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_ad
    .end packed-switch
.end method
