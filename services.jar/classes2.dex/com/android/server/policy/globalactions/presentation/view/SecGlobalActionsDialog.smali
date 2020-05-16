.class public Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;
.super Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;
.source "SecGlobalActionsDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecGlobalActionsDialog"


# instance fields
.field private final mOnDismiss:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V
    .registers 5

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;

    invoke-direct {v0}, Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    iput-object p3, p0, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mOnDismiss:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->initDependencies(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    return-void
.end method

.method private initDependencies(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 23

    move-object/from16 v11, p0

    new-instance v0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;

    move-object/from16 v12, p1

    invoke-direct {v0, v12}, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    move-object v13, v0

    new-instance v0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    iget-object v1, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;)V

    move-object v14, v0

    new-instance v0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    iget-object v1, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v14, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;)V

    move-object v15, v0

    const-class v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object v0, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v0, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "[Service]"

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->setPackageTag(Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object v0, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v0, Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalyticsImpl;

    invoke-direct {v0}, Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalyticsImpl;-><init>()V

    move-object v10, v0

    new-instance v0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;

    iget-object v1, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v14, v15, v1}, Lcom/samsung/android/globalactions/util/SystemConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    iput-object v0, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    new-instance v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iget-object v1, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v2, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0, v14, v1, v2, v10}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V

    move-object v9, v0

    new-instance v7, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;

    iget-object v1, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v6, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    move-object v0, v7

    move-object v2, v11

    move-object v3, v14

    move-object v4, v9

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    move-object v8, v7

    invoke-virtual {v9, v8}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V

    new-instance v7, Lcom/samsung/android/globalactions/presentation/SecGlobalActionsPresenter;

    const-class v0, Lcom/samsung/android/globalactions/util/BroadcastManager;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/globalactions/util/BroadcastManager;

    const-class v0, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v4, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-class v0, Lcom/samsung/android/globalactions/util/ThemeChecker;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/samsung/android/globalactions/util/ThemeChecker;

    const-class v0, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    invoke-interface {v14, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    move-object v0, v7

    move-object v1, v11

    move-object v2, v8

    move-object/from16 v18, v3

    move-object v3, v9

    move-object/from16 v19, v4

    move-object v4, v13

    move-object v12, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/globalactions/presentation/SecGlobalActionsPresenter;-><init>(Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactions/util/BroadcastManager;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/ContentObserverWrapper;)V

    iput-object v12, v11, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mPresenter:Lcom/samsung/android/globalactions/presentation/SecGlobalActionsPresenter;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mOnDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->mOnDismiss:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_d
    invoke-super {p0}, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->dismiss()V

    return-void
.end method
