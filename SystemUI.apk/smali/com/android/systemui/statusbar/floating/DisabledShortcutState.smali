.class public Lcom/android/systemui/statusbar/floating/DisabledShortcutState;
.super Lcom/android/systemui/statusbar/floating/ShortcutState;
.source "DisabledShortcutState.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method


# virtual methods
.method public enterState()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/DisabledShortcutState;->hideAppIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/DisabledShortcutState;->hideShortcut()V

    return-void
.end method

.method public exitState()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
