.class public Lcom/android/systemui/statusbar/AffordanceArrowContainer;
.super Landroid/widget/LinearLayout;
.source "AffordanceArrowContainer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mUnderAnimRepeatCount:I

.field private mUnderAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUnderArrow:Landroid/widget/ImageView;

.field private mUpperAnimRepeatCount:I

.field private mUpperAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUpperArrow:Landroid/widget/ImageView;

.field private mVisualCuePlaying:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "AffordanceArrowContainer"

    iput-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mVisualCuePlaying:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "AffordanceArrowContainer"

    iput-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mVisualCuePlaying:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "AffordanceArrowContainer"

    iput-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mVisualCuePlaying:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimRepeatCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimRepeatCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimRepeatCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/AffordanceArrowContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mVisualCuePlaying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimRepeatCount:I

    return v0
.end method

.method static synthetic access$310(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimRepeatCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimRepeatCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
