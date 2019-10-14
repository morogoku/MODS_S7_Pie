.class public Lcom/android/systemui/statusbar/floating/FloatingShortcutView;
.super Landroid/widget/LinearLayout;
.source "FloatingShortcutView.java"


# instance fields
.field private mAppIconSize:I

.field private mCenterLocationX:I

.field private mCenterLocationY:I

.field private mIconView:Lcom/android/systemui/widget/SystemUIImageView;

.field private mRadius:I

.field private mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

.field private mTitleView:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private playAnimation(IIFFFJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->setScaleX(F)V

    invoke-virtual {p0, p5}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->setScaleY(F)V

    int-to-float v0, p1

    iget v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mAppIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->setX(F)V

    int-to-float v0, p2

    iget v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mAppIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->setY(F)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v2, p1

    iget v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mAppIconSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v2, p2

    iget v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mAppIconSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->SHORTCUT_SHOWING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationX:I

    iput p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationY:I

    return-void
.end method


# virtual methods
.method public focusView(FFFJ)V
    .locals 8

    iget v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationX:I

    iget v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationY:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->playAnimation(IIFFFJ)V

    return-void
.end method

.method public getCenterLocationX()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationX:I

    return v0
.end method

.method public getCenterLocationY()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationY:I

    return v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public hideView(II)V
    .locals 8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x15e

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->playAnimation(IIFFFJ)V

    return-void
.end method

.method public hideViewImmediately(II)V
    .locals 8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->playAnimation(IIFFFJ)V

    return-void
.end method

.method public isCollision(II)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationX:I

    sub-int v0, p1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationY:I

    sub-int v2, p2, v2

    mul-int v3, v0, v0

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mRadius:I

    iget v5, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mRadius:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-gez v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a050e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mIconView:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a050f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mTitleView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mAppIconSize:I

    iput v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mRadius:I

    return-void
.end method

.method public setShortcut(Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mIconView:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mIconView:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mTitleView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mTitleView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->getAppTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public showView(II)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    const-wide/16 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->playAnimation(IIFFFJ)V

    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const-wide/16 v15, 0x15e

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->playAnimation(IIFFFJ)V

    return-void
.end method
