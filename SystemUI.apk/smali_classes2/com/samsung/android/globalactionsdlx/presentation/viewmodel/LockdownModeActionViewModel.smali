.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;
.super Ljava/lang/Object;
.source "LockdownModeActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

.field private final mLockPatternUtilsWrapper:Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mLockPatternUtilsWrapper:Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onLongPress()V
    .registers 1

    return-void
.end method

.method public onPress()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;

    const-string v1, "611"

    const-string v2, "6111"

    const-string v3, "Lock down"

    const-wide/16 v4, 0x4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->dismissDialog(Z)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mLockPatternUtilsWrapper:Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->lockDownDelayed(I)V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-void
.end method
