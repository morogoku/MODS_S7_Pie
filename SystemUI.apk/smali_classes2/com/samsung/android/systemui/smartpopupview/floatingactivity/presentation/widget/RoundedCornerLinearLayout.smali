.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RoundedCornerLinearLayout.java"

# interfaces
.implements Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerInterface;


# instance fields
.field private mRoundedCorner:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;

    invoke-direct {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;->mRoundedCorner:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;->mRoundedCorner:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRoundedCornerColor(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;->mRoundedCorner:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->setRoundedCornerColor(II)V

    return-void
.end method

.method public setRoundedCorners(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;->mRoundedCorner:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->setRoundedCorners(I)V

    return-void
.end method
