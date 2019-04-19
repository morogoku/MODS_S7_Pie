.class public Lcom/android/keyguard/biometric/KeyguardBiometricToastView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricToastView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;
    }
.end annotation


# instance fields
.field private final mAnimHandler:Landroid/os/Handler;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBodyAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mIsAnimating:Z

.field private mIsShowing:Z

.field private mIsUpdating:Z

.field private mToastBodyView:Landroid/widget/LinearLayout;

.field private mToastGuideText:Landroid/widget/TextView;

.field private mToastIcon:Landroid/widget/ImageView;

.field private mToastProgressBar:Landroid/widget/ProgressBar;

.field private mToastRoot:Landroid/widget/FrameLayout;

.field private mUpdateAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$1;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->hasGuideText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setViewAttribution()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;FFLandroid/view/View;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;FFLandroid/view/View;JLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private appearAnimation(JI)V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "scaleX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string v3, "alpha"

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;

    invoke-direct {v3, p0, p3}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private appearAnimation(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->hasGuideText()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setViewAttribution()V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "scaleX"

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0xc8

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string v5, "alpha"

    new-array v6, v4, [F

    fill-array-data v6, :array_1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;ILcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeTextAnim(FFLandroid/view/View;J)V
    .locals 7

    sget-object v6, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    return-void
.end method

.method private changeTextAnim(FFLandroid/view/View;JLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V
    .locals 3

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;

    invoke-direct {v1, p0, p6}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private disappearAnimation(J)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->hasGuideText()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;J)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string/jumbo v2, "scaleX"

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string v6, "alpha"

    new-array v7, v3, [F

    fill-array-data v7, :array_1

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$5;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getTextWidth()I
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-le v2, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    return v4
.end method

.method private hasGuideText()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    return-void
.end method

.method private setViewAttribution()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getTextWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    const v4, 0x7f0800dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    const v4, 0x7f0800dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateAnimation(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;IILcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateToastView(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->updateAnimation(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->appearAnimation(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 3

    const-string v0, "KeyguardBiometricToastView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss() , force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->disappearAnimation(J)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardBiometricToastView"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a05c5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a05c4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120528

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setViewAttribution()V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->reset()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setVisibility(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardBiometricToastView"

    const-string v1, "Icon view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show(JI)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KeyguardBiometricToastView"

    const-string v2, "Do not show toast by video call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "KeyguardBiometricToastView"

    const-string/jumbo v2, "show()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->appearAnimation(JI)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public update(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V
    .locals 6

    const-string v0, "KeyguardBiometricToastView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update toast contents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , already showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$7;->$SwitchMap$com$android$keyguard$biometric$KeyguardBiometricToastView$ToastType:[I

    invoke-virtual {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const v3, 0x7f120527

    const v4, 0x7f120525

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iput-boolean v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_0

    nop

    move v3, v4

    nop

    :cond_0
    move v0, v3

    const v1, 0x7f0803f4

    goto :goto_2

    :pswitch_1
    iput-boolean v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_1

    nop

    move v3, v4

    nop

    :cond_1
    move v0, v3

    const v1, 0x7f0803f4

    goto :goto_2

    :pswitch_2
    iput-boolean v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_2

    const v2, 0x7f120524

    goto :goto_0

    :cond_2
    const v2, 0x7f120522

    :goto_0
    move v0, v2

    const v1, 0x7f0803f5

    goto :goto_2

    :pswitch_3
    iput-boolean v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_3

    const v2, 0x7f120526

    goto :goto_1

    :cond_3
    const v2, 0x7f120529

    :goto_1
    move v0, v2

    const v1, 0x7f0803f5

    goto :goto_2

    :pswitch_4
    nop

    :goto_2
    sget-object v2, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    if-eq p1, v2, :cond_4

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->updateToastView(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
