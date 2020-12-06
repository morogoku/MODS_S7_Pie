.class public Lcom/android/systemui/statusbar/phone/DcmLockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "DcmLockIcon.java"


# instance fields
.field private mForceExitCircleAnimation:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastState:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmLockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DcmLockIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->handleUpdate()V

    return-void
.end method

.method private getIconForState(I)I
    .locals 3

    const-string v0, "DcmKeyguardLockIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIconForState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const v0, 0x7f0802e0

    return v0

    :pswitch_1
    const v0, 0x7f080327

    return v0

    :pswitch_2
    const v0, 0x7f0801f0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getState()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private handleUpdate()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->isShown()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->start()V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->stop()V

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getState()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastState:I

    if-ne v4, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastDeviceInteractive:Z

    if-ne v0, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastScreenOn:Z

    if-eq v5, v6, :cond_6

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getIconForState(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v7, v6, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setRestingAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1200fb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_5

    const-string v9, "DcmKeyguardLockIcon"

    const-string v10, "animation not null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_5
    :goto_3
    iput v4, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastState:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastDeviceInteractive:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastScreenOn:Z

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mForceExitCircleAnimation:Z

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getState()I

    move-result v5

    if-ne v5, v3, :cond_7

    move v2, v3

    nop

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->setTrustManaged(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setLongClickable(Z)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->stop()V

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->stop()V

    :goto_0
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->update(ZI)V

    return-void
.end method

.method public update(ZI)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mForceExitCircleAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12cb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public updateLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->updateLayout()V

    return-void
.end method
