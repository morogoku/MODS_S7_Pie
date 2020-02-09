.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
.super Ljava/lang/Object;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionBitmap"
.end annotation


# instance fields
.field private alpha:I

.field private bitmapLoaded:Z

.field private calculatedSum:F

.field private image:Landroid/graphics/Bitmap;

.field private isBackground:Z

.field private matrix:Landroid/graphics/Matrix;

.field private path:Ljava/lang/String;

.field private prevAlpha:I

.field private stayPoint1:I

.field private stayPoint2:I

.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    return-object v0
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    return v0
.end method

.method public getBitmapLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->prevAlpha:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    return-void
.end method

.method public isBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setAlpha(FF)V
    .locals 8

    cmpg-float v0, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v3

    int-to-float v3, v3

    rem-float v3, p2, v3

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    const/high16 v4, -0x3fc00000    # -3.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    :cond_2
    :goto_1
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    const/4 v4, -0x3

    const/high16 v5, 0x41c00000    # 24.0f

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    goto :goto_2

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    :cond_4
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v3, v3

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    if-ne v6, v4, :cond_5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    :cond_5
    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    add-int/lit8 v7, v7, 0x18

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez v6, :cond_7

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    goto :goto_2

    :cond_6
    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_7

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    sub-float v7, v3, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez v6, :cond_7

    if-nez v0, :cond_7

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    :cond_7
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    const/16 v3, 0xff

    if-eqz v2, :cond_8

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto :goto_3

    :cond_8
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    :cond_9
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    const/high16 v4, 0x437f0000    # 255.0f

    if-lez v2, :cond_a

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    add-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_a

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v6, v6

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v5

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto :goto_3

    :cond_a
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_b

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    sub-float v6, v1, v5

    cmpl-float v2, v2, v6

    if-lez v2, :cond_b

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v5

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto :goto_3

    :cond_b
    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    :goto_3
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    if-le v1, v3, :cond_c

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    :cond_c
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    return-void
.end method

.method public setBitmapLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    return-void
.end method

.method public setPrevAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->prevAlpha:I

    return-void
.end method

.method public setStayPoint(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x3

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    add-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return-void
.end method
