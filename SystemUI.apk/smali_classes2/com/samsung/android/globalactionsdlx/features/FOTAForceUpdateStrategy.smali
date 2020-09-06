.class public Lcom/samsung/android/globalactionsdlx/features/FOTAForceUpdateStrategy;
.super Ljava/lang/Object;
.source "FOTAForceUpdateStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/strategies/SoftwareUpdateStrategy;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private final mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/SystemController;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/features/FOTAForceUpdateStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/features/FOTAForceUpdateStrategy;->mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    return-void
.end method


# virtual methods
.method public onUpdate()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/FOTAForceUpdateStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FIRSTNET_SIM:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/FOTAForceUpdateStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ATT_FOTA_CLIENT_PACKAGE_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/FOTAForceUpdateStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FOTA_AVAILABLE_FOR_GLOBALACTIONS:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public update()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/FOTAForceUpdateStrategy;->mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SystemController;->startATTForceUpdate()V

    return-void
.end method
