.class public Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProductFeatures"
.end annotation


# static fields
.field public static final COLOR_CODE_BLOSSOM_PINK:Ljava/lang/String; = "di"

.field public static final COLOR_CODE_BURGUNDY_RED:Ljava/lang/String; = "zr"

.field public static final COLOR_CODE_GOLD:Ljava/lang/String; = "zd"

.field public static final COLOR_CODE_ORCHID_GREY:Ljava/lang/String; = "zv"

.field public static final COLOR_CODE_PINK:Ljava/lang/String; = "zi"

.field public static final COLOR_CODE_PURPLE:Ljava/lang/String; = "zp"

.field public static final COLOR_CODE_SILVER:Ljava/lang/String; = "zs"

.field public static final COLOR_CODE_WHITE:Ljava/lang/String; = "zw"

.field public static final PRODUCT_CROWN:Ljava/lang/String; = "crown"

.field public static final PRODUCT_GREAT:Ljava/lang/String; = "great"

.field public static final PRODUCT_JACKPOT_DCM:Ljava/lang/String; = "jackpotveltedcm"

.field public static final PRODUCT_STAR:Ljava/lang/String; = "star"

.field private static sIsDualLCDFolderDevice:Z

.field private static sIsDualLCDFolderDeviceChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->sIsDualLCDFolderDevice:Z

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->sIsDualLCDFolderDeviceChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_55

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_55

    :cond_9
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->isGreat()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "di"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "zv"

    return-object v0

    :cond_1b
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->isStar()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "zr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "zp"

    return-object v0

    :cond_2e
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->isJackpotDCM()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, "zi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, "zd"

    return-object v0

    :cond_41
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->isCrown()Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo v0, "zw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo v0, "zs"

    return-object v0

    :cond_54
    return-object p0

    :cond_55
    :goto_55
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getProductInfo()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.build.flavor"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.build.product"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isCrown()Z
    .registers 2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static isGreat()Z
    .registers 2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "great"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static isJackpotDCM()Z
    .registers 2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jackpotveltedcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static isStar()Z
    .registers 2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "star"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method
