.class public Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;
.super Ljava/lang/Object;
.source "SecGlobalActionsAnimatorFSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;,
        Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecGlobalActionsAnimatorFSM"


# instance fields
.field private final mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

.field private mIsPortrait:Z

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

.field mState:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

.field private mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    return-void
.end method


# virtual methods
.method public handleAnimationEvent(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    if-eq v0, v1, :cond_b

    return-void

    :cond_b
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$1;->$SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State:[I

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mState:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_14a

    goto/16 :goto_149

    :pswitch_1c
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_36

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->setListViewPort()V

    goto :goto_2f

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->setListViewLand()V

    :goto_2f
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->initializeSelectedActionView()V

    goto/16 :goto_149

    :cond_36
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_53

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->isShowConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->cancelShowConfirmAnimation()V

    :cond_47
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startDismissSafeModeAnimation()V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_149

    :cond_53
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_149

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_149

    :pswitch_63
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_7d

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->setListViewPort()V

    goto :goto_76

    :cond_71
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->setListViewLand()V

    :goto_76
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->initializeSelectedActionView()V

    goto/16 :goto_149

    :cond_7d
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_9a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->isShowConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->cancelShowConfirmAnimation()V

    :cond_8e
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startDismissConfirmAnimation()V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_149

    :cond_9a
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_aa

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startSetSafeModeAnimation()V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_149

    :cond_aa
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_ba

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_149

    :cond_ba
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_149

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_149

    :pswitch_ca
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_df

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->showMainViewPort()V

    goto/16 :goto_149

    :cond_d9
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->showMainViewLand()V

    goto :goto_149

    :cond_df
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_10e

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->isHideConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->cancelHideConfirmAnimation()V

    :cond_f0
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->isSafeModeConfirm()Z

    move-result v0

    if-eqz v0, :cond_103

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startShowSafeModeAnimation()V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto :goto_149

    :cond_103
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startShowConfirmAnimation()V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto :goto_149

    :cond_10e
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_11d

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto :goto_149

    :cond_11d
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_149

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto :goto_149

    :pswitch_12c
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_149

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_13a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->showMainViewPort()V

    goto :goto_13f

    :cond_13a
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->showMainViewLand()V

    :goto_13f
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;->startShowAnimation()V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    :cond_149
    :goto_149
    return-void

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_12c
        :pswitch_ca
        :pswitch_63
        :pswitch_1c
    .end packed-switch
.end method

.method public setOrientation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mIsPortrait:Z

    return-void
.end method

.method public setState(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SecGlobalActionsAnimatorFSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->mState:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    return-void
.end method
