.class public Lcom/android/systemui/stackdivider/GuideViewController;
.super Ljava/lang/Object;
.source "GuideViewController.java"


# static fields
.field private static sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;


# instance fields
.field private mDefaultHandleMoveThreshold:I

.field private mDismissEndPosition:I

.field private mDismissStartPosition:I

.field private mDockSide:I

.field private mFirstSplitTargetPosition:I

.field private final mGuideBarRect:Landroid/graphics/Rect;

.field private final mGuideHeight:I

.field private mGuideView:Lcom/android/systemui/stackdivider/GuideView;

.field private mGuideViewColor:I

.field private mIsMoving:Z

.field private mLastSplitTargetPosition:I

.field private mMaximizeGuideView:Z

.field private mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

.field private mShowing:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideViewColor:I

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDefaultHandleMoveThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/GuideViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->removeView()V

    return-void
.end method

.method private addView(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/GuideView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/GuideView;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->generateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    return-void
.end method

.method private drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v12, p3

    goto :goto_3

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v9

    :goto_1
    move v10, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v2

    nop

    const/4 v2, 0x3

    if-ne v10, v2, :cond_4

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDockSide:I

    goto :goto_2

    :cond_4
    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    :goto_2
    move/from16 v12, p3

    invoke-virtual {v1, v12, v2, v11}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/stackdivider/GuideViewController;->addView(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    iget v7, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDockSide:I

    iget v8, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideViewColor:I

    move v3, v10

    move-object v4, v11

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/stackdivider/GuideView;->init(ILandroid/graphics/Rect;ZLandroid/graphics/Rect;II)V

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_5

    move v3, v9

    goto :goto_4

    :cond_5
    move v3, p2

    :goto_4
    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_6

    move v9, v12

    nop

    :cond_6
    iput v9, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_7

    move/from16 v3, p6

    goto :goto_5

    :cond_7
    iget-object v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideHeight:I

    add-int/2addr v3, v4

    :goto_5
    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_8

    iget-object v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideHeight:I

    add-int/2addr v3, v4

    goto :goto_6

    :cond_8
    move/from16 v3, p7

    :goto_6
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v2, :cond_9

    new-instance v2, Lcom/android/systemui/stackdivider/GuideViewController$2;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/stackdivider/GuideViewController$2;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;)V

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    iget-object v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    iget-object v4, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    iget-boolean v5, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/systemui/stackdivider/GuideView;->show(Landroid/graphics/Rect;ZLandroid/animation/AnimatorListenerAdapter;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    return-void
.end method

.method private drawGuideViewDimLayer(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    if-gt p3, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    sub-int v0, p3, v0

    iget v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    sub-int/2addr v1, p3

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    :goto_1
    goto :goto_2

    :cond_3
    invoke-virtual {p2, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, p3, v0}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v1

    invoke-static {}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/GuideView;->setDimLayer(F)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/GuideView;->setDimLayer(F)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    :goto_5
    return-void
.end method

.method private generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v1, "MultiWindow GuideView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0xa2e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/systemui/stackdivider/GuideViewController;
    .locals 1

    sget-object v0, Lcom/android/systemui/stackdivider/GuideViewController;->sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/stackdivider/GuideViewController;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/GuideViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/stackdivider/GuideViewController;->sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;

    :cond_0
    sget-object v0, Lcom/android/systemui/stackdivider/GuideViewController;->sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;

    return-object v0
.end method

.method private isDockSideRight()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDockSide:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isOutOfRangePosition(III)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    if-eq p2, v2, :cond_0

    if-le p1, p2, :cond_0

    return v1

    :cond_0
    if-eq p3, v2, :cond_3

    if-ge p1, p3, :cond_3

    return v1

    :cond_1
    if-eq p2, v2, :cond_2

    if-ge p1, p2, :cond_2

    return v1

    :cond_2
    if-eq p3, v2, :cond_3

    if-le p1, p3, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$actionUpOrCancel$0(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    return-void
.end method

.method public static synthetic lambda$scrollGuideView$1(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;IIILandroid/animation/ValueAnimator;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p0

    move-object v2, p2

    move/from16 v4, p8

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$scrollMinimizeGuideView$2(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;IIILandroid/animation/ValueAnimator;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p0

    move-object v2, p2

    move/from16 v4, p8

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_0
    return-void
.end method

.method private removeView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/GuideView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/GuideView;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    return-void
.end method

.method private scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V
    .locals 19

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_a

    iget-boolean v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    move/from16 v11, p6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v11, :cond_1

    move/from16 v2, p4

    goto :goto_0

    :cond_1
    move/from16 v2, p3

    :goto_0
    move v12, v2

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    iget v3, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    const/4 v4, -0x1

    invoke-direct {v10, v12, v3, v4}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_4

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_4

    :cond_3
    iget v3, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    invoke-direct {v10, v12, v4, v3}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    move v1, v3

    goto :goto_4

    :cond_5
    iget v3, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    iget v4, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    invoke-direct {v10, v12, v3, v4}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v0, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_2

    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v0, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_2
    iget v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    goto :goto_4

    :cond_7
    iget v3, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    iget v4, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {v10, v12, v3, v4}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v0, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_3

    :cond_8
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v0, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_3
    iget v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    :cond_9
    :goto_4
    move v14, v0

    move v15, v1

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v14, v0, v2

    const/4 v9, 0x1

    aput v15, v0, v9

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v8, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$8Ir9l66rPGYQpfF0QiHSWNe-S3E;

    move-object v0, v7

    move-object v1, v10

    move v2, v11

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v16, v11

    move-object v11, v7

    move/from16 v7, p8

    move/from16 v17, v12

    move-object v12, v8

    move/from16 v8, p9

    move v13, v9

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$8Ir9l66rPGYQpfF0QiHSWNe-S3E;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;III)V

    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-boolean v13, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_a
    :goto_5
    return-void
.end method

.method private scrollMinimizeGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V
    .locals 17

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_2

    iget-boolean v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    move/from16 v11, p4

    if-eqz v11, :cond_1

    move/from16 v0, p3

    goto :goto_0

    :cond_1
    move/from16 v0, p2

    :goto_0
    move v12, v0

    move v13, v12

    iget v14, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v13, v0, v1

    const/4 v1, 0x1

    aput v14, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v15, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;

    move-object v0, v9

    move-object v1, v10

    move v2, v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v16, v11

    move-object v11, v9

    move/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;III)V

    invoke-virtual {v15, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/systemui/stackdivider/GuideViewController$3;

    move-object v0, v8

    move/from16 v2, p4

    move v5, v14

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/stackdivider/GuideViewController$3;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;III)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method actionDown(Lcom/android/internal/policy/DividerSnapAlgorithm;Lcom/android/internal/policy/DividerSnapAlgorithm;ZZII)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    nop

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_1
    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    iget v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    sub-int v1, p5, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    div-int/lit8 v0, v0, 0x2

    :goto_2
    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    if-eqz p3, :cond_6

    if-eqz p4, :cond_5

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    sub-int v0, p6, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    add-int/2addr v0, v1

    :goto_3
    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    goto :goto_5

    :cond_6
    if-eqz p4, :cond_7

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    sub-int v0, p5, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    add-int/2addr v0, v1

    :goto_4
    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    :goto_5
    return-void
.end method

.method actionMove(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;IIZLandroid/graphics/Rect;II)V
    .locals 14

    move-object v10, p0

    iget-boolean v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    if-nez v0, :cond_2

    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDefaultHandleMoveThreshold:I

    const/4 v1, 0x1

    if-eqz p7, :cond_1

    sub-int v2, p6, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    sub-int v2, p5, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v0, :cond_0

    goto :goto_0

    :goto_1
    iput-boolean v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    :cond_2
    if-eqz p7, :cond_3

    move/from16 v0, p3

    goto :goto_2

    :cond_3
    move/from16 v0, p2

    :goto_2
    move v9, v0

    iget-boolean v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    const/4 v8, -0x1

    if-nez v0, :cond_b

    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    iget v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    invoke-direct {v10, v9, v0, v1}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p7, :cond_4

    const/4 v2, 0x1

    move-object v0, v10

    move-object v1, p1

    move/from16 v3, p2

    move v4, v9

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p8

    move v11, v8

    move/from16 v8, p9

    move v12, v9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    goto :goto_3

    :cond_4
    move v11, v8

    move v12, v9

    const/4 v2, 0x1

    move-object v0, v10

    move-object v1, p1

    move v3, v12

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    :goto_3
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    move v9, v12

    invoke-direct {v10, v9, v0, v11}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    goto :goto_4

    :cond_5
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    :goto_4
    move v9, v0

    goto/16 :goto_d

    :cond_6
    move v11, v8

    move v0, v9

    iget v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    invoke-direct {v10, v9, v1, v11}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    :cond_7
    :goto_5
    move v8, v0

    goto :goto_6

    :cond_8
    iget v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {v10, v9, v11, v1}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    goto :goto_5

    :cond_9
    iget-object v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_7

    iget-object v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_5

    :goto_6
    if-eqz p7, :cond_a

    move-object v0, v10

    move-object v1, p1

    move/from16 v2, p2

    move v3, v8

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_7

    :cond_a
    move-object v0, v10

    move-object v1, p1

    move v2, v8

    move/from16 v3, p3

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_7
    nop

    move v8, v9

    goto/16 :goto_c

    :cond_b
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    iget v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    invoke-direct {v10, v9, v0, v1}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    iget v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {v10, v9, v0, v1}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p7, :cond_c

    const/4 v2, 0x0

    move-object v0, v10

    move-object v1, p1

    move v3, v9

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p8

    move v11, v8

    move/from16 v8, p9

    move v13, v9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    goto :goto_8

    :cond_c
    move v11, v8

    move v13, v9

    const/4 v2, 0x0

    move-object v0, v10

    move-object v1, p1

    move/from16 v3, p2

    move v4, v13

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    :goto_8
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    move v8, v13

    invoke-direct {v10, v8, v0, v11}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    goto :goto_9

    :cond_d
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    :goto_9
    move v9, v0

    goto :goto_b

    :cond_e
    move v8, v9

    if-eqz p7, :cond_f

    move-object v0, v10

    move-object v1, p1

    move/from16 v2, p2

    move v3, v8

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_a

    :cond_f
    move-object v0, v10

    move-object v1, p1

    move v2, v8

    move/from16 v3, p3

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_a
    move v9, v8

    :goto_b
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    goto :goto_d

    :cond_10
    move v8, v9

    :goto_c
    move v9, v8

    :goto_d
    move-object v0, p1

    move-object/from16 v1, p4

    invoke-direct {v10, v0, v1, v9}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideViewDimLayer(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm;I)V

    return-void
.end method

.method actionUpOrCancel(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;IZZLandroid/graphics/Rect;II)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p5

    iget-boolean v0, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    if-eqz v0, :cond_1

    if-eqz p6, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    iget-boolean v2, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_c

    invoke-virtual {v9, v0, v3, v1, v4}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    iget v2, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    iget v3, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {v8, v0, v2, v3}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    if-eq v12, v2, :cond_2

    iget v2, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    if-ne v12, v2, :cond_3

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    move v13, v2

    iget v2, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    const/4 v3, -0x1

    invoke-direct {v8, v0, v2, v3}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v0, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    :cond_4
    :goto_3
    move v14, v0

    goto :goto_5

    :cond_5
    iget v2, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {v8, v0, v3, v2}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_4

    :cond_6
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_4
    move v0, v2

    goto :goto_3

    :goto_5
    if-nez p7, :cond_a

    if-eqz p6, :cond_8

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v10, v14}, Landroid/graphics/Point;-><init>(II)V

    if-nez v13, :cond_7

    goto :goto_6

    :cond_7
    move v4, v1

    :goto_6
    invoke-virtual {v8, v9, v0, v4}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    goto :goto_8

    :cond_8
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v14, v11}, Landroid/graphics/Point;-><init>(II)V

    if-nez v13, :cond_9

    goto :goto_7

    :cond_9
    move v4, v1

    :goto_7
    invoke-virtual {v8, v9, v0, v4}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    goto :goto_8

    :cond_a
    if-eqz p6, :cond_b

    move-object v0, v8

    move-object v1, v9

    move v2, v14

    move v3, v11

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollMinimizeGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_8

    :cond_b
    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v14

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollMinimizeGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_8
    goto :goto_c

    :cond_c
    move-object/from16 v2, p4

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget v6, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v7, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    if-ge v0, v7, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget v6, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_9

    :cond_d
    iget v7, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    if-le v0, v7, :cond_e

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_e
    :goto_9
    iget v7, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    if-eqz p6, :cond_f

    invoke-virtual {v13, v10, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_a

    :cond_f
    invoke-virtual {v13, v6, v11}, Landroid/graphics/Point;->set(II)V

    :goto_a
    iget-object v14, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v14, :cond_10

    iget-object v14, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_10

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;

    invoke-direct {v4, v8, v9, v7, v13}, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V

    iget-object v14, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x0

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {v9, v7, v3, v1, v4}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    invoke-virtual {v8, v9, v13, v4}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    :goto_b
    iput-boolean v1, v8, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    move v14, v0

    :goto_c
    return-void
.end method

.method hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/systemui/stackdivider/GuideViewController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/stackdivider/GuideViewController$1;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v1, p2, v0}, Lcom/android/systemui/stackdivider/GuideView;->dismiss(Landroid/graphics/Point;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/GuideView;->cancelAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->onGuideViewVisibilityChanged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->removeView()V

    :cond_2
    :goto_0
    return-void
.end method

.method onLongPress(Lcom/android/systemui/stackdivider/DividerView;IIZILandroid/graphics/Rect;II)V
    .locals 10

    const/4 v0, 0x0

    move-object v9, p0

    iput-boolean v0, v9, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-eqz p4, :cond_0

    move-object v1, v9

    move-object v2, p1

    move v3, p2

    move v4, p5

    move v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_0

    :cond_0
    move-object v1, v9

    move-object v2, p1

    move v3, p5

    move v4, p3

    move v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_0
    return-void
.end method

.method public setDockSide(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDockSide:I

    return-void
.end method

.method public setGuideViewBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideViewColor:I

    return-void
.end method
