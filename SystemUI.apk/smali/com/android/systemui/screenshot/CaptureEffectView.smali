.class public Lcom/android/systemui/screenshot/CaptureEffectView;
.super Landroid/view/View;
.source "CaptureEffectView.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private mEffectWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRoundRectX:F

.field private mRountRectY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectView;->updatePath(II)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setEffectParams(III)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mEffectWidth:I

    int-to-float v0, p2

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mRoundRectX:F

    int-to-float v0, p3

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mRountRectY:F

    return-void
.end method

.method public updatePath(II)V
    .locals 9

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mEffectWidth:I

    iget v1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mEffectWidth:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mEffectWidth:I

    iget v3, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mEffectWidth:I

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    int-to-float v5, v0

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v2

    int-to-float v7, v1

    int-to-float v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mRoundRectX:F

    iget v7, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mRountRectY:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method
