.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;
.super Landroid/view/IRotationWatcher$Stub;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onRotationChanged$0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;)V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # invokes: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$800(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$500(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$700(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)I

    move-result v0

    if-eq v0, p1, :cond_23

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # setter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I
    invoke-static {v0, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$702(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;I)I

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$300(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$4$BzHU-N3JjSbnSj9MmN50oZWd3X0;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$4$BzHU-N3JjSbnSj9MmN50oZWd3X0;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method
