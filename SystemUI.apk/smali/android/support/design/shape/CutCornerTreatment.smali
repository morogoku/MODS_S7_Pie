.class public Landroid/support/design/shape/CutCornerTreatment;
.super Landroid/support/design/shape/CornerTreatment;
.source "CutCornerTreatment.java"


# instance fields
.field private final size:F


# virtual methods
.method public getCornerPath(FFLandroid/support/design/shape/ShapePath;)V
    .locals 5

    iget v0, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    mul-float/2addr v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/support/design/shape/ShapePath;->reset(FF)V

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iget v3, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    float-to-double v3, p2

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
