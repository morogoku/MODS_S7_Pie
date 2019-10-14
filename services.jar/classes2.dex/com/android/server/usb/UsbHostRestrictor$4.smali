.class Lcom/android/server/usb/UsbHostRestrictor$4;
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

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "mUPSMReceiver onReceive"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_32

    const-string v2, "UsbHostRestrictor"

    const-string v3, "MPSM is ON"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    # setter for: Lcom/android/server/usb/UsbHostRestrictor;->isMPSM:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$902(Z)Z

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v3, "MPSM_ENABLED"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->notifyBatteryUsage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$1000(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto :goto_5d

    :cond_32
    const/4 v3, 0x5

    if-ne v1, v3, :cond_47

    const-string v3, "UsbHostRestrictor"

    const-string v4, "MPSM is OFF"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/server/usb/UsbHostRestrictor;->isMPSM:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$902(Z)Z

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v3, "MPSM_DISABLED"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->notifyBatteryUsage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$1000(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto :goto_5d

    :cond_47
    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPSM state is unknown. reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    return-void
.end method
