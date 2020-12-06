.class public Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;
.super Lcom/android/systemui/statusbar/floating/ShortcutState;
.source "SwipePressedShortcutState.java"


# instance fields
.field private mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    return-void
.end method


# virtual methods
.method public enterState()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->dimAppIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->showShortcut()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->setShortcutIconPressed(Z)V

    return-void
.end method

.method public exitState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->setShortcutIconPressed(Z)V

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

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->findFocusedView(II)Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->focusShortcut(Landroid/view/View;)V

    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    if-eq v4, v5, :cond_2

    iput-object v4, p0, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getCenterLocationX()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getCenterLocationY()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->focusEffect(II)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->moveEffect(II)V

    :cond_2
    :goto_0
    goto :goto_2

    :cond_3
    if-ne v0, v3, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->launchFocusedApp(Lcom/android/systemui/statusbar/floating/FloatingShortcutView;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->hideEffect()V

    :goto_1
    new-instance v4, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->getFloatingShortcutAreaView()Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    :goto_2
    return v3
.end method
