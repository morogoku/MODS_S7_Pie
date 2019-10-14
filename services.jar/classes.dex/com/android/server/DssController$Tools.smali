.class public Lcom/android/server/DssController$Tools;
.super Ljava/lang/Object;
.source "DssController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DssController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tools"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDssToConfiguration(Landroid/content/res/Configuration;F)V
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_c
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    :cond_1d
    return-void
.end method

.method public static applyDssToMergedConfiguration(Landroid/util/MergedConfiguration;F)V
    .registers 9

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz v1, :cond_1e

    invoke-static {v1, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_26

    :cond_1e
    if-eqz v0, :cond_26

    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_26
    :goto_26
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_4a

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v5, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6, v5}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    goto :goto_59

    :cond_4a
    if-eqz v3, :cond_59

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v5, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6, v5}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_59
    :goto_59
    invoke-virtual {p0, v2}, Landroid/util/MergedConfiguration;->setOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static applyScaleToCompatFrame(Landroid/graphics/Rect;F)V
    .registers 7

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    int-to-float v2, v0

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v4, v1

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    float-to-int v3, v4

    neg-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public static scaleDpiValue(IF)I
    .registers 4

    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
