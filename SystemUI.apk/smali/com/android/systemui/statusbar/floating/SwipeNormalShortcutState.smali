.class public Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;
.super Lcom/android/systemui/statusbar/floating/ShortcutState;
.source "SwipeNormalShortcutState.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method


# virtual methods
.method public enterState()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;->showAppIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;->hideShortcut()V

    return-void
.end method

.method public exitState()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;->isClickedAppIcon(II)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;->getFloatingShortcutAreaView()Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->showEffect(II)V

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method
