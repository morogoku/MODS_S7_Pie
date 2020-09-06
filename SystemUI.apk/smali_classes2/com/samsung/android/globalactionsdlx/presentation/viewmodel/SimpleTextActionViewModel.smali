.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SimpleTextActionViewModel;
.super Ljava/lang/Object;
.source "SimpleTextActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;


# instance fields
.field private mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SimpleTextActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onPress()V
    .registers 1

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/SimpleTextActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-void
.end method
