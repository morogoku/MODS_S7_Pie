.class Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonePreconditionChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method

.method private isHdmiSettingReady(Lcom/android/server/desktopmode/State;Z)Z
    .registers 7

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDexStationWhileCoverAttached(Lcom/android/server/desktopmode/State;)Z
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3600(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3400(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    if-eqz v0, :cond_39

    if-eqz p2, :cond_16

    const/4 v2, -0x1

    if-ne v0, v2, :cond_16

    goto :goto_39

    :cond_16
    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHdmiSettingReady(isModeChangeProcess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), hdmiSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_39
    :goto_39
    return v1
.end method


# virtual methods
.method public cancelOngoingNotification()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v1, 0xc9

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->removeNotification(I)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V

    return-void
.end method

.method public isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$2900(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_77

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isWiredChargingOrForced(Lcom/android/server/desktopmode/State;)Z
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3000(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isHdmiSettingReady(Lcom/android/server/desktopmode/State;Z)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3100(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/BlockerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/BlockerManager;->getBlocker(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    move-result-object v0

    if-nez v0, :cond_28

    const/4 v1, 0x1

    return v1

    :cond_28
    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAllowed(showToast="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), blocked by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_77

    :try_start_4b
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->onBlocked()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->saveState(Lcom/android/server/desktopmode/State;Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_5d} :catch_5e

    goto :goto_77

    :catch_5e
    move-exception v1

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get blocking message from blocker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_77
    :goto_77
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3200(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_13
    if-eqz p2, :cond_1b

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3300(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_1b
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v1, 0x1

    nop

    :cond_23
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_50

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDesktopModeAvailable(checkExternalDisplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", checkDesktopDock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return v1
.end method

.method public updateDesktopMode(Lcom/android/server/desktopmode/State;Z)Z
    .registers 9

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_29

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDesktopMode(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isModeChangeLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$2900(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b4

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_b4

    :cond_3a
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->updateOngoingNotification()V

    const/16 v2, 0x66

    const/4 v3, 0x1

    if-eqz p2, :cond_8b

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v5

    if-nez v5, :cond_55

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v2

    if-eqz v2, :cond_b3

    :cond_55
    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3200(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_b3

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3300(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I
    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3400(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;
    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto :goto_8a

    :cond_79
    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDexStationWhileCoverAttached(Lcom/android/server/desktopmode/State;)Z
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3600(Lcom/android/server/desktopmode/State;)Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_8a

    :cond_85
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V
    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$2300(Lcom/android/server/desktopmode/DesktopModeService;)V

    :goto_8a
    return v3

    :cond_8b
    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3200(Lcom/android/server/desktopmode/State;)Z

    move-result v4

    if-eqz v4, :cond_9d

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3300(Lcom/android/server/desktopmode/State;)Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v4

    if-nez v4, :cond_b3

    :cond_9d
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V
    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->access$3700(Lcom/android/server/desktopmode/DesktopModeService;)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;
    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    return v3

    :cond_b3
    return v1

    :cond_b4
    :goto_b4
    return v1
.end method

.method public declared-synchronized updateOngoingNotification()V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I
    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3400(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_36

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOngoingNotification(), state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", hdmiSetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3200(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    const/16 v3, 0xc9

    if-eqz v2, :cond_4a

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3300(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_4a

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isWiredChargingOrForced(Lcom/android/server/desktopmode/State;)Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3000(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-nez v2, :cond_50

    :cond_4a
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingUsing(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_d9

    :cond_50
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v5}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v2

    const/4 v6, -0x1

    if-nez v2, :cond_65

    if-eq v1, v6, :cond_d9

    :cond_65
    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDexStationWhileCoverAttached(Lcom/android/server/desktopmode/State;)Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3600(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_6d

    goto/16 :goto_d9

    :cond_6d
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v7, 0x3

    const/16 v8, 0xcd

    if-eq v2, v7, :cond_b6

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_82

    goto :goto_b6

    :cond_82
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v5}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v2

    if-eqz v2, :cond_96

    if-ne v1, v6, :cond_96

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v3, 0xc8

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_d7

    :cond_96
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingUsing(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V
    invoke-static {v2, v8}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_d7

    :cond_a2
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_b0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v3, 0xce

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_d7

    :cond_b0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_d7

    :cond_b6
    :goto_b6
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingUsing(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_c2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V
    invoke-static {v2, v8}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_d7

    :cond_c2
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_d0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v3, 0xcf

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_d7

    :cond_d0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v3, 0xca

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V
    :try_end_d7
    .catchall {:try_start_1 .. :try_end_d7} :catchall_e0

    :goto_d7
    monitor-exit p0

    return-void

    :cond_d9
    :goto_d9
    :try_start_d9
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->removeNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V
    :try_end_de
    .catchall {:try_start_d9 .. :try_end_de} :catchall_e0

    monitor-exit p0

    return-void

    :catchall_e0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
