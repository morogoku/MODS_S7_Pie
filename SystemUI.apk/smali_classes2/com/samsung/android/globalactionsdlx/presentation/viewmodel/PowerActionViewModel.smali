.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;
.super Ljava/lang/Object;
.source "PowerActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private final mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

.field private final mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

.field mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

.field private final mKeyguardManagerWrapper:Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

.field private final mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

.field private final mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;Lcom/samsung/android/globalactionsdlx/util/ToastController;Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    iput-object p4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    iput-object p5, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iput-object p6, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iput-object p7, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    iput-object p8, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    return-void
.end method

.method private isNeedSecureConfirm()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_RMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SIM_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_LOCK_NETWORK_AND_SECURITY:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method private shutdown()V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    const-string v2, "SHUTDOWN"

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

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowManagerFunctionStrategy;->onShutdown()V

    goto :goto_e

    :cond_1e
    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    const-string v4, "611"

    const-string v5, "6111"

    const-string v6, "Power off"

    const-wide/16 v7, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;->shutdown()V

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onLongPress()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

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

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionInteractionStrategy;->onLongPressPowerAction()Z

    move-result v3

    if-eqz v3, :cond_23

    return-void

    :cond_23
    goto :goto_10

    :cond_24
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ALLOWED_SAFE_BOOT:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewIndex()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v2, v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->confirmSafeMode(I)V

    :cond_3b
    return-void
.end method

.method public onPress()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

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

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionInteractionStrategy;->onPressPowerAction()Z

    move-result v3

    if-eqz v3, :cond_23

    return-void

    :cond_23
    goto :goto_10

    :cond_24
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->isActionConfirming()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v1, p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->confirmAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    return-void

    :cond_32
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v3, 0x10403da

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/ToastController;->showToast(Ljava/lang/String;I)V

    return-void

    :cond_4c
    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->isNeedSecureConfirm()Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    invoke-virtual {v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createSecureConfirmStrategy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactionsdlx/presentation/strategies/SecureConfirmStrategy;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/SecureConfirmStrategy;->doActionBeforeSecureConfirm()V

    goto :goto_62

    :cond_72
    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v2, p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    const-string/jumbo v3, "shutdown"

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->hideDialogOnSecureConfirm()V

    return-void

    :cond_85
    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->shutdown()V

    return-void
.end method

.method public onPressSecureConfirm()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->shutdown()V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
