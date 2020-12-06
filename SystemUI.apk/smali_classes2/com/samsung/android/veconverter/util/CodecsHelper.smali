.class public Lcom/samsung/android/veconverter/util/CodecsHelper;
.super Ljava/lang/Object;
.source "CodecsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoEncodingBitRate(FJJIII)I
    .locals 6

    long-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v1, p5, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    mul-int v3, p6, p7

    div-int/lit16 v3, v3, 0x100

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    const/16 v1, 0x63

    goto :goto_2

    :cond_0
    const/16 v5, 0x3e8

    if-le v3, v4, :cond_2

    if-ge v3, v5, :cond_2

    const/16 v4, 0x96

    if-ge v1, v4, :cond_1

    goto :goto_0

    :cond_1
    div-int/lit8 v4, v3, 0x3

    :goto_0
    move v1, v4

    goto :goto_2

    :cond_2
    if-le v3, v5, :cond_4

    const/16 v4, 0x15e

    if-ge v1, v4, :cond_3

    goto :goto_1

    :cond_3
    div-int/lit8 v4, v3, 0x5

    :goto_1
    move v1, v4

    :cond_4
    :goto_2
    invoke-static {p6, p7}, Lcom/samsung/android/veconverter/util/CodecsHelper;->suggestBitRate(II)I

    move-result v2

    if-ge v0, v1, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    if-le v0, v2, :cond_6

    move v0, v2

    :cond_6
    :goto_3
    return v0
.end method

.method public static suggestBitRate(II)I
    .locals 2

    mul-int v0, p0, p1

    const v1, 0x7e9000

    if-lt v0, v1, :cond_0

    const v1, 0x88b8

    return v1

    :cond_0
    const v1, 0x384000

    if-lt v0, v1, :cond_1

    const/16 v1, 0x4650

    return v1

    :cond_1
    const v1, 0x1fa400

    if-lt v0, v1, :cond_2

    const/16 v1, 0x32c8

    return v1

    :cond_2
    const v1, 0xe1000

    if-lt v0, v1, :cond_3

    const/16 v1, 0x1f40

    return v1

    :cond_3
    const/16 v1, 0x1388

    return v1
.end method
