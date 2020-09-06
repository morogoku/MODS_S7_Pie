.class public Lcom/samsung/android/globalactionsdlx/features/KnoxContainerStrategy;
.super Ljava/lang/Object;
.source "KnoxContainerStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/strategies/InitializationStrategy;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private final mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/features/KnoxContainerStrategy;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/features/KnoxContainerStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    return-void
.end method


# virtual methods
.method public onInitialize(Z)V
    .registers 5

    if-nez p1, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/KnoxContainerStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_VALID_VERSION:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/KnoxContainerStrategy;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/features/KnoxContainerStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->GET_KEYGUARD_SHOW_STATE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->setKeyguardShowing(Z)V

    :cond_1a
    return-void
.end method
