.class public Landroid/support/design/shape/RoundedCornerTreatment;
.super Landroid/support/design/shape/CornerTreatment;
.source "RoundedCornerTreatment.java"


# instance fields
.field private final radius:F


# virtual methods
.method public getCornerPath(FFLandroid/support/design/shape/ShapePath;)V
    .locals 9

    iget v0, p0, Landroid/support/design/shape/RoundedCornerTreatment;->radius:F

    mul-float/2addr v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/support/design/shape/ShapePath;->reset(FF)V

    iget v0, p0, Landroid/support/design/shape/RoundedCornerTreatment;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    mul-float v5, v0, p2

    iget v0, p0, Landroid/support/design/shape/RoundedCornerTreatment;->radius:F

    mul-float/2addr v1, v0

    mul-float v6, v1, p2

    const/high16 v0, 0x43340000    # 180.0f

    add-float v7, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    move-object v2, p3

    invoke-virtual/range {v2 .. v8}, Landroid/support/design/shape/ShapePath;->addArc(FFFFFF)V

    return-void
.end method
