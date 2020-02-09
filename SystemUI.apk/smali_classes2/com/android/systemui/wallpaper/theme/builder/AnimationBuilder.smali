.class public Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluatorReverse;,
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;,
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluatorReverse;,
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;,
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluatorReverse;,
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;
    }
.end annotation


# instance fields
.field public a:F

.field public adjust:F

.field public b:F

.field public backgroundId:I

.field public delay:J

.field public duration:J

.field private elementDuration:J

.field public frameSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public from:F

.field public imageView:Landroid/widget/ImageView;

.field public imageViewId:I

.field public imageViewSetId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public interpolator:Landroid/animation/TimeInterpolator;

.field private isAnimationStarted:Z

.field public key:F

.field public length:I

.field public minInterval:I

.field private preSequence:I

.field public r:F

.field public ra:F

.field public rb:F

.field public repeatCount:I

.field public repeatMode:I

.field public scale:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public startIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J

.field public to:F

.field public top:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public xOffSet:F

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public yOffSet:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->r:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->ra:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->rb:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->backgroundId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewSetId:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->x:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->y:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->scale:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startIndex:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->frameSize:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    return p1
.end method


# virtual methods
.method public buildAnimation(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
    .locals 8

    const-string v0, "round"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    goto/16 :goto_2

    :cond_0
    const-string v0, "ellipse"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "parabola"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "sinX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "sinY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "ImageResource"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    new-array v0, v0, [I

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    new-array v3, v3, [I

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    new-array v4, v4, [I

    iput-object v4, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    iget-wide v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    sub-int/2addr v6, v2

    int-to-long v6, v6

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    nop

    :goto_1
    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    if-ge v1, v2, :cond_5

    aput v1, v3, v1

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    aput v2, v0, v1

    iget-object v2, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    aget v4, v0, v1

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    nop

    move-object v0, v1

    goto :goto_2

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    aput v3, v0, v1

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    aput v1, v0, v2

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_2
    iget-wide v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-double v3, v0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    double-to-float v0, v3

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    mul-double/2addr v0, v5

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {v0, v4, v5, v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;-><init>(FFF)V

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluatorReverse;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {v0, v4, v5, v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluatorReverse;-><init>(FFF)V

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-double v3, v0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    double-to-float v0, v3

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    mul-double/2addr v0, v5

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v7, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;-><init>(FFFF)V

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$7;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluatorReverse;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v7, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluatorReverse;-><init>(FFFF)V

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    iget v7, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;-><init>(FFFF)V

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluatorReverse;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    iget v7, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluatorReverse;-><init>(FFFF)V

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$10;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method
