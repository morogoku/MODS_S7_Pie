.class public Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;
.super Ljava/lang/Object;
.source "GlobalActionsFeatureFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;


# instance fields
.field mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field mContext:Landroid/content/Context;

.field mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

.field mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method

.method private loggingStrategy(Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    const-string v0, ""

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "GlobalActionsFeatureFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DEMO_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "emergency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/globalactions/features/DemoModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/features/DemoModeStrategy;-><init>(Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_DEVICE_MANAGER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "data_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxMDMStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/features/KnoxMDMStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x65e8905

    if-eq v2, v3, :cond_6

    const v3, 0x2b901341

    if-eq v2, v3, :cond_5

    const v3, 0x416a9e0f

    if-eq v2, v3, :cond_4

    const v3, 0x6118c591

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "emergency"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "bike_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x3

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    :cond_7
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v1, Lcom/samsung/android/globalactions/features/SktStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/globalactions/features/SktStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_1
    const-string v1, "ActionInteractionStrategy"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createActionsCreationStrategies(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SUPPORT_BIXBY_POWER_KEY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/BixbyHandler;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/samsung/android/globalactions/util/BixbyHandler;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/BixbyHandler;Lcom/samsung/android/globalactions/util/SettingsWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v2, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "BIKE_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/globalactions/features/BikeModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/features/BikeModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DATA_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/globalactions/features/DataModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/features/DataModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "LOCK_DOWN_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "GRACE_BOTTOM_ICON"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/systemui/globalactions/features/GraceBottomIconStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/features/GraceBottomIconStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FORCE_RESTART_MESSAGE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/samsung/android/globalactions/features/ForceRestartMessageStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/features/ForceRestartMessageStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FINGERPRINT_IN_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;-><init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v1, "ActionsCreationStrategy"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "emergency"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SAFETY_CARE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DESKTOP_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v2, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/CoverUtil;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/CoverUtil;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v1, "bug_report"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/CoverUtil;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/CoverUtil;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    const-string v1, "DefaultActionsCreationStrategy"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createDisposingStrategies(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DESKTOP_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/CoverUtil;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/CoverUtil;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FINGERPRINT_IN_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;-><init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "DisposingStrategy"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createInitializationStrategies(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SUPPORT_BIXBY_POWER_KEY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/BixbyHandler;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/samsung/android/globalactions/util/BixbyHandler;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/BixbyOnPowerKeyStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/BixbyHandler;Lcom/samsung/android/globalactions/util/SettingsWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DESKTOP_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v2, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SAFETY_CARE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_CONTAINER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/CoverUtil;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/CoverUtil;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "InitializationStrategy"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createOnKeyListenerStrategy(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v2, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "OnKeyListenerStrategy"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createSecureConfirmStrategy(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x436d1ceb

    if-eq v1, v2, :cond_3

    const v2, 0x65e8905

    if-eq v1, v2, :cond_2

    const v2, 0x416a9e0f

    if-eq v1, v2, :cond_1

    const v2, 0x6118c591

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "emergency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "restart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "safe_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FINGERPRINT_IN_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;-><init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createSoftwareUpdateStrategy(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/SoftwareUpdateStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "restart"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SystemController;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public createWindowDecorationStrategies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SF_EFFECT"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/globalactions/features/SepEffectStrategy;

    invoke-direct {v1}, Lcom/samsung/android/globalactions/features/SepEffectStrategy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "NAV_BAR"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "WindowDecorationStrategy"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/CoverUtil;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/CoverUtil;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "WindowManagerFunctionStrategy"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
