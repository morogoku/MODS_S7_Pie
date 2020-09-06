.class public Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;
.super Ljava/lang/Object;
.source "BixbyOnPowerKeyStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionsCreationStrategy;
.implements Lcom/samsung/android/globalactionsdlx/presentation/strategies/InitializationStrategy;


# instance fields
.field private final SET_BIXBY_DIALOG:I

.field private final mBixbyHandler:Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;

.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private final mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

.field private final mSettingsWrapper:Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

.field private final mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->SET_BIXBY_DIALOG:I

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    iput-object p3, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iput-object p4, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mBixbyHandler:Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;

    iput-object p5, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mSettingsWrapper:Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    iput-object p6, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public onCreateActions(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_EMERGENCY_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_BIXBY_PACKAGE_ENABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "bixby_settings"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    :cond_0
    return-void
.end method

.method public onInitialize(Z)V
    .locals 7

    sget-boolean v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->GLOBALACTION_FORCE_SHOW:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v2, "GlobalAtionsBixbyOnPowerKeyStrategy"

    const-string v3, "Force a GlobalAction to show"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->GLOBALACTION_FORCE_SHOW:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_EMERGENCY_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_BIXBY_PACKAGE_ENABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mSettingsWrapper:Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->getCurrentBixbySettings()I

    move-result v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v3, "GlobalAtionsBixbyOnPowerKeyStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wake bixby with power key option state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mBixbyHandler:Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;

    invoke-virtual {v2}, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->startBixbyVoiceService()V

    iget-object v2, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->setDisabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v4, "GlobalAtionsBixbyOnPowerKeyStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onInitialize() : unexpected exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    sput-boolean v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->GLOBALACTION_FORCE_SHOW:Z

    return-void
.end method
