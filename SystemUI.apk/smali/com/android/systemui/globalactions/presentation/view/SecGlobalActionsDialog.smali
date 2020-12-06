.class public Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;
.super Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;
.source "SecGlobalActionsDialog.java"


# static fields
.field public static GLOBALACTION_FORCE_SHOW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SystemUIResourceFactory;

    invoke-direct {v0}, Lcom/android/systemui/globalactions/presentation/view/SystemUIResourceFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    const v0, 0x7f13027c

    iput v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mDialogStyle:I

    invoke-direct {p0, p2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->initDependencies(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    return-void
.end method

.method public static globalactionForceShow()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->GLOBALACTION_FORCE_SHOW:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/KeyInjector;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/util/KeyInjector;->injectLongPressPowerKey()V

    return-void
.end method

.method private initDependencies(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v0, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;

    invoke-direct {v0, v12}, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;-><init>(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    move-object v13, v0

    new-instance v0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    iget-object v1, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;)V

    move-object v14, v0

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;

    iget-object v1, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v12, v14}, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Lcom/samsung/android/globalactions/util/UtilFactory;)V

    move-object v15, v0

    const-class v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object v0, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v0, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "[SystemUI]"

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->setPackageTag(Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object v0, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;

    iget-object v1, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v14, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    const-class v3, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-interface {v14, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    iget-object v4, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    new-instance v1, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;

    new-instance v2, Lcom/samsung/android/globalactions/util/SystemConditionChecker;

    iget-object v3, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v2, v14, v0, v3}, Lcom/samsung/android/globalactions/util/SystemConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    iget-object v3, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, v15, v2, v3}, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    new-instance v2, Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalyticsImpl;

    invoke-direct {v2}, Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalyticsImpl;-><init>()V

    move-object v10, v2

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_ENG_BUILD:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    iget-object v3, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v4, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v2, v3, v1, v4}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    move-object v1, v2

    new-instance v2, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    iget-object v3, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v4, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v2, v3, v0, v4}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    move-object v0, v2

    :cond_0
    move-object/from16 v16, v0

    move-object v9, v1

    new-instance v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iget-object v1, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    invoke-direct {v0, v14, v1, v9, v10}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V

    move-object v8, v0

    new-instance v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;

    iget-object v5, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    move-object v2, v0

    move-object v3, v8

    move-object v4, v15

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V

    move-object v7, v0

    new-instance v17, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;

    iget-object v1, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v6, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object/from16 v0, v17

    move-object v2, v11

    move-object v3, v15

    move-object v4, v7

    move-object/from16 v5, v16

    move-object/from16 v18, v6

    move-object v6, v9

    move-object v12, v7

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    move-object/from16 v7, v17

    invoke-virtual {v8, v7}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V

    invoke-virtual {v12, v7}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V

    new-instance v6, Lcom/samsung/android/globalactions/presentation/SecGlobalActionsPresenter;

    const-class v0, Lcom/samsung/android/globalactions/util/BroadcastManager;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/globalactions/util/BroadcastManager;

    const-class v0, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v4, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-class v0, Lcom/samsung/android/globalactions/util/ThemeChecker;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/samsung/android/globalactions/util/ThemeChecker;

    const-class v0, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    move-object v0, v6

    move-object v1, v11

    move-object v2, v7

    move-object v3, v12

    move-object/from16 v20, v4

    move-object v4, v13

    move-object/from16 v21, v12

    move-object v12, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object v7, v9

    move-object/from16 v22, v8

    move-object/from16 v8, v20

    move-object/from16 v23, v13

    move-object v13, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v19

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/globalactions/presentation/SecGlobalActionsPresenter;-><init>(Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactions/util/BroadcastManager;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/ContentObserverWrapper;)V

    iput-object v12, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mPresenter:Lcom/samsung/android/globalactions/presentation/SecGlobalActionsPresenter;

    iput-object v13, v11, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    return-void
.end method
