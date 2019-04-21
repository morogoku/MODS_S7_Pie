.class Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecGlobalActionsAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->startShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$1;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$1;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;
    invoke-static {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->access$000(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;)V

    return-void
.end method
