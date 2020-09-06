.class Lcom/android/server/desktopmode/DockManager$3;
.super Ljava/lang/Object;
.source "DockManager.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DockManager;->createDockControlLib(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DockManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChargingModeUpdated(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$800(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$800(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onConnectedPowerChargerInfoUpdated(III)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$800(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$800(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onDSVersionUpdated(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$800(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    const/16 v1, 0xe7

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$800(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$800(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    const/16 v1, 0xdd

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$800(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
