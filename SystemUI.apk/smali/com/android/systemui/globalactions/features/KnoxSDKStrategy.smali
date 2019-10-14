.class public Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;
.super Ljava/lang/Object;
.source "KnoxSDKStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;


# instance fields
.field mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field mKnoxCustomManagerWrapper:Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

.field mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

.field mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p4, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iput-object p3, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mKnoxCustomManagerWrapper:Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iput-object p5, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public isIncludeItem(II)Z
    .locals 1

    or-int v0, p1, p2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateActions(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->setProKioskOptionShown(Z)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->setOverrideDefaultActions(Z)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getPowerDialogItems()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->isIncludeItem(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v2, "power"

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getPowerDialogItems()I

    move-result v1

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->isIncludeItem(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v2, "restart"

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getPowerDialogItems()I

    move-result v1

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->isIncludeItem(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v2, "emergency"

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getPowerDialogItems()I

    move-result v1

    const/16 v2, 0x100

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->isIncludeItem(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v2, "bug_report"

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_TEXT_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getPowerDialogOptionMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->setProKioskOptionShown(Z)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "pro_kiosk"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    goto :goto_0

    :cond_4
    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->setOverrideDefaultActions(Z)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "knox_custom"

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->clearActions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mKnoxCustomManagerWrapper:Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/util/PowerItemWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v4, "knox_custom"

    invoke-interface {v3, p1, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setIcon(Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setText(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->getIntentAction()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setIntentAction(I)V

    invoke-interface {p1, v3}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public onCreateEmergencyAction()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInitialize(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "KnoxSDKStrategy"

    const-string v2, "Presenter has been locked by Knox SDK."

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->setDisabled()V

    :cond_0
    return-void
.end method

.method public onKeyListenerAction(II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->isActionConfirming()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getPowerDialogOptionMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    const/16 v0, 0x18

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getProKioskOptionShown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->setProKioskOptionShown(Z)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    iget-object v2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    const-string/jumbo v4, "pro_kiosk"

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->getGlobalActionsView()Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->updateViewList()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->getGlobalActionsView()Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->forceRequestLayout()V

    return v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v1
.end method
