.class public Lcom/android/server/wm/utils/CoordinateTransforms;
.super Ljava/lang/Object;
.source "CoordinateTransforms.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V
    .registers 7

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_44

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_42

    :pswitch_26
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int v0, p1

    int-to-float v0, v0

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_42

    :pswitch_33
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_42

    :pswitch_3e
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    nop

    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_33
        :pswitch_26
        :pswitch_1b
    .end packed-switch
.end method

.method public static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .registers 7

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_40

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3e

    :pswitch_25
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3e

    :pswitch_30
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3e

    :pswitch_3a
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    nop

    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_30
        :pswitch_25
        :pswitch_1b
    .end packed-switch
.end method

.method public static transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 7

    if-nez p2, :cond_8

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object p2, v0

    :cond_8
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static transformToRotation(IIIILandroid/graphics/Matrix;)V
    .registers 9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    nop

    :cond_9
    :goto_9
    if-eqz v0, :cond_d

    move v1, p2

    goto :goto_e

    :cond_d
    move v1, p3

    :goto_e
    if-eqz v0, :cond_12

    move v2, p3

    goto :goto_13

    :cond_12
    move v2, p2

    :goto_13
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0, v2, v1, p4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    invoke-static {p1, v2, v1, v3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    invoke-virtual {p4, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public static transformToRotation(IILandroid/view/DisplayInfo;Landroid/graphics/Matrix;)V
    .registers 8

    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    nop

    :cond_d
    :goto_d
    move v0, v1

    if-eqz v0, :cond_13

    iget v1, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_15

    :cond_13
    iget v1, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_15
    if-eqz v0, :cond_1a

    iget v2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_1c

    :cond_1a
    iget v2, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_1c
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0, v2, v1, p3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    invoke-static {p1, v2, v1, v3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    invoke-virtual {p3, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method
