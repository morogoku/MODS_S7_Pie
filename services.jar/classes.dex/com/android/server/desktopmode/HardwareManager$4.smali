.class Lcom/android/server/desktopmode/HardwareManager$4;
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

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 10

    const-string v0, "ACTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVTYPE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PRODUCT"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4b4/f645"

    const-string v4, "04b4:f645"

    const-string v5, "4b4/f645"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_4b

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onUEvent(device) :: action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", devType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", product = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    const-string v5, "add"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Attached US bootmode for dex pad"

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/16 v6, 0x72

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->setRawDockState(I)V
    invoke-static {v5, v6}, Lcom/android/server/desktopmode/HardwareManager;->access$600(Lcom/android/server/desktopmode/HardwareManager;I)V

    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const-string v6, "04b4:f645"

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIds(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/desktopmode/HardwareManager;->access$700(Lcom/android/server/desktopmode/HardwareManager;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->updateDockStatus()Z
    invoke-static {v5}, Lcom/android/server/desktopmode/HardwareManager;->access$800(Lcom/android/server/desktopmode/HardwareManager;)Z

    goto :goto_94

    :cond_70
    const-string/jumbo v5, "remove"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Detached US bootmode for dex pad"

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->setRawDockState(I)V
    invoke-static {v5, v6}, Lcom/android/server/desktopmode/HardwareManager;->access$600(Lcom/android/server/desktopmode/HardwareManager;I)V

    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const-string v6, "04b4:f645"

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIds(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/desktopmode/HardwareManager;->access$700(Lcom/android/server/desktopmode/HardwareManager;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->updateDockStatus()Z
    invoke-static {v5}, Lcom/android/server/desktopmode/HardwareManager;->access$800(Lcom/android/server/desktopmode/HardwareManager;)Z

    :cond_94
    :goto_94
    return-void
.end method
