.class Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;
.super Landroid/content/BroadcastReceiver;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/HardwareManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    return-void
.end method

.method private updateOverheatedStatus(Lcom/android/server/desktopmode/State;Landroid/content/Intent;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "temperature"

    const/16 v1, -0x3e7

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1ae

    if-lt v0, v1, :cond_3e

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isOverheated()Z

    move-result v1

    if-nez v1, :cond_3e

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_33

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOverheatedStatus(), temperature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->setOverheated(Z)V

    goto :goto_6f

    :cond_3e
    const/16 v1, 0x19a

    if-gt v0, v1, :cond_6f

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isOverheated()Z

    move-result v1

    if-eqz v1, :cond_6f

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_65

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOverheatedStatus(), temperature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->setOverheated(Z)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private updateWiredChargingStatus(Lcom/android/server/desktopmode/State;Landroid/content/Intent;)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    const/4 v3, 0x2

    if-ne v0, v3, :cond_13

    goto :goto_15

    :cond_13
    move v2, v1

    nop

    :cond_15
    :goto_15
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWiredCharging()Z

    move-result v3

    if-eq v3, v2, :cond_41

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_38

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isWiredCharging="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v3}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/desktopmode/IStateManager;->setWiredCharging(Z)V

    :cond_41
    if-eqz v2, :cond_76

    const-string/jumbo v3, "hv_charger"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWiredFastCharging()Z

    move-result v3

    if-eq v3, v1, :cond_76

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_6d

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isWiredFastCharging="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v3}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/desktopmode/IStateManager;->setWiredFastCharging(Z)V

    :cond_76
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->updateOverheatedStatus(Lcom/android/server/desktopmode/State;Landroid/content/Intent;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->updateWiredChargingStatus(Lcom/android/server/desktopmode/State;Landroid/content/Intent;)V

    return-void
.end method

.method register()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$1700(Lcom/android/server/desktopmode/HardwareManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->updateWiredChargingStatus(Lcom/android/server/desktopmode/State;Landroid/content/Intent;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->updateOverheatedStatus(Lcom/android/server/desktopmode/State;Landroid/content/Intent;)V

    return-void
.end method

.method unregister()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$1700(Lcom/android/server/desktopmode/HardwareManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->setWiredCharging(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->setWiredFastCharging(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->setOverheated(Z)V

    return-void
.end method
