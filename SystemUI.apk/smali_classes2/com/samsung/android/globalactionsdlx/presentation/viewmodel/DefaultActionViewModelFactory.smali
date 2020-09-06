.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;
.super Ljava/lang/Object;
.source "DefaultActionViewModelFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

.field private final mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

.field private final mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

.field mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;


# direct methods
.method private getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/util/UtilFactory;Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iput-object p4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    return-void
.end method


# virtual methods
.method public createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    invoke-direct {v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;-><init>()V

    move-object v12, v1

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_3d6

    goto/16 :goto_89

    :sswitch_1f
    const-string v1, "force_restart_message"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x5

    goto :goto_8a

    :sswitch_29
    const-string v1, "bug_report"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x4

    goto :goto_8a

    :sswitch_33
    const-string v1, "emergency"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x3

    goto :goto_8a

    :sswitch_3d
    const-string/jumbo v1, "restart"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x2

    goto :goto_8a

    :sswitch_48
    const-string v1, "bike_mode"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x6

    goto :goto_8a

    :sswitch_52
    const-string/jumbo v1, "power"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x0

    goto :goto_8a

    :sswitch_5d
    const-string v1, "data_mode"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x7

    goto :goto_8a

    :sswitch_67
    const-string/jumbo v1, "lock_down_mode"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/16 v1, 0x8

    goto :goto_8a

    :sswitch_73
    const-string/jumbo v1, "safe_mode"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x1

    goto :goto_8a

    :sswitch_7e
    const-string v1, "bixby_settings"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/16 v1, 0x9

    goto :goto_8a

    :cond_89
    :goto_89
    move v1, v2

    :goto_8a
    packed-switch v1, :pswitch_data_400

    const/4 v1, 0x0

    return-object v1

    :pswitch_8f
    new-instance v7, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    move-object v1, v7

    move-object v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;)V

    const-string v2, "bixby_settings"

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_settings_mtrl"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->TOP_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_dc
    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;

    iget-object v2, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-direct {v1, v2, v3, v10}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;-><init>(Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)V

    const-string/jumbo v2, "lock_down_mode"

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403ab

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_lockdown"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->CENTER_ICON_5P_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_112
    new-instance v9, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DataModeActionViewModel;

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iget-object v4, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/SystemController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactionsdlx/util/SystemController;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;

    iget-object v7, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    move-object v1, v9

    move-object v2, v10

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DataModeActionViewModel;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/util/SystemController;Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;)V

    const-string v2, "data_mode"

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403be

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_mobiledata"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->CENTER_ICON_2P_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_164
    new-instance v15, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iget-object v4, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/SystemController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/globalactionsdlx/util/SystemController;

    iget-object v7, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    move-object v1, v15

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;Lcom/samsung/android/globalactionsdlx/util/SystemController;Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;Lcom/samsung/android/globalactionsdlx/util/ToastController;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;)V

    const-string v2, "bike_mode"

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x104038f

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->CENTER_ICON_8P_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V

    iget-object v2, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_bikemode_square"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setIcon(I)V

    invoke-interface {v1, v12}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_1c1
    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SimpleTextActionViewModel;

    invoke-direct {v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SimpleTextActionViewModel;-><init>()V

    const-string v3, "force_restart_message"

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v3, 0x10403a6

    iget-object v4, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v5, "sec_global_actions_force_restart_time"

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->BOTTOM_SIMPLE_TEXT_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_1ea
    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactionsdlx/util/SystemController;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactionsdlx/util/SystemController;

    iget-object v4, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    invoke-direct {v1, v10, v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/SystemController;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;)V

    const-string v3, "bug_report"

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v3, 0x1040173

    invoke-virtual {v0, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;->getBugReportStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->BOTTOM_TEXT_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_22f
    new-instance v15, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/EmergencyActionViewModel;

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iget-object v4, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/SystemController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactionsdlx/util/SystemController;

    iget-object v6, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    move-object v1, v15

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/EmergencyActionViewModel;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/util/SystemController;Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactionsdlx/util/ToastController;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;)V

    const-string v2, "emergency"

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403bf

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_emergencymode"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->CENTER_ICON_4P_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_28c
    new-instance v15, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iget-object v4, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    iget-object v6, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    move-object v1, v15

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/RestartActionViewModel;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;Lcom/samsung/android/globalactionsdlx/util/ToastController;Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;)V

    const-string/jumbo v2, "restart"

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403b3

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    if-eqz v13, :cond_2db

    const v2, 0x104039e

    goto :goto_2de

    :cond_2db
    const v2, 0x104039d

    :goto_2de
    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setDescription(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v4, "tw_ic_do_restart"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v3, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->CENTER_ICON_3P_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_2fa
    new-instance v9, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    iget-object v4, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v8, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    move-object v1, v9

    move-object v2, v10

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SafeModeActionViewModel;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;Lcom/samsung/android/globalactionsdlx/util/ToastController;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;)V

    const-string/jumbo v2, "safe_mode"

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403b4

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    if-eqz v13, :cond_347

    const v2, 0x10403a0

    goto :goto_34a

    :cond_347
    const v2, 0x104039f

    :goto_34a
    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setDescription(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v4, "tw_ic_do_safemode"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v3, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->CENTER_ICON_1P_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_366
    new-instance v15, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iget-object v4, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    iget-object v6, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    move-object v1, v15

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/PowerActionViewModel;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;Lcom/samsung/android/globalactionsdlx/util/ToastController;Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;)V

    const-string/jumbo v2, "power"

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403ad

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    if-eqz v13, :cond_3b5

    const v2, 0x104039c

    goto :goto_3b8

    :cond_3b5
    const v2, 0x104039b

    :goto_3b8
    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setDescription(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v4, "tw_ic_do_poweroff"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v3, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->CENTER_ICON_1P_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V

    return-object v1

    nop

    nop

    :sswitch_data_3d6
    .sparse-switch
        -0x48eacea6 -> :sswitch_7e
        -0x436d1ceb -> :sswitch_73
        -0x218e16f4 -> :sswitch_67
        -0x15abc2e8 -> :sswitch_5d
        0x65e8905 -> :sswitch_52
        0x2b901341 -> :sswitch_48
        0x416a9e0f -> :sswitch_3d
        0x6118c591 -> :sswitch_33
        0x7cb9695f -> :sswitch_29
        0x7ff77083 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_400
    .packed-switch 0x0
        :pswitch_366
        :pswitch_2fa
        :pswitch_28c
        :pswitch_22f
        :pswitch_1ea
        :pswitch_1c1
        :pswitch_164
        :pswitch_112
        :pswitch_dc
        :pswitch_8f
    .end packed-switch
.end method

.method public getResString(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResString(II)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v2, Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setFeatureFactory(Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    return-void
.end method
