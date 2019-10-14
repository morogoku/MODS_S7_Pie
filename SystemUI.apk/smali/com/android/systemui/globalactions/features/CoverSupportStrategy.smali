.class public Lcom/android/systemui/globalactions/features/CoverSupportStrategy;
.super Ljava/lang/Object;
.source "CoverSupportStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mCoverUtil:Lcom/android/systemui/globalactions/util/CoverUtil;

.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/CoverUtil;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtil:Lcom/android/systemui/globalactions/util/CoverUtil;

    iput-object p3, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    iput-object p4, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method

.method public static synthetic lambda$onInitialize$0(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    return-void
.end method


# virtual methods
.method public onCreateBugReportAction()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCreateEmergencyAction()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtil:Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/CoverUtil;->dispose()V

    return-void
.end method

.method public onInitialize(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtil:Lcom/android/systemui/globalactions/util/CoverUtil;

    new-instance v1, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$XAiBRXDXR-n4c5ySsqlM0Q7xyqo;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$XAiBRXDXR-n4c5ySsqlM0Q7xyqo;-><init>(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/CoverUtil;->registerClearCoverStateListener(Lcom/samsung/android/globalactions/util/ClearCoverStateListener;)V

    return-void
.end method

.method public onReboot()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "CoverSupportStrategy"

    const-string/jumbo v2, "onReboot"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShutdown()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "CoverSupportStrategy"

    const-string/jumbo v2, "onShutdown"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
