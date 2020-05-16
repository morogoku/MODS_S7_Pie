.class public Lcom/altamirasoft/path_animation/SvgHelper;
.super Ljava/lang/Object;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;
    }
.end annotation


# instance fields
.field private final mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourcePaint:Landroid/graphics/Paint;

.field private mSvg:Lcom/caverock/androidsvg/SVG;


# direct methods
.method static synthetic access$000(Lcom/altamirasoft/path_animation/SvgHelper;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSourcePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/altamirasoft/path_animation/SvgHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mPaths:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getPathsForViewport(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/altamirasoft/path_animation/SvgHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/altamirasoft/path_animation/SvgHelper$1;-><init>(Lcom/altamirasoft/path_animation/SvgHelper;II)V

    iget-object v1, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getDocumentViewBox()Landroid/graphics/RectF;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v3, p1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, p2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v3, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mPaths:Ljava/util/List;

    return-object v3
.end method
