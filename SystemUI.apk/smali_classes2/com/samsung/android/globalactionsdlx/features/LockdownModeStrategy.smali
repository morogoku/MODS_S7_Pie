.class public Lcom/samsung/android/globalactionsdlx/features/LockdownModeStrategy;
.super Ljava/lang/Object;
.source "LockdownModeStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionsCreationStrategy;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private final mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/features/LockdownModeStrategy;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/features/LockdownModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    return-void
.end method


# virtual methods
.method public onCreateActions(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/LockdownModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_LOCK_DOWN_IN_POWER_MENU:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/LockdownModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_CURRENT_USER_SECURE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/LockdownModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_STRONG_AUTH_FOR_LOCK_DOWN:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/LockdownModeStrategy;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "lock_down_mode"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    :cond_2a
    return-void
.end method
