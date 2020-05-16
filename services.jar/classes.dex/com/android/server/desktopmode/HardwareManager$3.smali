.class Lcom/android/server/desktopmode/HardwareManager$3;
.super Landroid/os/UEventObserver;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->setRawDockState(I)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->access$600(Lcom/android/server/desktopmode/HardwareManager;I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const-string v1, "USBPD_IDS"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIds(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->access$700(Lcom/android/server/desktopmode/HardwareManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->updateDockStatus()Z
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$800(Lcom/android/server/desktopmode/HardwareManager;)Z
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_39

    :catch_20
    move-exception v0

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method
