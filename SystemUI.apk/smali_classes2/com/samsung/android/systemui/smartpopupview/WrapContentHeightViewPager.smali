.class public Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "WrapContentHeightViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager$LayoutCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager$LayoutCallback;

.field private mContentHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v5, v3, :cond_1

    move v3, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager;->mContentHeight:I

    if-eq v1, v3, :cond_3

    iput v3, p0, Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager;->mContentHeight:I

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager;->mCallback:Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager$LayoutCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager;->mCallback:Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager$LayoutCallback;

    invoke-interface {v1}, Lcom/samsung/android/systemui/smartpopupview/WrapContentHeightViewPager$LayoutCallback;->postUpdateFullScrollLayout()V

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    return-void
.end method
