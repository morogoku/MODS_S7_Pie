.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;
.super Ljava/lang/Object;
.source "SafeModeActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private final mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

.field private final mKeyguardManagerWrapper:Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

.field private final mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

.field private final mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;Lcom/samsung/android/globalactionsdlx/util/ToastController;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iput-object p4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    iput-object p5, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    iput-object p6, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iput-object p7, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    return-void
.end method

.method private isNeedSecureConfirm()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_RMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SIM_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_LOCK_NETWORK_AND_SECURITY:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

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

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onPress()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v2, 0x10403dc

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ToastController;->showToast(Ljava/lang/String;I)V

    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->isNeedSecureConfirm()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    const-string/jumbo v1, "shutdown"

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->hideDialogOnSecureConfirm()V

    return-void

    :cond_33
    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->safeMode()V

    return-void
.end method

.method public onPressSecureConfirm()V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->safeMode()V

    return-void
.end method

.method public safeMode()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    const-string v1, "612"

    const-string v2, "6121"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;->reboot(Z)V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
