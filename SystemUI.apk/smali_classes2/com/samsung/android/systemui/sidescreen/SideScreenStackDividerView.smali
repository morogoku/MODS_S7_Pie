.class public Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;
.super Landroid/widget/FrameLayout;
.source "SideScreenStackDividerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    sget v1, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_DIVIDER_INSET:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v1, v2, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;->setPadding(IIII)V

    :goto_1
    return-void
.end method
