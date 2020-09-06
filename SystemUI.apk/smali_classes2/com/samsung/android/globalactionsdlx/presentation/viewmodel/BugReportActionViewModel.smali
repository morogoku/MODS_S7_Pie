.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;
.super Ljava/lang/Object;
.source "BugReportActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

.field private final mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/SystemController;Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;->mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onLongPress()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;->mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/SystemController;->doBugReport(Z)V

    return-void
.end method

.method public onPress()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;->mSystemController:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/SystemController;->doBugReport(Z)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->dismissDialog(Z)V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BugReportActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-void
.end method
