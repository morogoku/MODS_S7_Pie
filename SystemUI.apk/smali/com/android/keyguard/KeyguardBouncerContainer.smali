.class public Lcom/android/keyguard/KeyguardBouncerContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardBouncerContainer.java"


# instance fields
.field private mService:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x52

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result v1

    return v1

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result v1

    return v1

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_5
    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
