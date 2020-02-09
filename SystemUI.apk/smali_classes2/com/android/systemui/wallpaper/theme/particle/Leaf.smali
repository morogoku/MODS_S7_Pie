.class public Lcom/android/systemui/wallpaper/theme/particle/Leaf;
.super Ljava/lang/Object;
.source "Leaf.java"


# instance fields
.field public cx:F

.field public cy:F

.field public leafKind:I

.field public leafSize:I

.field private mContext:Landroid/content/Context;

.field private mRandom:Ljava/util/Random;

.field private mXSpeed:I

.field private mYSpeed:I

.field public rotate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafKind:I

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v2, v2, -0x20

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mXSpeed:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mYSpeed:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafKind:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    return-void
.end method

.method public isVisible()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mXSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->clear()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    :cond_1
    return-void
.end method
