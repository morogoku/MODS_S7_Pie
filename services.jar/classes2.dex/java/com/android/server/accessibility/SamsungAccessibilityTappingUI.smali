.class public Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;
.super Ljava/lang/Object;
.source "SamsungAccessibilityTappingUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SamsungAccessibilityTappingUI"

.field public static final TYPE_IGNORE_REPEAT:I = 0x1

.field public static final TYPE_TAP_DURATION:I


# instance fields
.field private durationTime:J

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mIgnoreImageView:Landroid/widget/ImageView;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mProgressImageView:Landroid/widget/ImageView;

.field private mStandbyImageView:Landroid/widget/ImageView;

.field private mTapImageView:Landroid/widget/ImageView;

.field private mTapLayout:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;

.field private pointCorrection:I

.field private tappingType:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    iput p2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->tappingType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    const/4 v0, 0x0

    iput v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->pointCorrection:I

    invoke-direct {p0}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->makeView()V

    :cond_15
    return-void
.end method

.method static synthetic access$000(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)Landroid/view/WindowManager;
    .registers 2

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private makeView()V
    .registers 4

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mDisplay:Landroid/view/Display;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x608

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x109004d

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v2, 0x1020553

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v2, 0x1020556

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v2, 0x1020555

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v2, 0x1020552

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v2, 0x1020554

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    iget v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->tappingType:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_fa

    goto :goto_ee

    :pswitch_b9
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ee

    :pswitch_ce
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    nop

    :goto_ee
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_b9
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public setDurationTime(J)V
    .registers 3

    iput-wide p1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    return-void
.end method

.method public setIgnoreView(Z)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_10

    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1a

    :cond_10
    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1a
    return-void
.end method

.method public setViewOnOff(Z)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_9
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    return-void
.end method

.method public startAnimation()V
    .registers 5

    iget-wide v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_22

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_39

    :cond_22
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_39
    return-void
.end method

.method public stopAnimation()V
    .registers 4

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public updateView(FF)V
    .registers 10

    iget v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->pointCorrection:I

    if-nez v0, :cond_c

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->pointCorrection:I

    :cond_c
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-double v1, p1

    iget v3, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->pointCorrection:I

    int-to-double v3, v3

    const-wide v5, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p2

    iget v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->pointCorrection:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_40

    :cond_2e
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p1

    iget v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->pointCorrection:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p2

    iget v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->pointCorrection:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI$1;

    invoke-direct {v1, p0}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI$1;-><init>(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
