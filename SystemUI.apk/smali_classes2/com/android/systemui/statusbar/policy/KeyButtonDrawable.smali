.class public Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "KeyButtonDrawable.java"


# instance fields
.field private final mHasDarkDrawable:Z


# direct methods
.method protected constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setLayerGravity(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_1
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    move v0, v2

    nop

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    new-instance v2, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v3, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v4, :cond_1

    move-object v4, p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_1
    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0704b2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0704b3

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0601be

    invoke-virtual {p0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->setShadowProperties(IIII)V

    :cond_2
    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v4

    :cond_3
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v4, :cond_4

    move-object v4, p1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_2
    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v0, v1

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public static create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v4, :cond_0

    move-object v4, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    aput-object v4, v3, v1

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v1, :cond_1

    move-object v1, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v3, :cond_3

    move-object v3, p0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_2
    aput-object v3, v0, v1

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public static createRTL(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 7

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->flipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->flipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    sget-boolean v6, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_0
    aput-object v6, v5, v2

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    aput-object v2, v5, v1

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v4

    :cond_2
    new-instance v3, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_2
    aput-object v4, v1, v2

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private static flipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 11

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-object v8, p1

    const/4 v1, 0x0

    instance-of v2, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    move-object v2, v8

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_1
    instance-of v2, v8, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v2, :cond_2

    move-object v2, v8

    check-cast v2, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, v8, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v2, :cond_0

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

    goto :goto_0

    :goto_1
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
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sub-float/2addr v2, p1

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-float/2addr v4, p1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sub-float/2addr v2, p1

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-float/2addr v4, p1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRotation(F)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->setRotation(F)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->setRotation(F)V

    :cond_1
    return-void
.end method
