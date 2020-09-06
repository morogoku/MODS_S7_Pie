.class public final synthetic Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$qcIKeoL6AgFcq3cCTvVzVfYUhKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$qcIKeoL6AgFcq3cCTvVzVfYUhKE;->f$0:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$qcIKeoL6AgFcq3cCTvVzVfYUhKE;->f$0:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-static {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->lambda$registerSecureConfirmAction$3(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    return-void
.end method
