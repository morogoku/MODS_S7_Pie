.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;
    }
.end annotation


# instance fields
.field private final mAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private mDefault:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;

.field private mDensity:F

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mAttributes:Landroid/util/SparseArray;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private getDpToPixel(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getScaleMode(ZZZIZ)I
    .locals 11

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    if-nez p4, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz p0, :cond_4

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    move v0, v6

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    move v0, v6

    :goto_2
    nop

    :cond_4
    const-string v6, "KeyguardServiceBoxAttribute"

    const-string v7, "getScaleMode %d / hasNoti=%s(%d), ownerInfo=%s, bioUnlock=%s, portrait=%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v3

    const/4 v2, 0x5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v6, v7, v8}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public getMinTopMargin(IZZ)I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mAttributes:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mDefault:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "KeyguardServiceBoxAttribute"

    const-string v3, "getMinTopMargin no default"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mDefault:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;

    if-ne v0, v2, :cond_1

    const-string v2, "KeyguardServiceBoxAttribute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMinTopMargin not defined clockType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;->mMinTopMargin:[I

    xor-int/lit8 v2, p2, 0x1

    aget v1, v1, v2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;->mMinTopMargin:[I

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :goto_0
    aget v1, v2, v1

    :goto_1
    return v1
.end method

.method public getTabletMinTopMargin(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->getTabletMinTopMargin(IIZ)I

    move-result v0

    return v0
.end method

.method public getTabletMinTopMargin(IIZ)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const v1, 0xc35a

    if-eq p1, v1, :cond_0

    const v1, 0xc35d

    if-eq p1, v1, :cond_0

    int-to-float v1, v0

    int-to-float v2, p2

    const v3, 0x3de147ae    # 0.11f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_1

    :cond_0
    int-to-float v1, v0

    int-to-float v2, p2

    if-eqz p3, :cond_1

    const v3, 0x3df5c28f    # 0.12f

    goto :goto_0

    :cond_1
    const v3, 0x3e0a3d71    # 0.135f

    :goto_0
    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    nop

    :goto_1
    return v0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 14

    const-string v0, "KeyguardServiceBoxAttribute"

    const-string v1, "loadDimens"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mDefault:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mDensity:F

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const v1, 0x7f030023

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    new-instance v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;

    invoke-direct {v4, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$1;)V

    add-int/lit8 v5, v3, 0x1

    aget-object v3, v1, v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v5, 0x1

    aget-object v5, v1, v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    array-length v8, v5

    move v9, v7

    move v7, v2

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v10, v5, v7

    iget-object v11, v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;->mMinTopMargin:[I

    add-int/lit8 v12, v9, 0x1

    invoke-direct {p0, v10}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->getDpToPixel(Ljava/lang/String;)I

    move-result v13

    aput v13, v11, v9

    add-int/lit8 v7, v7, 0x1

    move v9, v12

    goto :goto_1

    :cond_0
    array-length v7, v3

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v3, v8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    iget-object v11, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v11, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    iput-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mDefault:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    nop

    move v3, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->mDefault:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;

    if-nez v0, :cond_4

    const-string v0, "KeyguardServiceBoxAttribute"

    const-string v2, "loadDimens no default"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
