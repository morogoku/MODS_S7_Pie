.class final Lcom/android/server/desktopmode/DesktopModeService$LocalService;
.super Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$LocalService;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public commandDesktopModeService(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->commandDesktopModeService(II)Z

    move-result v0

    return v0
.end method

.method public getCurrentUiMode()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUiMode()I
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$5800(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    return v0
.end method

.method public getDesktopModeKillPolicy()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    return-object v0
.end method

.method public getDexHDMIAutoEnterState()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$1100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "knox_hdmi_auto_enter_state"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method public getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public getTouchpadSupportedFeatures()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->getTouchpadSupportedFeatures()I
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$6200(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    return v0
.end method

.method public isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$6000(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeAvailableEx(ZZ)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->access$5200(Lcom/android/server/desktopmode/DesktopModeService;ZZ)Z

    move-result v0

    return v0
.end method

.method public isDesktopModeEnablingOrEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled()Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$5100(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    return v0
.end method

.method public isDesktopModeEnablingOrEnabled(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(I)Z
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$5300(Lcom/android/server/desktopmode/DesktopModeService;I)Z

    move-result v0

    return v0
.end method

.method public isDesktopModeForPreparing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing()Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$4700(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    return v0
.end method

.method public isDesktopModeForPreparing(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(I)Z
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$4800(Lcom/android/server/desktopmode/DesktopModeService;I)Z

    move-result v0

    return v0
.end method

.method public isDesktopModeLoadingScreenShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeLoadingScreenShowing()Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$4900(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    return v0
.end method

.method public isDesktopModeLoadingScreenShowing(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeLoadingScreenShowing(I)Z
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$5000(Lcom/android/server/desktopmode/DesktopModeService;I)Z

    move-result v0

    return v0
.end method

.method public isExternalDisplayConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnected()Z

    move-result v0

    return v0
.end method

.method public isForcedInternalScreenModeEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isForcedInternalScreenModeEnabled()Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$5400(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    return v0
.end method

.method public isLockTaskModeEnabledAndSecured()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isLockTaskModeEnabledAndSecured()Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$5900(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    return v0
.end method

.method public isModeChangePending()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending()Z
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$5500(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    return v0
.end method

.method public isModeChangePending(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending(I)Z
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$5600(Lcom/android/server/desktopmode/DesktopModeService;I)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    return-void
.end method

.method public onDesktopDisplayConfigured(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->onDesktopDisplayConfigured(Z)V
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$5700(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void
.end method

.method public scheduleUpdateDesktopMode(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public setDexHDMIAutoEnterState(I)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$1100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_9e

    goto/16 :goto_99

    :pswitch_10
    :try_start_10
    const-string/jumbo v1, "hdmi_initial_connection_dialog_shown"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    const-string/jumbo v1, "hdmi_auto_enter"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    const-string/jumbo v1, "hdmi_auto_enter_backup"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    const-string/jumbo v1, "knox_hdmi_auto_enter_state"

    invoke-static {v0, v1, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_99

    :pswitch_29
    const-string/jumbo v2, "hdmi_auto_enter_backup"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    goto :goto_99

    :cond_33
    const-string/jumbo v2, "hdmi_auto_enter"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_46

    const-string/jumbo v2, "hdmi_auto_enter_backup"

    const-string/jumbo v3, "false"

    invoke-static {v0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_46
    const-string/jumbo v2, "hdmi_auto_enter_backup"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    const-string/jumbo v2, "hdmi_auto_enter"

    const-string/jumbo v3, "true"

    invoke-static {v0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "knox_hdmi_auto_enter_state"

    invoke-static {v0, v2, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_99

    :pswitch_5c
    const-string/jumbo v2, "hdmi_auto_enter_backup"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_71

    const-string/jumbo v2, "hdmi_auto_enter"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "hdmi_auto_enter_backup"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :cond_71
    const-string/jumbo v2, "knox_hdmi_auto_enter_state"

    invoke-static {v0, v2, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    :try_end_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_77} :catch_78

    goto :goto_99

    :catch_78
    move-exception v1

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDexHDMIAutoEnterState(), Failed to setting(value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :goto_99
    nop

    const/4 v1, 0x0

    return v1

    nop

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_29
        :pswitch_10
    .end packed-switch
.end method

.method public startHome()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->startHome()V
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$6100(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method
