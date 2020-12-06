.class public Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;
.super Ljava/lang/Object;
.source "KeyInjectionInfo.java"


# instance fields
.field private mCueSize:I

.field private mDisabledByPolicy:Z

.field private mDistanceThreshold:I

.field private mEnabled:Z

.field private mFollowingUpEnabled:Z

.field private mId:I

.field private mIsFixedOrientation:Z

.field private mKeyCode:I

.field private mLongPressAction:Ljava/lang/Runnable;

.field private mMultiGestureSupport:Z

.field private mNeedKeyAction:Z

.field private mOptionalDistanceThreshold:I

.field private mRegion:Landroid/graphics/Rect;

.field private mSideMargin:I

.field private mSwipeOnRelease:Z

.field private mSwipeUpAndHoldEnabled:Z

.field private mTimeOut:I

.field private mVerticalGesture:Z

.field private mViewRegion:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mTimeOut:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mVerticalGesture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mMultiGestureSupport:Z

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mIsFixedOrientation:Z

    return-void
.end method


# virtual methods
.method public getCueSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mCueSize:I

    return v0
.end method

.method public getDistanceThreshold()I
    .locals 1

    iget v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDistanceThreshold:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mId:I

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mKeyCode:I

    return v0
.end method

.method public getLongPressAction()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mLongPressAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getOptionalDistanceThreshold()I
    .locals 1

    iget v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mOptionalDistanceThreshold:I

    return v0
.end method

.method public getRegion()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSideMargin()I
    .locals 1

    iget v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mSideMargin:I

    return v0
.end method

.method public getTimeOut()I
    .locals 1

    iget v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mTimeOut:I

    return v0
.end method

.method public getViewRegion()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mViewRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isDisabledByPolicy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDisabledByPolicy:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mEnabled:Z

    return v0
.end method

.method public isFixedOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mIsFixedOrientation:Z

    return v0
.end method

.method public isFollowingUpEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mFollowingUpEnabled:Z

    return v0
.end method

.method public isMultiGestureSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mMultiGestureSupport:Z

    return v0
.end method

.method public isSwipeOnRelease()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mSwipeOnRelease:Z

    return v0
.end method

.method public isSwipeUpAndHoldEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mSwipeUpAndHoldEnabled:Z

    return v0
.end method

.method public isVerticalGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mVerticalGesture:Z

    return v0
.end method

.method public needKeyAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mNeedKeyAction:Z

    return v0
.end method

.method public setCueSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mCueSize:I

    return-void
.end method

.method public setDisabledByPolicy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDisabledByPolicy:Z

    return-void
.end method

.method public setDistanceThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDistanceThreshold:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mEnabled:Z

    return-void
.end method

.method public setFixedOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mIsFixedOrientation:Z

    return-void
.end method

.method public setFollowingUpEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mFollowingUpEnabled:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mId:I

    return-void
.end method

.method public setKeyAction(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mNeedKeyAction:Z

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mKeyCode:I

    return-void
.end method

.method public setLongPressAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mLongPressAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setMultiGestureSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mMultiGestureSupport:Z

    return-void
.end method

.method public setOptionalDistanceThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mOptionalDistanceThreshold:I

    return-void
.end method

.method public setRegion(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setSideMargin(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mSideMargin:I

    return-void
.end method

.method public setSwipeOnRelease(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mSwipeOnRelease:Z

    return-void
.end method

.method public setSwipeUpAndHoldEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mSwipeUpAndHoldEnabled:Z

    return-void
.end method

.method public setTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mTimeOut:I

    return-void
.end method

.method public setVerticalGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mVerticalGesture:Z

    return-void
.end method

.method public setViewRegion(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mViewRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public swap(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)V
    .locals 9

    iget v0, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mKeyCode:I

    iget v1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDistanceThreshold:I

    iget v2, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mOptionalDistanceThreshold:I

    iget-boolean v3, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mEnabled:Z

    iget-boolean v4, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDisabledByPolicy:Z

    iget-boolean v5, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mFollowingUpEnabled:Z

    iget-boolean v6, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mMultiGestureSupport:Z

    iget-boolean v7, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mNeedKeyAction:Z

    iget v8, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mKeyCode:I

    iput v8, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mKeyCode:I

    iget v8, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDistanceThreshold:I

    iput v8, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDistanceThreshold:I

    iget-boolean v8, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mEnabled:Z

    iput-boolean v8, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mEnabled:Z

    iget-boolean v8, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDisabledByPolicy:Z

    iput-boolean v8, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDisabledByPolicy:Z

    iget-boolean v8, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mFollowingUpEnabled:Z

    iput-boolean v8, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mFollowingUpEnabled:Z

    iget-boolean v8, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mMultiGestureSupport:Z

    iput-boolean v8, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mMultiGestureSupport:Z

    iget-boolean v8, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mNeedKeyAction:Z

    iput-boolean v8, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mNeedKeyAction:Z

    iget v8, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mOptionalDistanceThreshold:I

    iput v8, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mOptionalDistanceThreshold:I

    iput v0, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mKeyCode:I

    iput v1, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDistanceThreshold:I

    iput-boolean v3, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mEnabled:Z

    iput-boolean v4, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mDisabledByPolicy:Z

    iput-boolean v5, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mFollowingUpEnabled:Z

    iput-boolean v6, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mMultiGestureSupport:Z

    iput-boolean v7, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mNeedKeyAction:Z

    iput v2, p1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mOptionalDistanceThreshold:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [region]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [viewRegion]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->mViewRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
