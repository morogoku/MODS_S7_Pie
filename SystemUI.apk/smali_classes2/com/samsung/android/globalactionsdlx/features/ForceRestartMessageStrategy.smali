.class public Lcom/samsung/android/globalactionsdlx/features/ForceRestartMessageStrategy;
.super Ljava/lang/Object;
.source "ForceRestartMessageStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionsCreationStrategy;


# instance fields
.field private final mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/features/ForceRestartMessageStrategy;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    return-void
.end method


# virtual methods
.method public onCreateActions(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/features/ForceRestartMessageStrategy;->mViewModelFactory:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "force_restart_message"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    return-void
.end method
