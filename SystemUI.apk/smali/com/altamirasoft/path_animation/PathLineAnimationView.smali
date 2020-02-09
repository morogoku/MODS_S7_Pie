.class public Lcom/altamirasoft/path_animation/PathLineAnimationView;
.super Landroid/widget/ImageView;
.source "PathLineAnimationView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field context:Landroid/content/Context;

.field private dataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/altamirasoft/path_animation/PathLineAnimatorModel;",
            ">;"
        }
    .end annotation
.end field

.field haveLoaded:Z

.field haveSVG:Z

.field haveSize:Z

.field height:I

.field isFinished:Z

.field isFinishedSingleAnimation:Z

.field isReverse:Z

.field isSingleAnimation:Z

.field listener:Lcom/altamirasoft/path_animation/PathListener;

.field private mAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

.field public needDebug:Z

.field needStart:Z

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field paint:Landroid/graphics/Paint;

.field pathPaint:Landroid/graphics/Paint;

.field pattern2:[F

.field pattern4:[F

.field reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field selfListener:Landroid/animation/Animator$AnimatorListener;

.field private set:Landroid/animation/AnimatorSet;

.field simplePaint:Landroid/graphics/Paint;

.field startDelay:J

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->context:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V
    .locals 2

    new-instance v0, Landroid/graphics/DashPathEffect;

    invoke-direct {v0, p3, p4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private resetAnimator()V
    .locals 9

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;

    invoke-direct {v5, p0, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;Lcom/altamirasoft/path_animation/PathLineAnimatorModel;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-boolean v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v4

    iput-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDuration(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDelay(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDirection(I)I

    move-result v4

    iput v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getStartPoint(I)I

    move-result v4

    iput v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatMode(I)I

    move-result v4

    iput v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatCount(I)I

    move-result v4

    iput v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    goto :goto_1

    :cond_0
    iput-wide v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    iput-wide v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v4

    iput-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDuration(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDelay(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDirection(I)I

    move-result v4

    iput v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getStartPoint(I)I

    move-result v4

    iput v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatMode(I)I

    move-result v4

    iput v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v4, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatCount(I)I

    move-result v4

    iput v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    goto :goto_1

    :cond_2
    iput-wide v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    iput-wide v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    :goto_1
    iget-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-wide v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-wide v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-object v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    iget v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_4
    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    iget-object v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runAnimation()V
    .locals 3

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetProgress()V

    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetAnimator()V

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidateLineListenerValue()V

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetListener()V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-wide v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidate()V

    return-void
.end method

.method public initData()V
    .locals 8

    iget v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    :cond_0
    iget v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingRight:I

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingBottom:I

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

    iget v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    iget v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingRight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    iget v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/altamirasoft/path_animation/SvgHelper;->getPathsForViewport(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    new-instance v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    invoke-direct {v3}, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;-><init>()V

    iput v2, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->position:I

    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;

    iget-object v6, v5, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v6, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    iget-object v7, v5, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    iput-object v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iput v6, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->length:F

    iput-boolean v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->isInitialized:Z

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    if-eqz v2, :cond_5

    iput-boolean v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public invalidateLineListenerValue()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v0}, Lcom/altamirasoft/path_animation/PathListener;->getLineWidth(I)I

    move-result v2

    iput v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v0}, Lcom/altamirasoft/path_animation/PathListener;->getLineColor(I)I

    move-result v2

    iput v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v0}, Lcom/altamirasoft/path_animation/PathListener;->getLineCapStyle(I)Landroid/graphics/Paint$Cap;

    move-result-object v2

    iput-object v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    iget-boolean v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget-object v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_2
    iget v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    iget-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->length:F

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget-object v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v6, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v6, v9, :cond_5

    iget v6, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    mul-float/2addr v6, v4

    iget v10, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    sub-float/2addr v10, v4

    iget-object v11, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v5, v11, v1

    iget-object v11, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    iget v12, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v12, v12

    aput v12, v11, v9

    iget-object v11, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v6, v11, v8

    iget-object v8, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v4, v8, v7

    iget-object v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    invoke-direct {p0, p1, v7, v8, v5}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    cmpl-float v7, v10, v5

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    aput v10, v7, v1

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    aput v4, v7, v9

    iget-object v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    invoke-direct {p0, p1, v7, v8, v5}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    :cond_4
    goto :goto_1

    :cond_5
    iget v6, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    mul-float/2addr v6, v4

    iget v10, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v5, v10, v1

    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    iget v10, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    sub-float/2addr v10, v6

    aput v10, v5, v9

    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v6, v5, v8

    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v4, v5, v7

    iget-object v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    invoke-direct {p0, p1, v5, v10, v4}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    :cond_6
    iget v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_7

    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    iget v10, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    aput v10, v5, v1

    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v4, v5, v9

    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v4, v5, v8

    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v4, v5, v7

    iget-object v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v8, v4

    add-float/2addr v8, v6

    iget v9, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-direct {p0, p1, v5, v7, v8}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string/jumbo v1, "onRestoreInstanceState - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string/jumbo v1, "onSaveInstanceState - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string/jumbo v1, "onSizeChanged - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->initData()V

    :cond_1
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string/jumbo v1, "onViewAttachedToWindow - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string/jumbo v1, "onViewDetachedFromWindow - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->cancel()V

    return-void
.end method

.method public resetListener()V
    .locals 2

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public resetProgress()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidate()V

    return-void
.end method
