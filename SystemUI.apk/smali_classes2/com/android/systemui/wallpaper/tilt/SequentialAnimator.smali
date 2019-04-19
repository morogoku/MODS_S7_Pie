.class public Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;
.super Ljava/lang/Object;
.source "SequentialAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;,
        Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimationState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationState:I

.field private mAnimationValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mCurrentFraction:F

.field private mDummyAnimator:Landroid/animation/ValueAnimator;

.field private mDuration:J

.field private mFractionUnit:F

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mFrameCount:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsCanceled:Z

.field private mIsRunning:Z

.field private mPrevFrameTime:J

.field private mStartDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;-><init>(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsCanceled:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mPrevFrameTime:J

    const/high16 v0, 0x41f80000    # 31.0f

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mStartDelay:J

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    const-string v1, "SequentialAnimator: prepare looper for Choreographer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    return v0
.end method

.method static synthetic access$116(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;F)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method


# virtual methods
.method public addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public cancel()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsCanceled:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->getCurrentFraction()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->getCurrentFraction()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    :cond_0
    return-void
.end method

.method public getCurrentFraction()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    return v0
.end method

.method notifyListener(IF)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    iget-object v6, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v6, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->calculateValue(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v2, v5}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    sget-object v3, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyListener: #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " fraction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " unit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    nop

    :cond_3
    :goto_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x40

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    sget-object v4, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyListener : took :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartDelay: under 0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    :cond_0
    iput-wide p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    const-string v1, "start: no listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    const-string v1, "start: skipped, already Running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const-wide/16 v0, -0x1

    :try_start_2
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mPrevFrameTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    iget-wide v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    long-to-float v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsCanceled:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    sget-object v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start: duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " startDelay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mStartDelay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mFractionUnit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " frameDelay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    instance-of v1, v1, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    check-cast v1, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->getProfileTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->startAnimationProfile(Ljava/lang/String;)V

    :cond_2
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mPrevFrameTime:J

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateFrame()J
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->getCurrentFraction()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v4

    const v7, 0x3dcccccd    # 0.1f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    sget-object v6, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage: fraction cut : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    :cond_0
    iget v6, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-nez v6, :cond_1

    invoke-virtual {p0, v7, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    iput v8, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    :cond_1
    iget v6, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    if-ne v8, v6, :cond_4

    iget v6, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_3

    invoke-virtual {p0, v8, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    iget-wide v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mPrevFrameTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x30

    cmp-long v7, v5, v7

    if-lez v7, :cond_2

    const-wide/16 v2, 0x0

    :cond_2
    goto :goto_0

    :cond_3
    iput v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    invoke-virtual {p0, v8, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    const-wide/16 v2, -0x1

    iput-boolean v7, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mPrevFrameTime:J

    iget-wide v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    :cond_4
    return-wide v2
.end method
