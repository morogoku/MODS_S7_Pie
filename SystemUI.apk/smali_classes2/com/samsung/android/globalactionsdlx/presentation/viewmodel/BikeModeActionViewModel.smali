.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;
.super Ljava/lang/Object;
.source "BikeModeActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;


# instance fields
.field private mActionInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

.field private final mAlertDialogFactory:Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;

.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private final mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

.field private final mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

.field private final mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

.field private final mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

.field private mToggleState:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;Lcom/samsung/android/globalactionsdlx/util/SystemController;Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;Lcom/samsung/android/globalactionsdlx/util/ToastController;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    iput-object p4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;

    iput-object p5, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    iput-object p6, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    iput-object p7, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iput-object p8, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    return-void
.end method

.method public static synthetic lambda$onPress$0(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;Z)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/SystemController;->toggleBikeMode(Z)V

    return-void
.end method

.method private setStateLabel()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BIKE_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mToggleState:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mActionInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v2, 0x1040393

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_2f

    :cond_1d
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mToggleState:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mActionInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v2, 0x1040392

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    :goto_2f
    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mActionInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mToggleState:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    return-object v0
.end method

.method public onPress()V
    .registers 11

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mActionInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

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

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionInteractionStrategy;->onPressBikeModeAction()Z

    move-result v3

    if-eqz v3, :cond_23

    return-void

    :cond_23
    goto :goto_10

    :cond_24
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v4, 0x10403dd

    invoke-virtual {v3, v4}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/globalactionsdlx/util/ToastController;->showToast(Ljava/lang/String;I)V

    return-void

    :cond_3e
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_EMERGENCY_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v4, 0x1040390

    invoke-virtual {v3, v4}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/globalactionsdlx/util/ToastController;->showToast(Ljava/lang/String;I)V

    return-void

    :cond_57
    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    const-string v5, "611"

    const-string v6, "6111"

    const-string v7, "Bike mode"

    const-wide/16 v8, 0x6

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->dismissDialog(Z)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BIKE_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;

    new-instance v3, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/-$$Lambda$BikeModeActionViewModel$hL3LFnxK3DknUwAbxOZhzDk2fRM;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/-$$Lambda$BikeModeActionViewModel$hL3LFnxK3DknUwAbxOZhzDk2fRM;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;Z)V

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->getBikeModeDialog(ZLjava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mActionInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->setStateLabel()V

    return-void
.end method

.method public setState(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mToggleState:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    return-void
.end method

.method public updateState()V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->setStateLabel()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->getGlobalActionsView()Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;->notifyDataSetChanged()V

    return-void
.end method
