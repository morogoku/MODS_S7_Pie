.class public Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;
.super Ljava/lang/Object;
.source "ItemListLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field public mItemIconDpi:I

.field public mItemIconWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;->load(Landroid/content/Context;)V

    return-void
.end method

.method private getIconDensity(I)I
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/16 v1, 0x280

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    const/high16 v3, 0x42400000    # 48.0f

    aget v4, v0, v2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    int-to-float v4, p1

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    aget v1, v0, v2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return v1

    nop

    :array_0
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private load(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07065e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;->mItemIconWidth:I

    iget v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;->mItemIconWidth:I

    invoke-direct {p0, v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;->getIconDensity(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;->mItemIconDpi:I

    return-void
.end method
