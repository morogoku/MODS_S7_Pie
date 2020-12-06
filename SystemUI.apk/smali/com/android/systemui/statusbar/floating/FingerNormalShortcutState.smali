.class public Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;
.super Lcom/android/systemui/statusbar/floating/ShortcutState;
.source "FingerNormalShortcutState.java"


# instance fields
.field private mIsPressed:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method


# virtual methods
.method public enterState()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->hideAppIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->hideShortcut()V

    return-void
.end method

.method public exitState()V
    .locals 0

    return-void
.end method

.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    return v0
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

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->isClickedAppIcon(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    return v4

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    if-eqz v3, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    return v4

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    return v3
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    return-void
.end method
