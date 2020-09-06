.class public Lcom/samsung/android/globalactionsdlx/features/SktStrategy;
.super Ljava/lang/Object;
.source "SktStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionInteractionStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "SktStrategy"


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

.field private final mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/ToastController;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    iput-object p4, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public onPressBikeModeAction()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SktStrategy"

    const-string/jumbo v2, "onPressBikeModeAction"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v2, 0x10403dd

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v2

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public onPressEmergencyModeAction()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SktStrategy"

    const-string/jumbo v2, "onPressEmergencyModeAction"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v2, 0x10403d8

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v2

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public onPressPowerAction()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SktStrategy"

    const-string/jumbo v2, "onPressPowerAction"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_TSAFE_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v3, 0x10403d9

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/globalactionsdlx/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v1

    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v3, 0x10403da

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/globalactionsdlx/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v1

    :cond_47
    const/4 v0, 0x0

    return v0
.end method

.method public onPressRestartAction()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SktStrategy"

    const-string/jumbo v2, "onPressRestartAction"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mToastController:Lcom/samsung/android/globalactionsdlx/util/ToastController;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/features/SktStrategy;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    const v2, 0x10403dc

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v2

    :cond_24
    const/4 v0, 0x0

    return v0
.end method
