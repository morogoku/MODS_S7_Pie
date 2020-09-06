.class Lcom/android/server/desktopmode/DockManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DockManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V
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

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$700(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_1e
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_3b

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive(), action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    # invokes: Lcom/android/server/desktopmode/DockManager;->isDexPadConnected(Lcom/android/server/desktopmode/State;)Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$300(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$400(Lcom/android/server/desktopmode/DockManager;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$500(Lcom/android/server/desktopmode/DockManager;)V

    :cond_4b
    return-void
.end method
