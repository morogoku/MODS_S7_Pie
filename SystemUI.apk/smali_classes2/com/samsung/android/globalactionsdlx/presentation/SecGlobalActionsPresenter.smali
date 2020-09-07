.class public Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;
.super Ljava/lang/Object;
.source "SecGlobalActionsPresenter.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecGlobalActionsPresenter"

.field public static sViewPositionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActionConfirming:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

.field mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastManager:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

.field private final mContentObserverWrapper:Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;

.field mFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

.field mIsDeviceProvisioned:Z

.field mIsDisabled:Z

.field mIsKeyguardShowing:Z

.field mIsOverrideDefaultActions:Z

.field mIsShowing:Z

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

.field mSystemCondition:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

.field private final mThemeChecker:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;

.field mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

.field mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

.field mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;->INSTANCE:Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->sViewPositionComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;Lcom/samsung/android/globalactionsdlx/util/SystemController;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    iput-object p4, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mActions:Ljava/util/List;

    iput-object p8, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    iput-object p5, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

    iput-object p6, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    iput-object p7, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iput-object p9, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mThemeChecker:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;

    iput-object p10, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mContentObserverWrapper:Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;

    return-void
.end method

.method static synthetic lambda$clearActions$0(Ljava/lang/String;Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)Z
    .registers 3

    invoke-interface {p1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$onShowDialog$1(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;)V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$onShowDialog$2(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;)V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$registerSecureConfirmAction$3(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
    .registers 1

    invoke-interface {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->onPressSecureConfirm()V

    return-void
.end method

.method static synthetic lambda$static$4(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)I
    .registers 4

    invoke-interface {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->getValue()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_1c

    const/4 v0, -0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method


# virtual methods
.method public addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
    .registers 6

    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAction ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public clearActions(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$gHkOdtqFDdDFCYar0L7knikn3fM;

    invoke-direct {v0, p1}, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$gHkOdtqFDdDFCYar0L7knikn3fM;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public clearCoverStateChange()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    const-string v2, "clearCoverStateChange()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SystemController;->clearCoverStateChange()V

    return-void
.end method

.method public confirmAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;->showActionConfirming(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    const-string v0, "GlobalActions$ConfirmDialog"

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->hideQuickPanel(Ljava/lang/String;)V

    return-void
.end method

.method public confirmSafeMode(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "safe_mode"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewIndex(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->confirmAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    return-void
.end method

.method createActions()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createActionsCreationStrategies(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionsCreationStrategy;

    invoke-interface {v2, p0}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionsCreationStrategy;->onCreateActions(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)V

    goto :goto_a

    :cond_1a
    iget-boolean v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->createDefaultActions()V

    :cond_21
    return-void
.end method

.method public createDefaultActions()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    const-string v2, "createDefaultActions()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "power"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "restart"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    const-string v1, "bug_report"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BUG_REPORT_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactionsdlx/presentation/strategies/DefaultActionsCreationStrategy;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/DefaultActionsCreationStrategy;->onCreateBugReportAction()Z

    move-result v4

    if-nez v4, :cond_4c

    const/4 v1, 0x1

    goto :goto_4d

    :cond_4c
    goto :goto_38

    :cond_4d
    :goto_4d
    if-nez v1, :cond_5a

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    const-string v3, "bug_report"

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    :cond_5a
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SUPPORT_EMERGENCY_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    const-string v2, "emergency"

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactionsdlx/presentation/strategies/DefaultActionsCreationStrategy;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/DefaultActionsCreationStrategy;->onCreateEmergencyAction()Z

    move-result v4

    if-nez v4, :cond_85

    const/4 v1, 0x1

    goto :goto_86

    :cond_85
    goto :goto_71

    :cond_86
    :goto_86
    if-nez v1, :cond_93

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    const-string v3, "emergency"

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    :cond_93
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "recovery"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    return-void
.end method

.method public createOnKeyListenerActions(Landroid/view/KeyEvent;I)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createOnKeyListenerStrategy(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactionsdlx/presentation/strategies/OnKeyListenerStrategy;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-interface {v3, v4, p2}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/OnKeyListenerStrategy;->onKeyListenerAction(II)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v1, 0x1

    :cond_22
    goto :goto_b

    :cond_23
    return v1
.end method

.method public dismissDialog(Z)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;->dismissWithAnimation()V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    :goto_d
    return-void
.end method

.method dispose()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createDisposingStrategies(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactionsdlx/presentation/strategies/DisposingStrategy;

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/DisposingStrategy;->onDispose()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public getGlobalActionsView()Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    return-object v0
.end method

.method public getValidActions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    iget-boolean v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    if-nez v3, :cond_22

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->showBeforeProvisioning()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_b

    :cond_22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_26
    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->sViewPositionComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public hideDialogOnSecureConfirm()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;->hideDialogOnSecureConfirm()V

    return-void
.end method

.method public hideQuickPanel()V
    .registers 2

    const-string v0, "GlobalActions"

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->hideQuickPanel(Ljava/lang/String;)V

    return-void
.end method

.method public hideQuickPanel(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideQuickPanelBackground("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/globalactionsdlx/util/SystemController;->hideQuickPanel(Ljava/lang/String;)V

    return-void
.end method

.method initialize()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsShowing:Z

    iput-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createInitializationStrategies(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactionsdlx/presentation/strategies/InitializationStrategy;

    iget-boolean v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsKeyguardShowing:Z

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/InitializationStrategy;->onInitialize(Z)V

    goto :goto_17

    :cond_29
    return-void
.end method

.method public isActionConfirming()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDeviceProvisioned()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    return v0
.end method

.method public isDisabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsDisabled:Z

    return v0
.end method

.method public isKeyguardShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsKeyguardShowing:Z

    return v0
.end method

.method public onCancelDialog()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    const-string/jumbo v2, "onCancelDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->isActionConfirming()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;->cancelConfirming()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;->unregisterSecureConfirmBroadcastReceiver()V

    goto :goto_25

    :cond_1e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->dismissDialog(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->clearCoverStateChange()V

    :goto_25
    return-void
.end method

.method public onDismiss()V
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->dispose()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;->onGlobalActionsHidden()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsShowing:Z

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;->unregisterDismissBroadcastReceiver()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;->unregisterSecureConfirmBroadcastReceiver()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mThemeChecker:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->reset()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mContentObserverWrapper:Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;->unregisterObservers()V

    return-void
.end method

.method public onPrepareWindow()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;->createWindowDecorationStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowDecorationStrategy;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v3, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;->addWindowDecorator(Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowDecorationStrategy;)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public onShowDialog()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    const-string/jumbo v2, "onShowDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;->onGlobalActionsShown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsShowing:Z

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$ur2L0RUYw8MOp-xKNoqwKkrg0CM;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$ur2L0RUYw8MOp-xKNoqwKkrg0CM;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;)V

    new-instance v2, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$sAcpSNDcmj3kIGDwBELGqd9RStw;

    invoke-direct {v2, p0}, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$sAcpSNDcmj3kIGDwBELGqd9RStw;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;->registerDismissActions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->hideQuickPanel()V

    return-void
.end method

.method public onStart(ZZZ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    const-string/jumbo v2, "onStart()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;->onGlobalActionsHidden()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;->onGlobalActionsShown()V

    if-eqz p3, :cond_20

    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->dismissDialog(Z)V

    goto :goto_23

    :cond_20
    invoke-virtual {p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->dismissDialog(Z)V

    :goto_23
    return v2

    :cond_24
    iput-boolean p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_41

    iput-boolean v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsDisabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->dispose()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;->onGlobalActionsShown()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;->onGlobalActionsHidden()V

    return v2

    :cond_41
    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->createActions()V

    return v1
.end method

.method public registerContentObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mContentObserverWrapper:Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;->registerObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerSecureConfirmAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$qcIKeoL6AgFcq3cCTvVzVfYUhKE;

    invoke-direct {v1, p1}, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$qcIKeoL6AgFcq3cCTvVzVfYUhKE;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;->registerSecureConfirmAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDisabled()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsDisabled:Z

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsKeyguardShowing:Z

    return-void
.end method

.method public setOverrideDefaultActions(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    return-void
.end method
