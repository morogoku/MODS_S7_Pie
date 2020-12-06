.class public Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "GestureHintDrawable.java"


# direct methods
.method protected constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v2, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v3, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    new-instance v4, Lcom/android/systemui/statusbar/phone/util/RuneWrapper;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/util/RuneWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/util/RuneWrapper;->isTablet()Z

    move-result v5

    if-nez v5, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v5, 0x3

    if-ne p3, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2, p3}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->rotateDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3, p3}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->rotateDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_3
    new-instance v5, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v0

    aput-object v3, v6, v1

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v5

    :cond_4
    new-instance v2, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v3, :cond_5

    move-object v3, p1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_2
    aput-object v3, v1, v0

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private static rotateDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 11

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    :goto_0
    move-object v8, p1

    const/4 v1, 0x0

    instance-of v2, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    move-object v2, v8

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    :goto_1
    move-object v9, v1

    goto :goto_2

    :cond_3
    instance-of v2, v8, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v2, :cond_4

    move-object v2, v8

    check-cast v2, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_4
    instance-of v2, v8, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v8, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :goto_2
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, v9

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v10, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v10
.end method


# virtual methods
.method public setDarkIntensity(F)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-float/2addr v2, p1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->invalidateSelf()V

    return-void
.end method
