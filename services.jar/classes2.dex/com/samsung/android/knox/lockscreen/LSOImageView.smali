.class public Lcom/samsung/android/knox/lockscreen/LSOImageView;
.super Landroid/widget/ImageView;
.source "LSOImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemImage;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getMaxImageSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getMaxImageSize(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x40

    invoke-virtual {p2, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v2

    const-string v3, "android:maxWidth"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "android:maxWidth"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_29
    const-string v3, "android:maxHeight"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v3, "android:maxHeight"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3b
    const/16 v2, 0x80

    invoke-virtual {p2, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getMaxBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_50

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_50
    const/16 v2, 0x200

    invoke-virtual {p2, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_65

    :cond_60
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_65
    return-void
.end method
