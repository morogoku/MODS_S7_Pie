.class public abstract Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "AbstractMediaItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;
    }
.end annotation


# static fields
.field static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mBackgroundColor:I

.field private mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field private mThemeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    new-instance v0, Landroid/support/v17/leanback/widget/MediaItemActionPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/MediaItemActionPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    return-void
.end method

.method static updateSelector(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;Z)Landroid/animation/ValueAnimator;
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    return-object p2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/view/ViewGroup;

    sget-object v7, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v7, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v15, p1

    invoke-virtual {v14, v15, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v7, 0x2

    if-eqz p3, :cond_3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    div-int/2addr v10, v7

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    :cond_3
    :goto_1
    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v13, v8, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v8, v12

    int-to-float v11, v8

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v8, v13

    int-to-float v10, v8

    cmpl-float v8, v10, v5

    if-nez v8, :cond_4

    cmpl-float v8, v11, v5

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v5, v4, v5

    if-nez v5, :cond_5

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    :goto_2
    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto :goto_3

    :cond_5
    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v7, v1

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;

    move-object v7, v5

    move-object v8, v6

    move v9, v13

    move/from16 v16, v10

    move/from16 v17, v11

    move v11, v12

    move/from16 v18, v12

    move/from16 v12, v17

    move/from16 v19, v13

    move-object/from16 v13, p0

    invoke-direct/range {v7 .. v13}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;IFIFLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
