.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardSwipeHelper;
.super Lcom/android/systemui/swipe/SwipeAnimator;
.source "DcmKeyguardSwipeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;-><init>()V

    const-string v0, "DcmKeyguardSwipeHelper"

    const-string v1, "Make Dummy DcmKeyguardSwipeHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initDimens()V
    .locals 0

    return-void
.end method

.method public isViRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardSwipeHelper;->mIntercepting:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onUnlockExecuted()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->onUnlockExecuted()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setIconSlotView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setIntercept(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardSwipeHelper;->mIntercepting:Z

    return-void
.end method
