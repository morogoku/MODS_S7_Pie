.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;
.super Ljava/lang/Object;
.source "MinimizeContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field static sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

.field static sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

.field static sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

.field static sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    move-result v0

    return v0
.end method

.method static adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p2

    iget v3, p0, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p2

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p4

    iget v3, p0, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p4

    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    :cond_1
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p3

    iget v3, p0, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p3

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    goto :goto_1

    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p5

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_3

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p5

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    return v2

    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    return v2
.end method

.method static deltaRotation(II)I
    .locals 1

    sub-int v0, p1, p0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method

.method static rotateBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    invoke-static {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->deltaRotation(II)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v2, p3, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_2
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    nop

    :goto_0
    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MinimizeContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Manager] rotateBounds:, oldRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rotatedBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
