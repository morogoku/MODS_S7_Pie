.class public Lcom/android/systemui/volume/VolumeDialogMotion;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogMotion$Callback;,
        Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;,
        Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimating:Z

.field private final mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

.field private mCloseDexAnimationSet:Landroid/animation/AnimatorSet;

.field private final mContents:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDialogView:Landroid/view/View;

.field private mDismissing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mResources:Landroid/content/res/Resources;

.field private mShowing:Z

.field private mStartDexAnimationSet:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$1;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialogMotion;)Lcom/android/systemui/volume/VolumeDialogMotion$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private makeDexCloseAnimation(Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070827

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    const-string v3, "y"

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v7, 0x1

    aput v0, v5, v7

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0xfa

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    const-string v5, "alpha"

    new-array v8, v4, [F

    fill-array-data v8, :array_0

    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x96

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    aput-object v3, v4, v7

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogMotion$6;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion$6;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v5

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private makeDexStartAnimation()Landroid/animation/AnimatorSet;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070827

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    const-string v3, "y"

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v5, v7

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x15e

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    const-string v5, "alpha"

    new-array v8, v4, [F

    fill-array-data v8, :array_0

    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x96

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    aput-object v3, v4, v7

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogMotion$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$3;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v5

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static scaledDuration(I)I
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setDismissing(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDismissing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->updateAnimating()V

    return-void
.end method

.method private setShowing(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->updateAnimating()V

    return-void
.end method

.method private startDexCloseAnimation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCloseDexAnimationSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion;->makeDexCloseAnimation(Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCloseDexAnimationSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCloseDexAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method private startDexExpandAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mStartDexAnimationSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->makeDexStartAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mStartDexAnimationSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mStartDexAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method private startShowAnimation()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string v1, "startShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;

    invoke-direct {v2}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/volume/VolumeDialogMotion$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$2;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v3, 0x96

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v1, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateAnimating()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAnimating = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/volume/VolumeDialogMotion$Callback;->onAnimatingChanged(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public startDismiss(Ljava/lang/Runnable;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string v1, "startDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    :cond_2
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$5;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion$4;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDexCloseAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public startShow()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string v1, "startShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isDexMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShowDexAnimation()V

    :goto_0
    return-void

    :cond_3
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string v1, "mDialog.show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public startShowDexAnimation()V
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string v1, "startShowDexAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDexExpandAnimation()V

    return-void
.end method
