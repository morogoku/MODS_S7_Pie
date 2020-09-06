.class Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecGlobalActionsAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->startDismissAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

.field final synthetic val$isSecureConfirming:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;Z)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$2;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

    iput-boolean p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$2;->val$isSecureConfirming:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$2;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;
    invoke-static {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->access$100(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-boolean v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$2;->val$isSecureConfirming:Z

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$2;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;
    invoke-static {v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->access$100(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$2;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;
    invoke-static {v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->access$000(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;)V

    return-void
.end method
