.class public Lcom/samsung/android/globalactionsdlx/features/BikeModeStrategy;
.super Ljava/lang/Object;
.source "BikeModeStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionsCreationStrategy;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private final mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/features/BikeModeStrategy;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/features/BikeModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    return-void
.end method

.method static synthetic lambda$onCreateActions$0(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
    .registers 1

    invoke-interface {p0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->updateState()V

    return-void
.end method


# virtual methods
.method public onCreateActions(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/BikeModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BIKE_MODE_INSTALLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/BikeModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ULTRA_POWER_SAVING_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/BikeModeStrategy;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "bike_mode"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    const-string v1, "isBikeMode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/globalactionsdlx/features/-$$Lambda$BikeModeStrategy$PVgo2LEG-5GQHTRz_5eyRcagdSs;

    invoke-direct {v2, v0}, Lcom/samsung/android/globalactionsdlx/features/-$$Lambda$BikeModeStrategy$PVgo2LEG-5GQHTRz_5eyRcagdSs;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->registerContentObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V

    :cond_2d
    return-void
.end method
