.class public Lcom/android/systemui/qs/PseudoGridView;
.super Landroid/view/ViewGroup;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
    }
.end annotation


# instance fields
.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    sget-object v1, Lcom/android/systemui/R$styleable;->PseudoGridView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->isLayoutRtl()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v2

    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    iget v4, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    div-int/2addr v3, v4

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    if-le v5, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    :goto_0
    move v7, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getWidth()I

    move-result v8

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    mul-int v10, v4, v5

    add-int v11, v10, v5

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v12, v8

    move v8, v10

    :goto_3
    if-ge v8, v11, :cond_4

    invoke-virtual {v0, v8}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-eqz v1, :cond_2

    sub-int/2addr v12, v14

    :cond_2
    add-int v6, v12, v14

    move/from16 v16, v2

    add-int v2, v7, v15

    invoke-virtual {v13, v12, v7, v6, v2}, Landroid/view/View;->layout(IIII)V

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-eqz v1, :cond_3

    iget v2, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    sub-int/2addr v12, v2

    goto :goto_4

    :cond_3
    iget v2, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    add-int/2addr v2, v14

    add-int/2addr v12, v2

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    goto :goto_3

    :cond_4
    move/from16 v16, v2

    add-int/2addr v7, v9

    if-lez v4, :cond_5

    iget v2, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v7, v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v16

    goto :goto_1

    :cond_6
    move/from16 v16, v2

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v2

    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    if-le v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    :goto_0
    add-int/lit8 v4, v3, -0x1

    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    mul-int/2addr v4, v5

    sub-int v4, v1, v4

    div-int/2addr v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    iget v10, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    div-int/2addr v9, v10

    move v11, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_5

    mul-int v12, v8, v3

    add-int v13, v12, v3

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x0

    move v15, v14

    move v14, v12

    :goto_2
    if-ge v14, v13, :cond_1

    invoke-virtual {v0, v14}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v14, v14, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_2

    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v14, v12

    :goto_3
    if-ge v14, v13, :cond_3

    invoke-virtual {v0, v14}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move/from16 v16, v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eq v2, v15, :cond_2

    invoke-virtual {v5, v6, v10}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_3

    :cond_3
    move/from16 v16, v2

    add-int/2addr v11, v15

    if-lez v8, :cond_4

    iget v2, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v11, v2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_1

    :cond_5
    move/from16 v16, v2

    move/from16 v2, p2

    const/4 v5, 0x0

    invoke-static {v11, v2, v5}, Lcom/android/systemui/qs/PseudoGridView;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/qs/PseudoGridView;->setMeasuredDimension(II)V

    return-void

    :cond_6
    move/from16 v2, p2

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Needs a maximum width"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
