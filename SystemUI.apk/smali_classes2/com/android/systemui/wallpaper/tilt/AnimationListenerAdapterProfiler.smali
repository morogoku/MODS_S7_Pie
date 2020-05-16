.class public Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;
.super Ljava/lang/Object;
.source "AnimationListenerAdapterProfiler.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimElapsed:J

.field private mAnimInfo:Ljava/lang/String;

.field private mAnimStartDelayElapsed:J

.field private mFrameCnt:I

.field private mIsCanceled:Z

.field private mIsProfilingStarted:Z

.field private mLastFrameTime:J

.field private mLongestFrameFraction:F

.field private mLongestFrameNum:J

.field private mLongestFrameTime:J

.field private mProfileTag:Ljava/lang/String;

.field private mStartFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimStartDelayElapsed:J

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimElapsed:J

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProfileTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimElapsed:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] onAnimationEnd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " onStart-onEnd took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms / duration diff= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " frames "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    long-to-float v7, v2

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " fps / StartFraction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "\nLongest Frame [num : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameNum:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " fracton : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameFraction:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 9
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimElapsed:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLastFrameTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    iput-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameNum:J

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameFraction:F

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimStartDelayElapsed:J

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(duration= "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " / delay= "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] onAnimationStart : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " StartDelay took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms / delay diff= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    sub-long v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLastFrameTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLastFrameTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameFraction:F

    iget v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameNum:J

    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLastFrameTime:J

    iget v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    :cond_2
    return-void
.end method

.method public startAnimationProfile(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    if-nez p1, :cond_0

    const-string p1, "Unknown"

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimStartDelayElapsed:J

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] startAnimationProfile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
