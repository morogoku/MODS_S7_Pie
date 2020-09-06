.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;
.super Ljava/lang/Object;
.source "RestartActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private final mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

.field private final mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

.field private final mKeyguardManagerWrapper:Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

.field private final mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

.field private final mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;Lcom/samsung/android/globalactionsdlx/util/ToastController;Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    iput-object p4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iput-object p5, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iput-object p6, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iput-object p7, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    iput-object p8, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    return-void
.end method

.method private isNeedSecureConfirm()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_RMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SIM_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_LOCK_NETWORK_AND_SECURITY:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ENCRYPTION_STATUS_ACTIVE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onPress()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionInteractionStrategy;

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionInteractionStrategy;->onPressRestartAction()Z

    move-result v3

    if-eqz v3, :cond_23

    return-void

    :cond_23
    goto :goto_10

    :cond_24
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->isActionConfirming()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v1, p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->confirmAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    return-void

    :cond_32
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v3, 0x10403dc

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/ToastController;->showToast(Ljava/lang/String;I)V

    return-void

    :cond_4c
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    const-string/jumbo v3, "restart"

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createSoftwareUpdateStrategy(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactionsdlx/presentation/strategies/SoftwareUpdateStrategy;

    invoke-interface {v4}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/SoftwareUpdateStrategy;->onUpdate()Z

    move-result v5

    if-nez v5, :cond_70

    const/4 v2, 0x0

    goto :goto_71

    :cond_70
    goto :goto_5c

    :cond_71
    :goto_71
    if-eqz v2, :cond_8e

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_77
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactionsdlx/presentation/strategies/SoftwareUpdateStrategy;

    invoke-interface {v4}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/SoftwareUpdateStrategy;->update()V

    goto :goto_77

    :cond_87
    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->dismissDialog(Z)V

    return-void

    :cond_8e
    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->isNeedSecureConfirm()Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    invoke-virtual {v4}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createSecureConfirmStrategy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/globalactionsdlx/presentation/strategies/SecureConfirmStrategy;

    invoke-interface {v5}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/SecureConfirmStrategy;->doActionBeforeSecureConfirm()V

    goto :goto_a4

    :cond_b4
    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v4, p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v4, v5}, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v4}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->hideDialogOnSecureConfirm()V

    return-void

    :cond_c7
    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->reboot()V

    return-void
.end method

.method public onPressSecureConfirm()V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->reboot()V

    return-void
.end method

.method reboot()V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    const-string v2, "REBOOT"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowManagerFunctionStrategy;

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowManagerFunctionStrategy;->onReboot()V

    goto :goto_e

    :cond_1e
    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    const-string v4, "611"

    const-string v5, "6111"

    const-string v6, "Restart"

    const-wide/16 v7, 0x2

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;->reboot(Z)V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
