.class public Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;
.super Lcom/android/systemui/statusbar/floating/ShortcutState;
.source "FingerPressedShortcutState.java"


# instance fields
.field private mDelayedShowingRunnable:Ljava/lang/Runnable;

.field private mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    new-instance v0, Lcom/android/systemui/statusbar/floating/-$$Lambda$FingerPressedShortcutState$g8ujv8VcvypaMY9YcceFUqRhaiQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/-$$Lambda$FingerPressedShortcutState$g8ujv8VcvypaMY9YcceFUqRhaiQ;-><init>(Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mDelayedShowingRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->updateBlueAndDim(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->dimAppIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->showShortcut()V

    return-void
.end method


# virtual methods
.method public enterState()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->setForceExpandedByShortcut(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mDelayedShowingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public exitState()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mDelayedShowingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->setForceExpandedByShortcut(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->updateBlueAndDim(Z)V

    return-void
.end method

.method public isPressed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->findFocusedView(II)Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->focusShortcut(Landroid/view/View;)V

    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    if-eq v4, v5, :cond_2

    iput-object v4, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getCenterLocationX()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getCenterLocationY()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->focusEffect(II)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->moveEffect(II)V

    :cond_2
    :goto_0
    goto :goto_2

    :cond_3
    if-ne v0, v3, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->launchFocusedApp(Lcom/android/systemui/statusbar/floating/FloatingShortcutView;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->hideEffect()V

    :goto_1
    new-instance v4, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->getFloatingShortcutAreaView()Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    :goto_2
    return v3
.end method
