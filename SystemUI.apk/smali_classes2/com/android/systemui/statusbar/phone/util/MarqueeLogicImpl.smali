.class public Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;
.super Ljava/lang/Object;
.source "MarqueeLogicImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;


# instance fields
.field private mHorizontalMoved:I

.field private mHorizontalShift:I

.field mScaleFactor:F

.field private mVerticalMoved:I

.field private mVerticalShift:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalShift:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalShift:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalMoved:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalMoved:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mScaleFactor:F

    return-void
.end method


# virtual methods
.method public getLeftShift(Z)I
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalShift:I

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalShift:I

    goto :goto_0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getSidePadding(II)I
    .locals 4

    const-wide v0, 0x3f96bb98c0000000L    # 0.022199999541044235

    if-lt p1, p2, :cond_0

    int-to-double v2, p2

    :goto_0
    mul-double/2addr v2, v0

    double-to-int v0, v2

    goto :goto_1

    :cond_0
    int-to-double v2, p1

    goto :goto_0

    :goto_1
    return v0
.end method

.method public getTopShift(Z)I
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalShift:I

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalShift:I

    goto :goto_0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public update(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalShift:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalShift:I

    const/16 v1, -0x10

    if-gt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalMoved:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalMoved:I

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalShift:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalShift:I

    const/16 v1, -0xa

    if-gt v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalMoved:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalMoved:I

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalShift:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalMoved:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mHorizontalShift:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalShift:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalMoved:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mVerticalShift:I

    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;->mScaleFactor:F

    return-void
.end method
