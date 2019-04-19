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
    .registers 11

    const-string v0, "UsbHostRestrictor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB HOST UEVENT: "

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

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$1100(Lcom/android/server/usb/UsbHostRestrictor;)V

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->turnOnLcd()V
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$1200(Lcom/android/server/usb/UsbHostRestrictor;)V

    const-string v5, "change"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    if-eqz v2, :cond_e5

    const-string v5, "/devices/virtual/host_notify"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e5

    :try_start_54
    const-string v5, "BLOCK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cd

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

    if-eq v5, v7, :cond_78

    const-string v5, "UsbHostRestrictor"

    const-string v6, "UEventObserver SETUP WIZARD SCREEN. So skip about showing USB BLOCK Popup"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    :cond_78
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$1300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ON_ALL_SIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$1400(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_cc

    :cond_8a
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$1300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ON_HOST_UPSM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showToast()V
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$1500(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_cc

    :cond_9c
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$1300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ON_ALL_BOTH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$1400(Lcom/android/server/usb/UsbHostRestrictor;)V

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showToast()V
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$1500(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_cc

    :cond_b3
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$1300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ON_HOST_MDM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showMDMToast()V
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$1600(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_cc

    :cond_c5
    const-string v5, "UsbHostRestrictor"

    const-string v6, "USB HOST is BLOCKED by UNKNOWN. Do Nothing!!"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_cc} :catch_ce

    :goto_cc
    return-void

    :cond_cd
    goto :goto_e5

    :catch_ce
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

    :cond_e5
    :goto_e5
    return-void
.end method
